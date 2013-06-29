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
def vcsCommandArray = [vcsBin, "commit", node.map.file.name]
def processBuilder = new ProcessBuilder(vcsCommandArray)
	.directory(new File(node.map.file.getParent()))
	.redirectErrorStream(true)
def vcsProcess = processBuilder.start()
vcsProcess.consumeProcessOutput(outStream, errStream)

vcsProcess.withWriter { writer ->
  // Writes the following commands to the spawned process
  def gWriter = new GroovyPrintWriter(writer)
  // Imagine that the user enters these lines
  gWriter.println "a"
} 

vcsProcess.waitFor()

def message = textUtils.getText("addons.collab.commandDetails") + "\n" + vcsCommandArray.join(" ") 

if (outStream.size() > 0) {
	message += "\n\n" + textUtils.getText("addons.collab.commandOutput") + "\n" + outStream
} else {
	message += "\n\n" + textUtils.getText("addons.collab.commandOutput") + "\n" + textUtils.getText("addons.collab.nothingDone") 
}

if (errStream.size() > 0)
	message += "\n\n" + textUtils.getText("addons.collab.commandErrors") + "\n" + errStream

JOptionPane.showMessageDialog(ui.frame, 
	message,
	textUtils.getText("addons.vcsCommit"), JOptionPane.INFORMATION_MESSAGE)
 