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



//////////
// Funcs
//////////

private String guessVcs(String context, Boolean verbose) {
	
	// todo : filesystem separator
	
	def vcs = null
	def vcsFolder = new File(node.map.file.path + "/CVS/")
	if ((new File(node.map.file.getParent() + File.separator + 'CVS')).exists()) {
		vcs = "cvs"
	} else if ((new File(node.map.file.getParent() + File.separator + '.git')).exists()) {
		vcs = "git"
	}
	
	if (vcs) {
		if (verbose) {
			JOptionPane.showMessageDialog(ui.frame, 
				textUtils.getText("addons.collab.vcsIs") + " " + vcs,
				context, JOptionPane.INFORMATION_MESSAGE)
		}
	} else {
		JOptionPane.showMessageDialog(ui.frame, 
			textUtils.getText("addons.collab.folderIsNotVersionned"),
			context, JOptionPane.ERROR_MESSAGE)
	}

	return vcs
}


private String vcsDo(String vcs, String context, String action, Boolean verbose) {

	// Retrieve the path to the vcs binary
	def vcsBin = config.getProperty('addons.collab.' + vcs + '.bin', "note : set /path/to/vcs in preferences")
	if (!(new File(vcsBin)).exists()) {
		JOptionPane.showMessageDialog(ui.frame, 
			textUtils.getText("addons.collab.vcsBinNotFound") + "\n  " + vcsBin,
			context, JOptionPane.ERROR_MESSAGE)
			
		return
	}

	def actionDone = 0
	
	// Get the file status to stop action if it make no sense
	// - commit an upToDate file
	// - diff an upToDate file
	def fileStatus = ""
	if ( (action != "status") && (action != "add") && (action != "push")) {
		fileStatus = vcsDo(vcs, context, "status", verbose)
		
		if (verbose) {
			JOptionPane.showMessageDialog(ui.frame,
				"File status: " + fileStatus,
				context,
				JOptionPane.INFORMATION_MESSAGE)
		
		}
		
	
		if (fileStatus == "fatalError") {
			// the error has been shown in the vcsDo function just quit
			return
		} else if (fileStatus == "folderIsNotVersionned") {
			message = textUtils.getText("addons.collab.folderIsNotVersionned") + "\n"
			
			JOptionPane.showMessageDialog(ui.frame, 
				message,
				context, JOptionPane.ERROR_MESSAGE)
				
			return
		} else if (fileStatus == "upToDate") {
			if (action == "commit") {
				JOptionPane.showMessageDialog(ui.frame,
					textUtils.getText("addons.collab.mapDoesntNeedCommit"),
					context,
					JOptionPane.INFORMATION_MESSAGE)
			} else if ( (action == "diff") || (action == "update") || (action == "pull" ) ) {
				JOptionPane.showMessageDialog(ui.frame,
					textUtils.getText("addons.collab.mapIsUpToDate"),
					context,
					JOptionPane.INFORMATION_MESSAGE)
			}
			return
		}  else if (fileStatus == "needsPatch") {
		if (action == "diff") {
			JOptionPane.showMessageDialog(ui.frame,
				textUtils.getText("addons.collab.mapNeedsUpdate"),
				context,
				JOptionPane.INFORMATION_MESSAGE)
				
			return
		}
	} else if (fileStatus == "needsMerge") {
		if (action == "commit") {
			JOptionPane.showMessageDialog(ui.frame,
				textUtils.getText("addons.collab.mapNeedsUpdate"),
				context,
				JOptionPane.ERROR_MESSAGE)
				
			return
		}
	} else if (fileStatus == "unknown") {
		final int addFile = JOptionPane.showConfirmDialog(ui.frame, 
				textUtils.getText("addons.collab.fileIsNotVersionned") + "\n" + textUtils.getText("addons.collab.doYouWantToAddFile") ,
				context,
				JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
				
		if (addFile == JOptionPane.YES_OPTION) {
				vcsDo(vcs, context, "add", verbose)
				vcsDo(vcs, context, "commit", verbose)
			} else {
				message += textUtils.getText("addons.collab.fileIsNotVersionned") + "\n"
				JOptionPane.showMessageDialog(ui.frame, 
					message,
					context, JOptionPane.ERROR_MESSAGE)
			}
		
		return
	}
	}

	
	// get commit message
	def commitMessage = null
	def commitFile = null
	if (action == "commit") {
		commitMessage = JOptionPane.showInputDialog(ui.frame,
			textUtils.getText("addons.collab.commitMessage"),
			context,
			JOptionPane.QUESTION_MESSAGE)
		
		if (!commitMessage) {
			JOptionPane.showMessageDialog(ui.frame,
				textUtils.getText("addons.collab.emptyCommitLog"),
				context,
				JOptionPane.ERROR_MESSAGE)
			return
		}
		
		commitFile = new File(node.map.file.path + ".commitMessage")
		commitFile.write(commitMessage)
	}

	// preparing execution
	def initialSize = 4096
	def outStream = new ByteArrayOutputStream(initialSize)
	def errStream = new ByteArrayOutputStream(initialSize)
	def vcsCommandArray = null
	if (action == "commit") {
		vcsCommandArray = [vcsBin, action, "-F", commitFile.path, node.map.file.name]
	} else if ( (action == "push") || (action == "pull") ) {
		vcsCommandArray = [vcsBin, action]
	} else {
		vcsCommandArray = [vcsBin, action, node.map.file.name]
	}
	def processBuilder = new ProcessBuilder(vcsCommandArray)
		.directory(new File(node.map.file.getParent()))
		.redirectErrorStream(false)
		
	if (verbose) {
		JOptionPane.showMessageDialog(ui.frame, 
				textUtils.getText("addons.collab.commandDetails") + "\n" + vcsCommandArray.join(" ") + "\n\n",
				context, JOptionPane.INFORMATION_MESSAGE)
	}
	
	// start process and consume output to prevent locking
	def vcsProcess = processBuilder.start()
	vcsProcess.consumeProcessOutput(outStream, errStream)

	// feed the process with user input in case of empty commit log
	vcsProcess.withWriter { writer ->
		// Writes the following commands to the spawned process
		def gWriter = new GroovyPrintWriter(writer)
		// send "a" for "abort"
		if (vcs == "cvs") {
			gWriter.println "a"
		} else if (vcs == "git") {
			gWriter.println ":q"
		}
	} 

	// waiting process ending
	vcsProcess.waitFor()
	def exitStatus = vcsProcess.exitValue()
	
	// delete commit message file
	if (action == "commit") {
		commitFile.delete()
	}


	def message = ""	
	// verbose mode : show command and results
	if (verbose) {
		message = textUtils.getText("addons.collab.commandOutput") + "\n" + outStream + "\n\n"
		message += textUtils.getText("addons.collab.commandErrors") + "\n" + errStream + "\n\n"
		
		def messageType = null
		if (exitStatus > 0) {
			messageType = JOptionPane.ERROR_MESSAGE
		} else {
			messageType = JOptionPane.INFORMATION_MESSAGE
		}
		
		JOptionPane.showMessageDialog(ui.frame, 
				message,
				context, messageType)
	}
	
	

	// handling errors first
	if (exitStatus > 0) {
		
		// parsing errStream to handle errors
		if ( (errStream =~ /No CVSROOT/ ) || (errStream =~ /Not a git repository/)) {
			// Case description : the folder is not versionned
			//
			// Sub case : CVS (No CVSROOT)
			// Patterns
			// - linux (cvs) : "No CVSROOT"
			// - windows (cvsnt) : "No CVSROOT"
			//
			// Sub case : Git
			// Patterns
			// - windows : "fatal: Not a git repository (or any of the parent directories): .git"
		
			// import is not supported
			message = textUtils.getText("addons.collab.folderIsNotVersionned") + "\n"
			
			JOptionPane.showMessageDialog(ui.frame, 
				message,
				context, JOptionPane.ERROR_MESSAGE)
				
			return "folderIsNotVersionned"
		
		} else if ( (errStream =~ /nothing known about/) || (errStream =~ /to create an entry for/) || (errStream =~ /I know nothing about/) || (errStream =~ /did not match any file/)) {
			// Case description : the file is not versionned
			//
			// Sub case : CVS
			// Patterns
			// - linux (cvs) : on commit "nothing known about"
			// - linux (cvs) : on update/status "use `cvs add` to create an entry for"
			// - windows (cvsnt) : idem
			//
			// Sub case : Git
			// Patterns
			// - windows : "error: pathspec 'header.inc.php' did not match any file(s) known to git."
	
			// ask user to add it
			final int addFile = JOptionPane.showConfirmDialog(ui.frame, 
				textUtils.getText("addons.collab.fileIsNotVersionned") + "\n" + textUtils.getText("addons.collab.doYouWantToAddFile") ,
				context,
				JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
			
			if (addFile == JOptionPane.YES_OPTION) {
				vcsDo(vcs, context, "add", verbose)
				vcsDo(vcs, context, "commit", verbose)
			} else {
				message += textUtils.getText("addons.collab.fileIsNotVersionned") + "\n"
				JOptionPane.showMessageDialog(ui.frame, 
					message,
					context, JOptionPane.ERROR_MESSAGE)
			}
		} else if ( (action == "commit") && (outStream =~ /Log message unchanged or not specified/) ) {
				// Case : empty log message
				message += textUtils.getText("addons.collab.emptyCommitLog")
				JOptionPane.showMessageDialog(ui.frame, 
					message,
					context, JOptionPane.ERROR_MESSAGE)
		} else if ( (action == "update") && (outStream =~ /C /) ) {
				node.map.close(true, false)
				message += textUtils.getText("addons.collab.mapConflict")
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
			/*
			if (! verbose) {
				message = textUtils.getText("addons.collab.unknownErrorActivateVerboseMode")
			}
			*/
			
			JOptionPane.showMessageDialog(ui.frame, 
				textUtils.getText("addons.collab.vcsReturnedAnError") + "\n" + errStream,
				context, JOptionPane.ERROR_MESSAGE)
			
			return "fatalError"
		}
		
	} else {
		// errorstatus = 0 = ok
		if (outStream.size() > 0) {
			if (action == "commit") {
				if (outStream =~ /nothing added to commit/) {
					// Git
					message += textUtils.getText("addons.collab.mapDoesntNeedCommit")
				} else {
					message += textUtils.getText("addons.collab.mapCommitted")
					actionDone = 1
		
					JOptionPane.showMessageDialog(ui.frame, 
						message,
						context, JOptionPane.INFORMATION_MESSAGE)
		
					// The file has been committed => prompt the user if he wants to push
					if (vcs == "git") {
						final int pushFile = JOptionPane.showConfirmDialog(ui.frame, 
							textUtils.getText("addons.collab.doYouWantToPush"),
							context,
							JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
			
						if (pushFile == JOptionPane.YES_OPTION) {
							vcsDo(vcs, context, "push", verbose)
						}
					}
					
					return
				}
				
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
					actionDone = 1
				}
				
			} else if (action == "status") {
				if ( (outStream =~ /nothing to commit/) || (outStream =~ /Status: Up-to-date/) ) {
					return "upToDate"
				} else if ( outStream =~ /Status: Needs Patch/) {
					return "needsPatch"
				} else if ( outStream =~ /Status: Locally modified/) {
					return "locallyModified"
				} else if ( outStream =~ /Status: Needs Merge/) {
					return "needsMerge"
				} else if ( outStream =~ /Status: Unknown/) {
					return "unknown"
				}
			} else if (action == "pull") {
				message += textUtils.getText("addons.collab.mapIsUpToDate")
			}
		} else {
			if (action == "add") {
				message += textUtils.getText("addons.collab.mapAdded")
				actionDone = 1
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
			} else if (action == "push") {
				message += textUtils.getText("addons.collab.mapPushed")
			}
		}

		if ( verbose || (action != "status") ) {
			JOptionPane.showMessageDialog(ui.frame, 
				message,
				context, JOptionPane.INFORMATION_MESSAGE)
		}
	}	
}


//////////
// Main
//////////

def verbose = config.getBooleanProperty('addons.collab.verbose')

// Is the current folder under versionning system control ?
def vcs = guessVcs(textUtils.getText("addons.vcsCommit"), verbose)
if (!vcs) {
	return
}

// It makes no sense to do versionning operations if the map has not been saved
if (!node.map.isSaved()) {
	JOptionPane.showMessageDialog(ui.frame, 
				textUtils.getText("addons.collab.saveMapFirst"),
				textUtils.getText("addons.vcsCommit"), JOptionPane.ERROR_MESSAGE)
    return
}

// Let's work
if (this =~ /Commit/) {
	vcsDo(vcs, textUtils.getText("addons.vcsCommit"), "commit", verbose)
} else if (this =~ /Diff/) {
	if (vcs == "git") {
		JOptionPane.showMessageDialog(ui.frame, 
				textUtils.getText("addons.collab.notAvailableForThisVcs") + " (" + vcs + ")",
				textUtils.getText("addons.vcsDiff"), JOptionPane.ERROR_MESSAGE)
	} else {
		vcsDo(vcs, textUtils.getText("addons.vcsDiff"), "diff", verbose)
	}
} else if (this =~ /Update/) {
	if (vcs == "git") {
		vcsDo(vcs, textUtils.getText("addons.vcsUpdate"), "pull", verbose)
	} else {
		vcsDo(vcs, textUtils.getText("addons.vcsUpdate"), "update", verbose)
	}
}

