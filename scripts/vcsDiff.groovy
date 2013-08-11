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

//
// basic message functions
//
def displayError(message) {
	JOptionPane.showMessageDialog(ui.frame, 
		message,
		textUtils.getText("addons.collaborativeTools"), JOptionPane.ERROR_MESSAGE)
}

def displayInfo(message) {
	JOptionPane.showMessageDialog(ui.frame, 
		message,
		textUtils.getText("addons.collaborativeTools"), JOptionPane.INFORMATION_MESSAGE)
}

def displayWarning(message) {
	JOptionPane.showMessageDialog(ui.frame, 
		message,
		textUtils.getText("addons.collaborativeTools"), JOptionPane.WARNING_MESSAGE)
}

def translateError(message) { displayError (textUtils.getText(message)) }
def translateInfo(message) { displayInfo (textUtils.getText(message)) }
def translateWarning(message) { displayWarning (textUtils.getText(message)) }


//
// run command
//
def execCommand(vcs, action) {

	def verbose = config.getBooleanProperty('addons.collab.verbose')
	
	
	def vcsBin = config.getProperty('addons.collab.' + vcs + '.bin', "note : set /path/to/vcs in preferences")
	if (!(new File(vcsBin)).exists()) {
		displayError(textUtils.getText("addons.collab.vcsBinNotFound") + "\n  " + vcsBin)			
		return [99, "", ""]
	}

	// get commit message
	def commitMessage = null
	def commitFile = null
	if (action == "commit") {
		commitMessage = JOptionPane.showInputDialog(ui.frame,
			textUtils.getText("addons.collab.commitMessage"),
			textUtils.getText("addons.collaborativeTools"),
			JOptionPane.QUESTION_MESSAGE)
		
		if (!commitMessage) {
			displayError(textUtils.getText("addons.collab.emptyCommitLog"))
			return [99, "", ""]
		}
		
		commitFile = new File(node.map.file.path + ".commitMessage")
		commitFile.write(commitMessage)
	}

	
	// preparing execution
	def initialSize = 4096
	def outStream = new ByteArrayOutputStream(initialSize)
	def errStream = new ByteArrayOutputStream(initialSize)
	
	if (action == "commit") {
		vcsCommandArray = [vcsBin, action, "-F", commitFile.path, node.map.file.name]
	} else {
		vcsCommandArray = [vcsBin, action, node.map.file.name]
	}
	switch (vcs) {
		case "svn":
			if (action == "status") {
				vcsCommandArray = [vcsBin, action, "-u", node.map.file.name]
			}
		break
		
		case "git":
			switch (action) {
				case "status":
					vcsCommandArray = [vcsBin, action, "--porcelain", node.map.file.name]
				break
				
				case "diff":
					vcsCommandArray = [vcsBin, action, "master", "origin/master", node.map.file.name]	
				break
				
				case "merge":
				case "fetch":
					vcsCommandArray = [vcsBin, action, "origin"]
				break
				
				case "checkdiff":
					vcsCommandArray = [vcsBin, "diff", "origin", node.map.file.name]
				break
				
				case "push":
				case "pull":
				case "remote":
					vcsCommandArray = [vcsBin, action]
				break
			}
		break
	}

	def processBuilder = new ProcessBuilder(vcsCommandArray)
		.directory(new File(node.map.file.getParent()))
		.redirectErrorStream(false)
		
	if (verbose) {
		displayInfo(textUtils.getText("addons.collab.commandDetails") + "\n" + vcsCommandArray.join(" ") + "\n\n")
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
	

	// verbose mode : show command and results
	if (verbose) {
		def message = textUtils.getText("addons.collab.commandOutput") + "\n" + outStream + "\n\n"
		message += textUtils.getText("addons.collab.commandErrors") + "\n" + errStream + "\n\n"
		
		def messageType = null
		if (exitStatus > 0) {
			displayError(message)
		} else {
			displayInfo(message)
		}
	}

	// delete commit message file
	if (action == "commit") {
		commitFile.delete()
	}

	
	// handling common errors
	if ( (errStream =~ /No CVSROOT/ ) || (errStream =~ /is not a working copy/) || (errStream =~ /Not a git repository/)) {
		// Case description : the folder is not versionned
		//
		// Sub case : CVS (No CVSROOT)
		// Patterns
		// - linux (cvs) : "No CVSROOT"
		// - windows (cvsnt) : "No CVSROOT"
		//
		// Sub case : SVN
		// Patterns
		// - windows : "warning... is not a working directory"
		//
		// Sub case : Git
		// Patterns
		// - windows : "fatal: Not a git repository (or any of the parent directories): .git"
			
		exitStatus = 99
		translateError("addons.collab.folderIsNotVersionned")			
	}

	return [exitStatus, outStream, errStream]
}


//
// which vcs are we using ?
//
def guessVcs(String context, Boolean verbose) {
	
	def vcs = null
	
	if ((new File(node.map.file.getParent() + File.separator + 'CVS')).exists()) {
		vcs = "cvs"
	} else if ((new File(node.map.file.getParent() + File.separator + '.git')).exists()) {
		vcs = "git"
	} else if ((new File(node.map.file.getParent() + File.separator + '.svn')).exists()) {
		vcs = "svn"
	}
	
	if (vcs) {
		if (verbose) {
			displayInfo(textUtils.getText("addons.collab.vcsIs") + " " + vcs)
		}
	} else {
		displayError(textUtils.getText("addons.collab.folderIsNotVersionned"))
	}

	return vcs
}


//
// status
//
def vcsGetStatus(vcs) {
	def verbose = config.getBooleanProperty('addons.collab.verbose')

	
	switch (vcs) {
		case "git":
			def (exitStatus, outStream, errStream) = execCommand(vcs, "fetch")
			if (exitStatus == 99) {	return "fatalError" }

	}
	
	
	def (exitStatus, outStream, errStream) = execCommand(vcs, "status")
	if (exitStatus == 99) {	return "fatalError" }
	
	def status = "unknown"
	
	switch (vcs) {
		case "cvs":
			if ((outStream =~ /Status: Up-to-date/)) {
				status = "upToDate"
			} else if ( outStream =~ /Status: File had conflicts on merge/ ) {
				status = "conflict"
			} else if ( outStream =~ /Status: Needs Patch/) {
				status = "needsUpdate"
			} else if ( outStream =~ /Status: Locally Added/) {
				status = "needsCommit"
			} else if ( (outStream =~ /Status: Locally modified/) ||
						(outStream =~ /Status: Locally Modified/)) {
				status = "locallyModified"
			} else if ( outStream =~ /Status: Needs Merge/) {
				status = "needsUpdate"
			} else if ( outStream =~ /Status: Unknown/) {
				status = "unknownToVcs"
			}
			break
		
		case "svn":
			def lines = outStream.toString().split("\n")
			if ( (lines.size() == 1) && (outStream =~ /^Status against/)) {
				status = "upToDate"
			} else if ( outStream =~ /^C / ) {
				status = "conflict"
			} else if ( outStream =~ /^........\*/ ) { // svn status -u // to check before ^M
				status = "needsUpdate"
			} else if ( outStream =~ /^M / ) {
				status = "locallyModified"
			} else if ( (outStream =~ /^A /)) {
				status = "needsCommit"
			} else if ( outStream =~ /^\?/ ) { // svn unknown
				status = "unknownToVcs"
			}
			break
			
		case "git":	
			if ( (outStream.count == 0) && (errStream.count == 0) ) {
				(dExitStatus, dOutStream, dErrStream) = execCommand(vcs, "checkdiff")
				if ( (dOutStream.count == 0) && (dErrStream.count == 0) ) {
					status = "upToDate"
				} else {
					status = "needsUpdate"
				}
			} else if (outStream =~ /^\?\? /) {
				status = "unknownToVcs"
			} else if ( outStream =~ /^UU/ ) {
				status = "conflict"
			} else if ( (outStream =~ /^A /)) {
				status = "needsCommit"
			} else if ( outStream =~ /^ M /) { // git
				status = "locallyModified"
			}
			break
			
	}

	if (verbose) {
		displayInfo("File status: " + status)	
	}
	
	if (status == "unknownToVcs") {
		final int addFile = JOptionPane.showConfirmDialog(ui.frame, 
			textUtils.getText("addons.collab.fileIsNotVersionned") + "\n" + textUtils.getText("addons.collab.doYouWantToAddFile") ,
			textUtils.getText("addons.collaborativeTools"),
			JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
				
		if (addFile == JOptionPane.YES_OPTION) {
			if (vcsAddFile(vcs) == "fileAdded") {
				def commitReturn = vcsCommitFile(vcs)
				if (commitReturn == "fileCommitted") {
					status = "upToDate"
				} else {
					status = commitReturn
				}
			} else {
				translateError("addons.collab.vcsAddFailed")
				status = "fileIsNotVersionned"
			}
		} else {
			status = "fileIsNotVersionned"
		}
	}
	
	
	if (status == "fatalError") {
		// todo
		// the error has been shown in the vcsDo function just quit
	} else if (status == "conflict") {
		displayError(textUtils.getText("addons.collab.mapConflict"))
		status = "fatalError"
	} else if (status == "folderIsNotVersionned") {
		displayError(textUtils.getText("addons.collab.folderIsNotVersionned"))
		status = "fatalError"
	} else if (status == "fileIsNotVersionned") {
		translateError("addons.collab.fileIsNotVersionned")
		status = "fatalError"
	}

	return status
}


//
// update
//
def vcsUpdateFile(vcs) {
	def verbose = config.getBooleanProperty('addons.collab.verbose')

	// don't get status since it's not a user action
	def status = vcsGetStatus(vcs)

	if (status == "fatalError") { return }

	if (status == "upToDate") {
		translateInfo("addons.collab.mapIsUpToDate")
		return
	}
	
	//def (exitStatus, outStream, errStream) = (0, "", "")
	switch (vcs) {
		case "cvs":
			if (status == "locallyModified") {
				translateInfo("addons.collab.mapNeedsCommit")
				return
			}			
			(exitStatus, outStream, errStream) = execCommand(vcs, "update")
		break
		
		case "svn":
			if (status == "locallyModified") {
				translateInfo("addons.collab.mapNeedsCommit")
				return
			}
			(exitStatus, outStream, errStream) = execCommand(vcs, "update")
		break
		
		case "git":
			if (status == "locallyModified") {
				translateInfo("addons.collab.mapNeedsCommit")
				return
			}
			(exitStatus, outStream, errStream) = execCommand(vcs, "merge")
		break
	}
	
	if (exitStatus == 99) {	return "fatalError" }

	
	switch (vcs) {
		case "cvs":
			if (exitStatus > 0) {
				if ( (outStream =~ /C /) ) {
					translateError("addons.collab.mapConflict")
					return "conflict"
				} else {
					displayError(textUtils.getText("addons.collab.vcsReturnedAnError") + "\n" + errStream)			
					return "fatalError"
				}
			} else {
				// there are some updates => close the map and reoppen it
				// Patterns
				//   update : "U filename"
				//   merge  : "M filename"
				if ( (outStream =~ /U /) || (outStream =~ /M /) ) {
					def uri = node.map.file.toURI()
					node.map.close(false, true)
					loadUri(uri)
					translateInfo("addons.collab.mapUpdated")
					return "updated"
				} else if ( outStream =~ /C /) {
					//node.map.close(true, false) // let user do a backup
					translateError("addons.collab.mapConflict")
					return "conflict"
				}
			}
		break
		
		case "svn":
			if (exitStatus == 0) {
				// to fix
				def lines = outStream.toString().split("\n")
				if ( (lines[1] =~ /^At revision/) ) {
					translateInfo("addons.collab.mapIsUpToDate")
				} else if ( (lines[1] =~ /^U /) || (lines[1] =~ /^G /) ) {
					def uri = node.map.file.toURI()
					node.map.close(false, true)
					loadUri(uri)
					translateInfo("addons.collab.mapUpdated")
					return "updated"
				} else if ( (lines[1] =~/^C /) ) {
					translateError("addons.collab.mapConflict")
					return "conflict"
				}
			} else {
				displayError(textUtils.getText("addons.collab.vcsReturnedAnError") + "\n" + errStream)			
				return "fatalError"
			}
		break
		
		case "git":
			if (exitStatus == 0) {
				def uri = node.map.file.toURI()
				node.map.close(false, true)
				loadUri(uri)
				translateInfo("addons.collab.mapUpdated")
				return "updated"
			} else {
				displayError(textUtils.getText("addons.collab.vcsReturnedAnError") + "\n" + outStream + "\n" + errStream)			
				return "fatalError"
			}
		break
	}	
}


//
// update
//
def vcsDiffFile(vcs) {
	def verbose = config.getBooleanProperty('addons.collab.verbose')

	
	// first : get status
	def status = vcsGetStatus(vcs)
	
	switch (status) {
		case "fatalError":
			return
		
		case "upToDate":
			translateInfo("addons.collab.mapIsUpToDate")
			return
		
		case "needsUpdate":
			translateInfo("addons.collab.mapNeedsUpdate")
			return
	}
	
	// let's diff
	def (exitStatus, outStream, errStream) = execCommand(vcs, "diff")
	if (exitStatus == 99) {	return "fatalError" }
	
	
	// deal with each vcs
	switch (vcs) {
		case "cvs":
			displayInfo(textUtils.getText("addons.collab.mapDifferences") + "\n" + outStream)
		break
		
		case "svn":
			if (outStream.count == 0) {
				translateInfo("addons.collab.mapIsUpToDate")
			} else {
				displayInfo(textUtils.getText("addons.collab.mapDifferences") + "\n" + outStream)
			}
		break
		
		case "git":
			if ( (status == "needsCommit") && (outStream.count == 0) ) {
				translateInfo("addons.collab.mapNeedsCommit")
			} else if (outStream.count == 0) {
				translateInfo("addons.collab.mapIsUpToDate")
			}
		break
	}
	
	
}


//
// add
//
def vcsAddFile(vcs) {
	def verbose = config.getBooleanProperty('addons.collab.verbose')

	// don't get status since it's not a user action
	//def status = vcsGetStatus(vcs)
	
	def (exitStatus, outStream, errStream) = execCommand(vcs, "add")
	if (exitStatus == 99) {	return "fatalError" }

	if (exitStatus == 0) {
		translateInfo("addons.collab.mapAdded")
		return "fileAdded"
	} else {
		displayError(textUtils.getText("addons.collab.vcsReturnedAnError") + "\n" + errStream)			
		return "fatalError"
	}
}


//
// commit
//
def vcsCommitFile(vcs) {
	def verbose = config.getBooleanProperty('addons.collab.verbose')
	def quiet = config.getBooleanProperty('addons.collab.quiet')

	def status = vcsGetStatus(vcs)
	
	switch (status) {
		case "fatalError":
			return status
			
		case "upToDate":
			translateInfo("addons.collab.mapDoesntNeedCommit")
			return status
		
		case "needsMerge":
			translateWarning("addons.collab.mapNeedsUpdate")
			return status

		case "needsUpdate":
			translateWarning("addons.collab.mapNeedsUpdate")
			return status
	}

		
	// let's commit
	def (exitStatus, outStream, errStream) = execCommand(vcs, "commit")
	if (exitStatus == 99) {	return "fatalError" }

	if (exitStatus == 0) {
		if (!quiet) {
			translateInfo("addons.collab.mapCommitted")
		}
		def now = new Date()
		def df = new java.text.SimpleDateFormat("HH:mm:ss")
		c.setStatusInfo("standard",
			textUtils.getText("addons.collab.status.successfullyCommittedAt") + df.format(now),
			"button_ok");
	} else {
		return errStream
	}
	
	switch (vcs) {
		case "cvs":
		break
		
		case "svn":
		break
		
		case "git":
			// The file has been committed => prompt the user if he wants to push
			if (vcs == "git") {
			
				def (getRemoteExitStatus, getRemoteOutStream, getRemoteErrStream) = execCommand(vcs, "remote")
				
				if ( (getRemoteExitStatus == 0) && (getRemoteOutStream.size() > 0)) {
					final int pushFile = JOptionPane.showConfirmDialog(ui.frame, 
						textUtils.getText("addons.collab.doYouWantToPush"),
						textUtils.getText("addons.collaborativeTools"),
						JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
			
					if (pushFile == JOptionPane.YES_OPTION) {
						def (pushExitStatus, pushOutStream, pushErrStream) = execCommand(vcs, "push")
						if (pushExitStatus == 99) {	
							return "fatalError"
						} else {
							translateInfo("addons.collab.mapPushed")
						}
					}
				}
			}

		break
	}
	
	return "fileCommitted"
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
	vcsCommitFile(vcs)
} else if (this =~ /Diff/) {
	vcsDiffFile(vcs)
} else if (this =~ /Update/) {
	vcsUpdateFile(vcs)
}