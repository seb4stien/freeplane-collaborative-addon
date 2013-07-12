freeplane-collaborative-addon
=============================

A [freeplane](http://freeplane.sourceforge.net/) add-on containing useful tools to work toghether on a single mindmap.
Currently providing : diff/update/commit operations on a map via cvs

The latest version of the addon and the user documentation can be found at http://freeplanecollab.sourceforge.net/


Content
=============================

- collaborativeTools.mm : mindmap used to build the add-on
- scripts/* : scripts provided by the add-on


Changelog
=============================

v0.1 : initial revision
* support for diff/update/commit via CVS (hard coded path)

v0.2 :
- added add-on icon
- moved cvs path as addon property

v0.3 :
- added an export menu to create a png from recently modified nodes

v0.4 :
- changed icon
- fixed #1 : cvs commit aborted if log message is empty
- require the map to be saved before action

v0.5 :
- auto-reload map if it was updated
- translated messages

v0.6 : 
- added verbose/quiet mode
- added user friendly messages
- better error handling
- (internal) sharing same main function

v0.7 :
- added git support

v0.8 :
- added svn support

Todo
=============================

see https://github.com/seb4stien/freeplane-collaborative-addon/issues 