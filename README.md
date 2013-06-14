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


Todo
=============================

v0.2 :
- add add-on icon
- move cvs path as addon property

v?.? :
- user friendly messages
- user friendly diffs
- support for other vcs ?