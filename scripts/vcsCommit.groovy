// @ExecutionModes({ON_SINGLE_NODE})

// Freeplane collaborative add-on
// version 0.1
//
// Groovy script to execute version control system (CVS) actions
//         
// Copyright (c)2013 Sebastien Georget
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import javax.swing.JDialog;
import javax.swing.JOptionPane
import groovy.io.GroovyPrintWriter 


///////////
// Params
///////////

// todo : check existence + alert
def vcsBin = config.getProperty('vcsBin', "note : set /path/to/vcs in preferences")
def verbose = config.getBooleanProperty('vcsVerbose')


//////////
// Funcs
//////////

private String vcsDo(String vcsBin, String context, String action, Boolean verbose) {

	// preparing execution
	def initialSize = 4096
	def outStream = new ByteArrayOutputStream(initialSize)
	def errStream = new ByteArrayOutputStream(initialSize)
	def vcsCommandArray = [vcsBin, action, node.map.file.name]
	def processBuilder = new ProcessBuilder(vcsCommandArray)
		.directory(new File(node.map.file.getParent()))
		.redirectErrorStream(false)
		
	// start process and consume output to prevent locking
	def vcsProcess = processBuilder.start()
	vcsProcess.consumeProcessOutput(outStream, errStream)

	// feed the process with user input in case of empty commit log
	vcsProcess.withWriter { writer ->
		// Writes the following commands to the spawned process
		def gWriter = new GroovyPrintWriter(writer)
		// send "a" for "abort"
		gWriter.println "a"
	} 

	// waiting process ending
	vcsProcess.waitFor()
	def exitStatus = vcsProcess.exitValue()


	def message = ""	
	// verbose mode : show command and results
	if (verbose) {
		message += textUtils.getText("addons.collab.commandDetails") + "\n" + vcsCommandArray.join(" ") + "\n\n"
		message += textUtils.getText("addons.collab.commandOutput") + "\n" + outStream + "\n\n"
		message += textUtils.getText("addons.collab.commandErrors") + "\n" + errStream + "\n\n"
	}
	
	

	// handling errors first
	if (exitStatus > 0) {
	
		// parsing errStream to handle errors
		if ( errStream =~ /No CVSROOT/ ) {
			// No CVSROOT
			// Patterns
			// - linux (cvs) : "No CVSROOT"
			// - windows (cvsnt) : "No CVSROOT"
		
			// import is not supported
			message = textUtils.getText("addons.collab.folderIsNotVersionned") + "\n"
			
			JOptionPane.showMessageDialog(ui.frame, 
				message,
				context, JOptionPane.ERROR_MESSAGE)
		
		} else if ( (errStream =~ /nothing known about/) || (errStream =~ /to create an entry for/) || (errStream =~ /I know nothing about/)) {
			// Unversionned file
			// Patterns
			// - linux (cvs) : on commit "nothing known about"
			// - linux (cvs) : on update/status "use `cvs add` to create an entry for"
			// - windows (cvsnt) : idem
	
			// ask user to add it
			final int addFile = JOptionPane.showConfirmDialog(ui.frame, 
				textUtils.getText("addons.collab.fileIsNotVersionned") + "\n" + textUtils.getText("addons.collab.doYouWantToAddFile") ,
				context,
				JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
			
			if (addFile == JOptionPane.YES_OPTION) {
				vcsDo(vcsBin, "add", verbose)
				vcsDo(vcsBin, "commit", verbose)
			} else {
				message += textUtils.getText("addons.collab.fileIsNotVersionned") + "\n"
				JOptionPane.showMessageDialog(ui.frame, 
					message,
					context, JOptionPane.ERROR_MESSAGE)
			}
		} else if (action == "update") {
				if (outStream =~ /C /) {
					node.map.close(true, false)
					message += textUtils.getText("addons.collab.mapConflict")
				}
				JOptionPane.showMessageDialog(ui.frame, 
					message,
					context, JOptionPane.ERROR_MESSAGE)
		} else if (action == "diff") {
				message += textUtils.getText("addons.collab.mapDifferences") + "\n"
				message += outStream
				
				JOptionPane.showMessageDialog(ui.frame, 
					message,
					context, JOptionPane.WARNING_MESSAGE)
		} else {
			// unknwon error
			if (! verbose) {
				message = textUtils.getText("addons.collab.unknownErrorActivateVerboseMode")
			}
			JOptionPane.showMessageDialog(ui.frame, 
				message,
				context, JOptionPane.ERROR_MESSAGE)
		}
		
	} else {
		// errorstatus = 0 = ok
		if (outStream.size() > 0) {
			if (action == "commit") {
				message += textUtils.getText("addons.collab.mapCommitted")
			} else if (action == "update") {
				if (outStream =~ /M /) {
					message += textUtils.getText("addons.collab.mapNeedsCommit")
				}
	
				// there are some updates => close the map and reoppen it
				if ( (outStream =~ /P /) || (outStream =~ /U /) ) {
					def uri = node.map.file.toURI()
					node.map.close(false, true)
					loadUri(uri)
					message += textUtils.getText("addons.collab.mapUpdated")
				}
				
			}
		} else {
			if (action == "add") {
				message += textUtils.getText("addons.collab.mapAdded")
			} else if (action == "commit") {
				message += textUtils.getText("addons.collab.mapDoesntNeedCommit")
			} else if (action == "update") {
				if ((errStream =~ /nothing known about/) || (errStream =~ /to create an entry for/) || (errStream =~ /I know nothing about/)) {
					message += textUtils.getText("addons.collab.fileIsNotVersionned")
				} else {
					message += textUtils.getText("addons.collab.mapIsUpToDate")
				}
			} else if (action == "diff") {
				message += textUtils.getText("addons.collab.vcsReturnedNoDiff")
			}
		}

		JOptionPane.showMessageDialog(ui.frame, 
			message,
			context, JOptionPane.INFORMATION_MESSAGE)

	}	
}


//////////
// Main
//////////

if (!node.map.isSaved()) {
	JOptionPane.showMessageDialog(ui.frame, 
				textUtils.getText("addons.collab.saveMapFirst"),
				textUtils.getText("addons.vcsCommit"), JOptionPane.ERROR_MESSAGE)
    return
}

vcsDo(vcsBin, textUtils.getText("addons.vcsCommit"), "commit", verbose)

