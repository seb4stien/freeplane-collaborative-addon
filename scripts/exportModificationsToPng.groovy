// @ExecutionModes({ON_SINGLE_NODE})

// Freeplane collaborative add-on
//
// Groovy script to show recently modified nodes
// and to export it as png (to mail it to contributors for instance)
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

// set filter
def maxDepth = config.getIntProperty('ctReportMaxDepth')
def matches = c.find{ true}
matches.each{ node ->
    if (node.getNodeLevel(true) > maxDepth) {
		node.folded = true
	} else {
		node.folded = false
	}
	
}

def maxAge = config.getIntProperty('ctReportIntervalInDays', 7)
node.map.setFilter( true, false, {  it.lastModifiedAt >= new Date() - maxAge } )


// Thanks to boercher for the export code
// https://sourceforge.net/apps/phpbb/freeplane/viewtopic.php?f=1&t=672 
// copyright boercher
import org.freeplane.features.export.mindmapmode.ExportController;

def export(exportDescription, fileName, overwriteExisting) {
    def file = new File(fileName)
    def exportController = ExportController.contoller
    def filter = exportController.fileFilters.find {
        it.description == exportDescription
    }
    if (filter == null) {
        println "no export defined for '$exportDescription'"
    }
    else if (!overwriteExisting && file.exists()) {
        println "destination file ${file.absolutePath} already exists"
    }
    else {
        def exportEngine = exportController.filterMap.get(filter)
        exportEngine.export(node.map.delegate, file);
        println "exported ${node.map.file} to ${file.absolutePath}"
    }
}


// export current map
def fileName = node.map.file.path.replaceFirst('\\.mm', '.png')
def overwriteExistingFile = true
// /copyright boercher

// start a thread to be non-blocking and wait the rendering of the map
Thread.start() {
sleep 5000
export('Portable Network Graphic (PNG) (.png)', fileName, overwriteExistingFile)
}