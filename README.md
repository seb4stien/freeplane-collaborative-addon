freeplane-collaborative-addon
=============================

A [freeplane](http://freeplane.sourceforge.net/) add-on containing useful tools to work toghether on a single mindmap.
Currently providing : diff/update/commit operations on a map via cvs


Usage
=============================

To lear more about freeplane add-on see : http://freeplane.sourceforge.net/wiki/index.php/Add-ons

To install this add-on:
* download last .addon.mm file
* open it under freeplane
* freeplane will ask if you want to install it
* go to "Tools > Preferences > Scripts" to set the path to your VCS binary (currently only cvs is supported)

Important : this add-on requires a command line cvs on your system.

Content
=============================

Packages:
- collaborativeTools-vX.Y.addon.mm : package providing the add-on

Sources:
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

Todo
=============================



v?.? :
- add commit/diff/update menus for map directory (instead of file)
- user friendly messages
- user friendly diffs
- support for other vcs ? (git)
- better workaround for #1 ?
- translate warning message to save map