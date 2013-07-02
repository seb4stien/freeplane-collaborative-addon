// @ExecutionModes({ON_SINGLE_NODE})

// Freeplane collaborative add-on
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

import javax.swing.JDialog
import javax.swing.JOptionPane


///////////
// Params
///////////

// todo : check existence + alert
def vcsBin = config.getProperty('vcsBin', "note : set /path/to/vcs in preferences")
def verbose = config.getBooleanProperty('vcsVerbose')


//////////
// Main
//////////

if (!node.map.isSaved()) {
	ui.showMessage(textUtils.getText("addons.collab.saveMapFirst"), 0)
    return
}

def initialSize = 4096
def outStream = new ByteArrayOutputStream(initialSize)
def errStream = new ByteArrayOutputStream(initialSize)
def vcsCommandArray = [vcsBin, "update", node.map.file.name]
def processBuilder = new ProcessBuilder(vcsCommandArray)
	.directory(new File(node.map.file.getParent()))
	.redirectErrorStream(true)
def vcsProcess = processBuilder.start() //[], new File(node.map.file.getParent()))
vcsProcess.consumeProcessOutput(outStream, errStream)
vcsProcess.waitFor()

def message = ""

if (verbose) {
	message = textUtils.getText("addons.collab.commandDetails") + "\n" + vcsCommandArray.join(" ")
}

def updated = 0
if (outStream.size() > 0) {
	if (verbose) {
		message += "\n\n" + textUtils.getText("addons.collab.commandOutput") + "\n" + outStream + "\n"
	}
 	
	if (outStream =~ /^C /) {
		message += textUtils.getText("addons.collab.mapConflict")
	}
	
	if (outStream =~ /^M /) {
		message += textUtils.getText("addons.collab.mapNeedsCommit")
	}
	
	// there are some updates => close the map and reoppen it
	if ( (outStream =~ /^P /) || (outStream =~ /^U /) ) {
		if (verbose) {
			message += textUtils.getText("addons.collab.mapUpdated")
		}
		def uri = node.map.file.toURI()
		node.map.close(false, true)
		loadUri(uri)
		updated = 1
	}
	
	if ( (outStream =~ /No CVSROOT/) ) {
		message += textUtils.getText("addons.collab.theFileIsNotVersionned")
	}
	
} else {
	if (verbose) {
		message += "\n\n" + textUtils.getText("addons.collab.commandOutput") + "\n  "
	}
	message += textUtils.getText("addons.collab.mapIsUpToDate")
}

// catch errors
if (errStream.size() > 0) {
	if (verbose) {
		message += "\n\n" + textUtils.getText("addons.collab.commandErrors") + "\n" + errStream
	} else {
		message += "Unknown error"
	}
}

// message display
if (updated == 1) {
	JOptionPane.showMessageDialog(ui.frame, textUtils.getText("addons.collab.mapReloaded"), textUtils.getText("addons.vcsUpdate"), JOptionPane.INFORMATION_MESSAGE)	 
} else {
	JOptionPane.showMessageDialog(ui.frame, message, textUtils.getText("addons.vcsUpdate"), JOptionPane.INFORMATION_MESSAGE)
}

