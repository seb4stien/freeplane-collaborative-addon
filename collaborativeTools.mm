<map version="freeplane 1.2.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="collaborative tools" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1376135900095" BACKGROUND_COLOR="#97c7dc" LINK="http://freeplanecollab.sourceforge.net">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="12"/>
<attribute_layout NAME_WIDTH="121" VALUE_WIDTH="137"/>
<attribute NAME="name" VALUE="collaborativeTools"/>
<attribute NAME="version" VALUE="0.9.3" OBJECT="org.freeplane.features.format.FormattedObject|0.9.3|number:decimal:#0.####"/>
<attribute NAME="author" VALUE="seb4stien"/>
<attribute NAME="freeplaneVersionFrom" VALUE="1.2.23"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The homepage of this add-on should be set as the link of the root node.
    </p>
    <p>
      The basic properties of this add-on. They can be used in script names and other attributes, e.g. &quot;${name}.groovy&quot;.
    </p>
    <ul>
      <li>
        name: The name of the add-on, normally a technically one (no spaces, no special characters except _.-).
      </li>
      <li>
        author: Author's name(s) and (optionally) email adresses.
      </li>
      <li>
        version: Since it's difficult to protect numbers like 1.0 from Freeplane's number parser it's advised to prepend a 'v' to the number, e.g. 'v1.0'.
      </li>
      <li>
        freeplane-version-from: The oldest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too old.
      </li>
      <li>
        freeplane-version-to: Normally empty: The newest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too new.
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="description" POSITION="left" ID="ID_948643493" CREATED="1371158990112" MODIFIED="1371158990120">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Description would be awkward to edit as an attribute.
    </p>
    <p>
      So you have to put the add-on description as a child of the <i>'description'</i>&#160;node.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="This add-on provides tools to enable collaborative mind mapping." ID="ID_329459946" CREATED="1371159094606" MODIFIED="1373057454389"/>
</node>
<node TEXT="changes" POSITION="left" ID="ID_268144721" CREATED="1371158990121" MODIFIED="1371158990126">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Change log of this add-on: append one node for each noteworthy version and put the details for each version into a child node.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="v0.1" ID="ID_586794514" CREATED="1371159128252" MODIFIED="1371159151903">
<node TEXT="Initial release : proof of concept" ID="ID_393441481" CREATED="1371159153407" MODIFIED="1371159162937"/>
</node>
<node TEXT="v0.2" ID="ID_516714028" CREATED="1371210946784" MODIFIED="1371210948612">
<node TEXT="First working version :&#xa;- cvs binary set in preferences" ID="ID_1358869817" CREATED="1371210951138" MODIFIED="1371210980310"/>
</node>
<node TEXT="v0.3" ID="ID_1525147987" CREATED="1371210981960" MODIFIED="1371210983487">
<node TEXT="Support for export to png" ID="ID_1414369054" CREATED="1371210984645" MODIFIED="1371210993117"/>
</node>
<node TEXT="v0.4" ID="ID_1662251567" CREATED="1372499267534" MODIFIED="1372499269621">
<node TEXT="handling empty commit message" ID="ID_1400146257" CREATED="1372499309465" MODIFIED="1372499314833"/>
</node>
<node TEXT="v0.5" ID="ID_407616167" CREATED="1372499270077" MODIFIED="1372499271843">
<node TEXT="auto-reload map on update" ID="ID_1069991472" CREATED="1372499273323" MODIFIED="1372499278890"/>
<node TEXT="added some translations" ID="ID_17649688" CREATED="1372499279217" MODIFIED="1372499292880"/>
</node>
<node TEXT="v0.6" ID="ID_1211727843" CREATED="1372708948109" MODIFIED="1372708950120">
<node TEXT="added verbose/quiet mode" ID="ID_1340749297" CREATED="1372708952849" MODIFIED="1372893740595"/>
<node TEXT="added user friendly messages" ID="ID_1605378630" CREATED="1372891297968" MODIFIED="1372891303610"/>
<node TEXT="better error handling" ID="ID_1682080214" CREATED="1372891304131" MODIFIED="1372891319724"/>
<node TEXT="(internal) sharing same main function" ID="ID_227520794" CREATED="1372891329821" MODIFIED="1372891341847"/>
</node>
<node TEXT="v0.7" ID="ID_579824585" CREATED="1372927204091" MODIFIED="1372927207012">
<node TEXT="added git support" ID="ID_1534346792" CREATED="1372969910679" MODIFIED="1372969921264"/>
<node TEXT="handle commit message inside freeplane" ID="ID_1471533847" CREATED="1373053847804" MODIFIED="1373053856081"/>
<node TEXT="check file&apos;s status before action" ID="ID_407957157" CREATED="1373055273168" MODIFIED="1373055282660"/>
</node>
<node TEXT="v0.8" ID="ID_1466445545" CREATED="1373403063331" MODIFIED="1373403065362">
<node TEXT="added svn support" ID="ID_704366621" CREATED="1373403065992" MODIFIED="1373403072202"/>
</node>
<node TEXT="v0.9" ID="ID_212844978" CREATED="1374174892969" MODIFIED="1374174894733">
<node TEXT="complete refactoring" ID="ID_1916020756" CREATED="1374174896132" MODIFIED="1374174904183"/>
<node TEXT="non regression tests" ID="ID_1295959458" CREATED="1374174904730" MODIFIED="1374174912171"/>
<node TEXT="full cvs/svn/git support" ID="ID_89964569" CREATED="1374174914828" MODIFIED="1374174921301"/>
</node>
<node TEXT="0.9.1" ID="ID_72544017" CREATED="1374877278314" MODIFIED="1374877283892">
<node TEXT="added homepage attribute to root node" ID="ID_855881107" CREATED="1374877285290" MODIFIED="1374877293254"/>
</node>
<node TEXT="0.9.2" ID="ID_1890939788" CREATED="1376131281745" MODIFIED="1376131283791">
<node TEXT="added quiet mode" ID="ID_1730176809" CREATED="1376131285345" MODIFIED="1376131290272"/>
</node>
<node TEXT="0.9.3" ID="ID_1565936436" CREATED="1376135903478" MODIFIED="1376135905709">
<node TEXT="optimization for git : do not propose to push if there is not remote" ID="ID_254435384" CREATED="1376135907170" MODIFIED="1376135928358"/>
<node TEXT="extended quiet mode to &quot;add&quot;, &quot;update&quot; and &quot;push&quot; actions" ID="ID_791363029" CREATED="1376216870440" MODIFIED="1376225364625"/>
</node>
</node>
<node TEXT="license" POSITION="left" ID="ID_915883933" CREATED="1371158990126" MODIFIED="1371158990131">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The add-ons's license that the user has to accept before she can install it.
    </p>
    <p>
      
    </p>
    <p>
      The License text has to be entered as a child of the <i>'license'</i>&#160;node, either as plain text or as HTML.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="&#xa;This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 2 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.&#xa0;&#xa0;See the&#xa;GNU General Public License for more details.&#xa;" ID="ID_1749584810" CREATED="1371158990132" MODIFIED="1371158990132"/>
</node>
<node TEXT="sources" POSITION="left" ID="ID_1846022363" CREATED="1373056658803" MODIFIED="1373056676751" LINK="https://github.com/seb4stien/freeplane-collaborative-addon">
<edge COLOR="#00ff00"/>
</node>
<node TEXT="issues" POSITION="left" ID="ID_571374077" CREATED="1373056821535" MODIFIED="1373056846275" LINK="https://github.com/seb4stien/freeplane-collaborative-addon/issues">
<edge COLOR="#ff00ff"/>
</node>
<node TEXT="preferences.xml" POSITION="left" ID="ID_1334873957" CREATED="1371158990158" MODIFIED="1371158990169">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">The child node contains the add-on configuration as an extension to mindmapmodemenu.xml (in Tools-&gt;Preferences-&gt;Add-ons). </font>
    </p>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">Every property in the configuration should receive a default value in <i>default.properties</i>&#160;node.</font>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&#xa;&lt;preferences_structure&gt;&#xa;&lt;tabbed_pane&gt;&#xa;&lt;tab name=&quot;plugins&quot;&gt;&#xa;&lt;separator name=&quot;collaborativeTools&quot;&gt;&#xa;&lt;path name=&quot;addons.collab.cvs.bin&quot; /&gt;&#xa;&lt;path name=&quot;addons.collab.git.bin&quot; /&gt;&#xa;&lt;path name=&quot;addons.collab.svn.bin&quot; /&gt;&#xa;&lt;boolean name=&quot;addons.collab.verbose&quot; /&gt;&#xa;&lt;boolean name=&quot;addons.collab.quiet&quot; /&gt;&#xa;&lt;!--&#xa;&lt;number name=&quot;addons.collab.reportIntervalInDays&quot; min=&quot;1&quot; max=&quot;100&quot; /&gt;&#xa;&lt;number name=&quot;addons.collab.reportMaxDepth&quot; min=&quot;1&quot; /&gt;&#xa;--&gt;&#xa;&lt;/separator&gt;&#xa;&lt;/tab&gt;&#xa;&lt;/tabbed_pane&gt;&#xa;&lt;/preferences_structure&gt;" ID="ID_873595672" CREATED="1358304692163" MODIFIED="1376131087544">
<attribute_layout NAME_WIDTH="100" VALUE_WIDTH="100"/>
</node>
</node>
<node TEXT="default.properties" POSITION="left" ID="ID_808793413" CREATED="1371158990170" MODIFIED="1376131099380">
<edge COLOR="#00ffff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      These properties play together with the preferences: Each property defined in the preferences should have a default value in the attributes of this node.
    </p>
  </body>
</html>
</richcontent>
<attribute_layout NAME_WIDTH="128" VALUE_WIDTH="213"/>
<attribute NAME="addons.collab.cvs.bin" VALUE="C:/Program Files (x86)/CVSNT/cvs.exe"/>
<attribute NAME="addons.collab.git.bin" VALUE="C:/Program Files (x86)/git/bin/git.exe"/>
<attribute NAME="addons.collab.svn.bin" VALUE="C:/Program Files/TortoiseSVN/bin/svn.exe"/>
<attribute NAME="addons.collab.verbose" VALUE="false"/>
<attribute NAME="addons.collab.quiet" VALUE="false"/>
</node>
<node TEXT="translations" POSITION="left" ID="ID_1644304879" CREATED="1371158990174" MODIFIED="1371158990178">
<edge COLOR="#ffff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The translation keys that this script uses. Define one child node per supported locale. The attributes contain the translations. Define at least 'addons.${name}' for the add-on's name.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="en" ID="ID_1232293217" CREATED="1371158990178" MODIFIED="1376308300566">
<attribute_layout NAME_WIDTH="219" VALUE_WIDTH="243"/>
<attribute NAME="addons.${name}" VALUE="Collaborative Tools"/>
<attribute NAME="addons.vcsUpdate" VALUE="Update my map"/>
<attribute NAME="addons.vcsDiff" VALUE="Compare my map"/>
<attribute NAME="addons.vcsCommit" VALUE="Commit my map"/>
<attribute NAME="addons.exportModificationsToPng" VALUE="Export recent modification to a png file"/>
<attribute NAME="main_menu_scripting/collaborativeTools" VALUE="Collaborative Tools"/>
<attribute NAME="OptionPanel.separator.${name}" VALUE="Collaborative Tools"/>
<attribute NAME="OptionPanel.addons.collab.cvs.bin" VALUE="Path to CVS"/>
<attribute NAME="OptionPanel.addons.collab.git.bin" VALUE="Path to GIT"/>
<attribute NAME="OptionPanel.addons.collab.svn.bin" VALUE="Path to SVN"/>
<attribute NAME="OptionPanel.addons.collab.verbose" VALUE="Verbose mode"/>
<attribute NAME="OptionPanel.addons.collab.quiet" VALUE="Quiet mode"/>
<attribute NAME="OptionPanel.addons.collab.reportIntervalInDays" VALUE="Days between two reports on modifications"/>
<attribute NAME="OptionPanel.addons.collab.reportMaxDepth" VALUE="Max depth of modifications reports"/>
<attribute NAME="addons.collab.commandDetails" VALUE="Command"/>
<attribute NAME="addons.collab.commandOutput" VALUE="Output"/>
<attribute NAME="addons.collab.commandErrors" VALUE="Errors"/>
<attribute NAME="addons.collab.saveMapFirst" VALUE="You should save your map first."/>
<attribute NAME="addons.collab.mapConflict" VALUE="Warning : conflict during update.\nYou must resolve it before reopening the map.\n1. Save the current map with a new name.\n2. Start a text editor and look for &quot;&lt;&lt;&lt;&quot; / &quot;&gt;&gt;&gt;&quot; in your original map file.\n3. Fix the conflict.\n\nRemember that your original map is available in your autosave directory if needed."/>
<attribute NAME="addons.collab.mapNeedsCommit" VALUE="Your map was locally modified. You should commit it."/>
<attribute NAME="addons.collab.mapDoesntNeedCommit" VALUE="Your map is already the latest version on the versionning system."/>
<attribute NAME="addons.collab.mapCommitted" VALUE="Your map has been committed into the versionning system."/>
<attribute NAME="addons.collab.mapAdded" VALUE="Your map has been added into the versionning system."/>
<attribute NAME="addons.collab.mapNeedsUpdate" VALUE="The map has been remotely modified, you should update it locally."/>
<attribute NAME="addons.collab.mapUpdated" VALUE="The map has been updated."/>
<attribute NAME="addons.collab.mapReloaded" VALUE="The map has been reloaded."/>
<attribute NAME="addons.collab.vcsReturnedNoDiff" VALUE="The versionning system returned no differences."/>
<attribute NAME="addons.collab.nothingDone" VALUE="Nothing done."/>
<attribute NAME="addons.collab.mapIsUpToDate" VALUE="Your map is up to date."/>
<attribute NAME="addons.collab.fileIsNotVersionned" VALUE="Your map is not under versionning system control."/>
<attribute NAME="addons.collab.folderIsNotVersionned" VALUE="The folder containing the map is not under versionning system control. See documentation on how to add it."/>
<attribute NAME="addons.collab.doYouWantToAddFile" VALUE="Do you want to add the file to versionning system control ?"/>
<attribute NAME="addons.collab.unknownErrorActivateVerboseMode" VALUE="Unknown error. Activate verbose mode to get more information."/>
<attribute NAME="addons.collab.mapDifferences" VALUE="Differences between your local file and the versionning system"/>
<attribute NAME="addons.collab.emptyCommitLog" VALUE="Commit aborted. A small description of your modifications is mandatory."/>
<attribute NAME="addons.collab.vcsBinNotFound" VALUE="The versionning system binary was not found, check your preferences."/>
<attribute NAME="addons.collab.vcsIs" VALUE="The versionning system is:"/>
<attribute NAME="addons.collab.commitMessage" VALUE="Please enter a comment for your modifications"/>
<attribute NAME="addons.collab.doYouWantToPush" VALUE="Do you want to push your change to the remote repository ?"/>
<attribute NAME="addons.collab.mapPushed" VALUE="Your map has been pushed to the remote repository."/>
<attribute NAME="addons.collab.notAvailableForThisVcs" VALUE="Not available for this versionning system"/>
<attribute NAME="addons.collab.vcsReturnedAnError" VALUE="The versionning system returned the following error:"/>
<attribute NAME="addons.collab.unknownFileStatus" VALUE="Unknown file status"/>
<attribute NAME="addons.collab.vcsAddFailed" VALUE="Could not add file to the versionning system."/>
<attribute NAME="addons.collab.status.mapSuccessfullyCommittedAt" VALUE="Map successfully committed at "/>
<attribute NAME="addons.collab.status.mapSuccessfullyAddedAt" VALUE="Map successfully added at "/>
<attribute NAME="addons.collab.status.mapSuccessfullyUpdatedAt" VALUE="Map successfully updated at "/>
<attribute NAME="addons.collab.status.mapSuccessfullyPushedAt" VALUE="Map successfully pushed at "/>
</node>
<node TEXT="fr" ID="ID_1204840493" CREATED="1371158990178" MODIFIED="1376308322876" HGAP="39" VSHIFT="41">
<attribute_layout NAME_WIDTH="219" VALUE_WIDTH="350"/>
<attribute NAME="addons.${name}" VALUE="Outils collaboratifs"/>
<attribute NAME="addons.vcsUpdate" VALUE="Mettre &#xe0; jour ma version"/>
<attribute NAME="addons.vcsDiff" VALUE="Comparer ma version"/>
<attribute NAME="addons.vcsCommit" VALUE="Publier ma version"/>
<attribute NAME="addons.exportModificationsToPng" VALUE="Export des derni&#xe8;res modifications dans un png"/>
<attribute NAME="main_menu_scripting/collaborativeTools" VALUE="Outils collaboratifs"/>
<attribute NAME="OptionPanel.separator.${name}" VALUE="Outils collaboratifs"/>
<attribute NAME="OptionPanel.addons.collab.cvs.bin" VALUE="Chemin vers l&apos;ex&#xe9;cutable CVS"/>
<attribute NAME="OptionPanel.addons.collab.git.bin" VALUE="Chemin vers l&apos;ex&#xe9;cutable GIT"/>
<attribute NAME="OptionPanel.addons.collab.svn.bin" VALUE="Chemin vers l&apos;ex&#xe9;cutable SVN"/>
<attribute NAME="OptionPanel.addons.collab.verbose" VALUE="Mode verbeux"/>
<attribute NAME="OptionPanel.addons.collab.quiet" VALUE="Quiet mode"/>
<attribute NAME="OptionPanel.addons.collab.reportIntervalInDays" VALUE="Jours entre deux rapports de modifications"/>
<attribute NAME="OptionPanel.addons.collab.reportMaxDepth" VALUE="Profondeur maximum pour les rapports de modifications"/>
<attribute NAME="addons.collab.commandDetails" VALUE="Commande ex&#xe9;cut&#xe9;e"/>
<attribute NAME="addons.collab.commandOutput" VALUE="R\u00E9sultat"/>
<attribute NAME="addons.collab.commandErrors" VALUE="Erreurs"/>
<attribute NAME="addons.collab.saveMapFirst" VALUE="Vous devez d&apos;abord sauvegarder votre carte."/>
<attribute NAME="addons.collab.mapConflict" VALUE="Attention : conflit durant la mise &#xe0; jour.\nVous devez le r&#xe9;soudre avant de r&#xe9;&#xe9;diter la carte.\n1. Sauvegarder la carte actuelle sous un nouveau nom.\n2. Ouvrir la carte originale avec un &#xe9;diteur de texte puis rechercher &apos;&lt;&lt;&lt;&apos; et &apos;&gt;&gt;&gt;&apos; afin de r&#xe9;gler le conflit.\n\nEn cas de gros probl&#xe8;me, la carte originale est disponible dans le r&#xe9;pertoire de sauvegarde automatique."/>
<attribute NAME="addons.collab.mapNeedsCommit" VALUE="La carte a &#xe9;t&#xe9; modifi&#xe9;e localement, vous devriez la commiter."/>
<attribute NAME="addons.collab.mapDoesntNeedCommit" VALUE="Le syst&#xe8;me de gestion de version est d&#xe9;j&#xe0; &#xe0; jour."/>
<attribute NAME="addons.collab.mapCommitted" VALUE="La carte a bien &#xe9;t&#xe9; enregistr&#xe9;e sur le syst&#xe8;me de gestion de version."/>
<attribute NAME="addons.collab.mapAdded" VALUE="La carte a &#xe9;t&#xe9; ajout&#xe9;e au syst&#xe8;me de gestion de versions."/>
<attribute NAME="addons.collab.mapNeedsUpdate" VALUE="La carte a &#xe9;t&#xe9; modifi&#xe9;e sur le syst&#xe8;me de gestion de versions, vous devriez lancer une mise &#xe0; jour."/>
<attribute NAME="addons.collab.mapUpdated" VALUE="La carte a &#xe9;t&#xe9; mise &#xe0; jour."/>
<attribute NAME="addons.collab.mapReloaded" VALUE="La carte a &#xe9;t&#xe9; recharg&#xe9;e."/>
<attribute NAME="addons.collab.vcsReturnedNoDiff" VALUE="Le syst&#xe8;me de gestion de version n&apos;a remont&#xe9; aucune diff&#xe9;rence."/>
<attribute NAME="addons.collab.nothingDone" VALUE="Aucune action r&#xe9;alis&#xe9;e."/>
<attribute NAME="addons.collab.mapIsUpToDate" VALUE="La carte est d&#xe9;j&#xe0; &#xe0; jour."/>
<attribute NAME="addons.collab.fileIsNotVersionned" VALUE="La carte n&apos;est pas g&#xe9;r&#xe9;e par le syst&#xe8;me de gestion de version."/>
<attribute NAME="addons.collab.folderIsNotVersionned" VALUE="Le r&#xe9;pertoire n&apos;est pas g&#xe9;r&#xe9; par le syst&#xe8;me de gestion de version. Consulter la documentation pourvoir comment le faire."/>
<attribute NAME="addons.collab.doYouWantToAddFile" VALUE="Voulez-vous ajouer le fichier au syst&#xe8;me de gestion de version ?"/>
<attribute NAME="addons.collab.unknownErrorActivateVerboseMode" VALUE="Erreur inconnue. Activer le mode verbeux pour avoir plus d&apos;informations."/>
<attribute NAME="addons.collab.mapDifferences" VALUE="Diff&#xe9;rences entre votre carte locale et la version du syst&#xe8;me de gestion de versions"/>
<attribute NAME="addons.collab.emptyCommitLog" VALUE="La carte n&apos;a pas &#xe9;t&#xe9; enregistr&#xe9;e dans le syst&#xe8;me de gestion de version. Une br&#xe8;ve description de vos modifications est obligatoire."/>
<attribute NAME="addons.collab.vcsBinNotFound" VALUE="L&apos;application de gestion de version n&apos;a pas &#xe9;t&#xe9; trouv&#xe9;e, corrigez le chemin dans les pr&#xe9;f&#xe9;rences."/>
<attribute NAME="addons.collab.vcsIs" VALUE="Le syst&#xe8;me de gestion de version est :"/>
<attribute NAME="addons.collab.commitMessage" VALUE="Saisir un message associ&#xe9; aux modifications r&#xe9;alis&#xe9;es"/>
<attribute NAME="addons.collab.doYouWantToPush" VALUE="Voulez vous publier vos changements sur le serveur distant ?"/>
<attribute NAME="addons.collab.mapPushed" VALUE="La carte a &#xe9;t&#xe9; publi&#xe9;e sur le serveur distant."/>
<attribute NAME="addons.collab.notAvailableForThisVcs" VALUE="Non disponible pour ce syst&#xe8;me de gestion de versions"/>
<attribute NAME="addons.collab.vcsReturnedAnError" VALUE="Le syst&#xe8;me de gestion de versions a retourn&#xe9; l&apos;erreur suivante :"/>
<attribute NAME="addons.collab.unknownFileStatus" VALUE="Statut de fichier inconnu"/>
<attribute NAME="addons.collab.vcsAddFailed" VALUE="L&apos;ajoutdu fichier au syst&#xe8;me de gestion de version a &#xe9;chou&#xe9;."/>
<attribute NAME="addons.collab.status.mapSuccessfullyCommittedAt" VALUE="Carte publi&#xe9;e avec succ&#xe8;s &#xe0; "/>
<attribute NAME="addons.collab.status.mapSuccessfullyAddedAt" VALUE="Carte ajout&#xe9;e avec succ&#xe8;s &#xe0;"/>
<attribute NAME="addons.collab.status.mapSuccessfullyUpdatedAt" VALUE="Carte mise &#xe0; jour avec succ&#xe8;s &#xe0; "/>
<attribute NAME="addons.collab.status.mapSuccessfullyPushedAt" VALUE="Carte publi&#xe9;e &#xe0; distance avec succ&#xe8;s &#xe0; "/>
</node>
</node>
<node TEXT="deinstall" POSITION="left" ID="ID_1936073781" CREATED="1371158990182" MODIFIED="1371209683326">
<edge COLOR="#7c0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      List of files and/or directories to remove on deinstall
    </p>
  </body>
</html>
</richcontent>
<attribute_layout NAME_WIDTH="38" VALUE_WIDTH="256"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}.script.xml"/>
<attribute NAME="delete" VALUE="${installationbase}/scripts/vcsUpdate.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/scripts/vcsCommit.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/scripts/vcsDiff.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/scripts/exportModificationsToPng.groovy"/>
</node>
<node TEXT="scripts" POSITION="right" ID="ID_1701226725" CREATED="1371158990190" MODIFIED="1371158990199">
<edge COLOR="#00007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain multiple scripts. The node text defines the script name (e.g. inserInlineImage.groovy). Its properties have to be configured via attributes:
    </p>
    <p>
      
    </p>
    <p>
      * menuLocation: &lt;locationkey&gt;
    </p>
    <p>
      &#160;&#160;&#160;- Defines where the menu location.
    </p>
    <p>
      &#160;&#160;&#160;-&#160;See mindmapmodemenu.xml for how the menu locations look like.
    </p>
    <p>
      &#160;&#160;&#160;- http://freeplane.bzr.sf.net/bzr/freeplane/freeplane_program/trunk/annotate/head%3A/freeplane/resources/xml/mindmapmodemenu.xml
    </p>
    <p>
      &#160;&#160;&#160;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * menuTitleKey: &lt;key&gt;
    </p>
    <p>
      &#160;&#160;&#160;- The menu item title will be looked up under the translation key &lt;key&gt; - don't forget to define its translation.
    </p>
    <p>
      &#160;&#160;&#160;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * executionMode: &lt;mode&gt;
    </p>
    <p>
      &#160;&#160;&#160;- The execution mode as described in the Freeplane wiki (http://freeplane.sourceforge.net/wiki/index.php/Scripting)
    </p>
    <p>
      &#160;&#160;&#160;- ON_SINGLE_NODE: Execute the script once. The <i>node</i>&#160;variable is set to the selected node.
    </p>
    <p>
      &#160;&#160;&#160;- ON_SELECTED_NODE: Execute the script n times for n selected nodes, once for each node.
    </p>
    <p>
      &#160;&#160;&#160;- ON_SELECTED_NODE_RECURSIVELY: Execute the script on every selected node and recursively on all of its children.
    </p>
    <p>
      &#160;&#160;&#160;- In doubt use ON_SINGLE_NODE.
    </p>
    <p>
      &#160;&#160;&#160;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * keyboardShortcut: &lt;shortcut&gt;
    </p>
    <p>
      &#160;&#160;&#160;- Optional: keyboard combination / accelerator for this script, e.g. control alt I
    </p>
    <p>
      &#160;&#160;&#160;- Use lowercase letters for modifiers and uppercase for letters. Use no + signs.
    </p>
    <p>
      &#160;&#160;&#160;- The available key names are listed at http://download.oracle.com/javase/1.4.2/docs/api/java/awt/event/KeyEvent.html#VK_0
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;In the list only entries with a 'VK_' prefix count. Omit the prefix in the shortcut definition.
    </p>
    <p>
      
    </p>
    <p>
      * Permissions&#160;that the script(s) require, each either false or true:
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_asking
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_file_restriction: permission to read files
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_write_restriction: permission to create/change/delete files
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_exec_restriction: permission to execute other programs
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_network_restriction: permission to access the network
    </p>
    <p>
      &#160;&#160;Notes:
    </p>
    <p>
      &#160;&#160;- The set of permissions is fixed.
    </p>
    <p>
      &#160;&#160;- Don't change the attribute names, don't omit one.
    </p>
    <p>
      &#160;&#160;- Set the values either to true or to false
    </p>
    <p>
      &#160;&#160;- In any case set execute_scripts_without_asking to true unless you want to annoy users.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="vcsDiff.groovy" ID="ID_1800529420" CREATED="1323057833226" MODIFIED="1371191235595" HGAP="30">
<attribute_layout NAME_WIDTH="275" VALUE_WIDTH="212"/>
<attribute NAME="menuTitleKey" VALUE="addons.vcsDiff"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/collaborativeTools"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="F10"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="vcsUpdate.groovy" ID="ID_875504923" CREATED="1323057833226" MODIFIED="1371191243457" HGAP="30">
<attribute_layout NAME_WIDTH="275" VALUE_WIDTH="212"/>
<attribute NAME="menuTitleKey" VALUE="addons.vcsUpdate"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/collaborativeTools"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="F11"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
<node TEXT="vcsCommit.groovy" ID="ID_968067350" CREATED="1323057833226" MODIFIED="1371191248495" HGAP="30">
<attribute_layout NAME_WIDTH="275" VALUE_WIDTH="212"/>
<attribute NAME="menuTitleKey" VALUE="addons.vcsCommit"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/collaborativeTools"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="F12"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
</node>
<node TEXT="oldscripts" POSITION="right" ID="ID_467301098" CREATED="1373100238624" MODIFIED="1373100244290">
<edge COLOR="#00ffff"/>
<node TEXT="exportModificationsToPng.groovy" ID="ID_656180329" CREATED="1323057833226" MODIFIED="1372802812897" HGAP="30">
<attribute_layout NAME_WIDTH="275" VALUE_WIDTH="212"/>
<attribute NAME="menuTitleKey" VALUE="addons.exportModificationsToPng"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/collaborativeTools/extra"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
</node>
<node TEXT="zips" POSITION="right" ID="ID_1581881883" CREATED="1371158990204" MODIFIED="1371158990210">
<edge COLOR="#007c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing zip files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The immediate child nodes contain a description of the zip. The devtools script releaseAddOn.groovy allows automatic zip creation if the name of this node matches a directory in the current directory.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The child nodes of these nodes contain the actual zip files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- Any zip file will be extracted in the &lt;installationbase&gt;. Currently, &lt;installationbase&gt; is always Freeplane's &lt;userhome&gt;, e.g. ~/.freeplane/1.2.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The files will be processed in the sequence as seen in the map.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- Zip files must be uploaded into the map via the script <i>Tools-&gt;Scripts-&gt;Insert Binary</i>&#160;since they have to be (base64) encoded as simple strings.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="images" POSITION="right" ID="ID_1179966285" CREATED="1371158990211" MODIFIED="1371921843123">
<edge COLOR="#7c007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may define any number of images as child nodes of the images node. The actual image data has to be placed as base64 encoded binary data into the text of a subnode.
    </p>
    <p>
      The images are saved to the <i>${installationbase}/resources/images</i>&#160;directory.
    </p>
    <p>
      
    </p>
    <p>
      The following images should be present:
    </p>
    <ul>
      <li>
        <i>${name}.png</i>, like <i>oldicons-theme.png</i>. This will be used in the app-on details dialog.
      </li>
      <li>
        <i>${name}-icon.png</i>, like <i>oldicons-theme-icon.png</i>. This will be used in the app-on overview.
      </li>
    </ul>
    <p>
      Images can be added automatically by releaseAddOn.groovy or must be uploaded into the map via the script <i>Tools-&gt;Scripts-&gt;Insert Binary</i>&#160;since they have to be (base64) encoded as simple strings.
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Icon based on http://www.iconfinder.com/icondetails/132550/24/bee_icon
    </p>
    <p>
      by&#160;&#160;Aha-Soft - http://www.aha-soft.com/
    </p>
  </body>
</html>
</richcontent>
<node TEXT="${name}.png" ID="ID_473909841" CREATED="1357854883609" MODIFIED="1357866785018">
<attribute_layout NAME_WIDTH="100" VALUE_WIDTH="100"/>
</node>
<node TEXT="${name}-icon.png" ID="ID_1117040601" CREATED="1357853471253" MODIFIED="1357866788268">
<attribute_layout NAME_WIDTH="100" VALUE_WIDTH="100"/>
</node>
</node>
<node TEXT="tests cases" POSITION="right" ID="ID_1381937559" CREATED="1372763636070" MODIFIED="1372893218179">
<edge COLOR="#ff0000"/>
<node TEXT="update" ID="ID_186507927" CREATED="1372763650126" MODIFIED="1372763655187">
<node TEXT="in unversionned folder" ID="ID_1699254025" CREATED="1372893155461" MODIFIED="1372893165140"/>
<node TEXT="on unversionned file" ID="ID_1422517405" CREATED="1372893146214" MODIFIED="1372893172147"/>
<node TEXT="on versionned file" ID="ID_820936689" CREATED="1372893166530" MODIFIED="1372893170384">
<node TEXT="with no update" ID="ID_1096878495" CREATED="1372893176592" MODIFIED="1372893181023"/>
<node TEXT="with local updates" ID="ID_1920314941" CREATED="1372893181314" MODIFIED="1372893186957"/>
<node TEXT="with remote updates" ID="ID_1907389627" CREATED="1372893187218" MODIFIED="1372893190737"/>
<node TEXT="with conflicts" ID="ID_192587718" CREATED="1372893190989" MODIFIED="1372893193824"/>
</node>
</node>
<node TEXT="diff" ID="ID_48729850" CREATED="1372763655462" MODIFIED="1372893196608"/>
<node TEXT="commit" ID="ID_72776484" CREATED="1372763657150" MODIFIED="1372763658307">
<node TEXT="folder is not under cvs control" ID="ID_1657164275" CREATED="1372763658854" MODIFIED="1372763671860"/>
<node TEXT="file is not added" ID="ID_1628728639" CREATED="1372763674007" MODIFIED="1372763681316"/>
</node>
</node>
<node TEXT="development guidelines" POSITION="right" ID="ID_1445578454" CREATED="1373404569334" MODIFIED="1373404578893">
<edge COLOR="#ffff00"/>
<node TEXT="architecture" ID="ID_1967794215" CREATED="1373404581226" MODIFIED="1373404584023">
<node TEXT="svn" ID="ID_1724755892" CREATED="1373404585002" MODIFIED="1373404586678">
<node TEXT="status" ID="ID_112455668" CREATED="1373404659665" MODIFIED="1373404661076">
<node TEXT="exit 0" ID="ID_96700127" CREATED="1373404676487" MODIFIED="1373404678284"/>
<node TEXT="exit 1" ID="ID_363088385" CREATED="1373404678521" MODIFIED="1373404680037"/>
</node>
<node TEXT="update" ID="ID_1344366366" CREATED="1373404594507" MODIFIED="1373404596425">
<node TEXT="status" ID="ID_131366302" CREATED="1373404694018" MODIFIED="1373404699655">
<node TEXT="modified" ID="ID_575997751" CREATED="1373404700758" MODIFIED="1373404702646"/>
<node TEXT="needsPatch" ID="ID_244691856" CREATED="1373404703213" MODIFIED="1373404724015"/>
<node TEXT="upToDate" ID="ID_1531144457" CREATED="1373404707698" MODIFIED="1373404714069"/>
<node TEXT="unkown" ID="ID_1450433353" CREATED="1373404731460" MODIFIED="1373404734435"/>
</node>
<node TEXT="exit 0" ID="ID_1178524905" CREATED="1373404621594" MODIFIED="1373404624667"/>
<node TEXT="exit 1" ID="ID_1404770303" CREATED="1373404625053" MODIFIED="1373404626920"/>
</node>
<node TEXT="diff" ID="ID_1265313586" CREATED="1373404596661" MODIFIED="1373404597839">
<node TEXT="exit 0" ID="ID_628362289" CREATED="1373404628594" MODIFIED="1373404630551"/>
<node TEXT="exit 1" ID="ID_604826466" CREATED="1373404630798" MODIFIED="1373404632240"/>
</node>
<node TEXT="commit" ID="ID_796283311" CREATED="1373404599588" MODIFIED="1373404600816">
<node TEXT="exit 0" ID="ID_470031494" CREATED="1373404633728" MODIFIED="1373404635354"/>
<node TEXT="exit 1" ID="ID_1342303313" CREATED="1373404635633" MODIFIED="1373404637125"/>
</node>
</node>
<node TEXT="git" ID="ID_1827537638" CREATED="1373404586952" MODIFIED="1373404587684">
<node TEXT="update" ID="ID_1132473995" CREATED="1373404607159" MODIFIED="1373404609332"/>
<node TEXT="diff" ID="ID_963205873" CREATED="1373404609554" MODIFIED="1373404610625"/>
<node TEXT="commit" ID="ID_105212705" CREATED="1373404610872" MODIFIED="1373404612259"/>
</node>
<node TEXT="cvs" ID="ID_548079664" CREATED="1373404587981" MODIFIED="1373404588899">
<node TEXT="update" ID="ID_1454720538" CREATED="1373404614337" MODIFIED="1373404616280"/>
<node TEXT="diff" ID="ID_1205225717" CREATED="1373404616552" MODIFIED="1373404617379"/>
<node TEXT="commit" ID="ID_1877529582" CREATED="1373404617740" MODIFIED="1373404618997"/>
</node>
<node TEXT="class vcs" ID="ID_1529892284" CREATED="1373404753848" MODIFIED="1373404758542">
<node TEXT="status" ID="ID_1108807476" CREATED="1373404760046" MODIFIED="1373404761699"/>
<node TEXT="update" ID="ID_1260297533" CREATED="1373404762006" MODIFIED="1373404763693"/>
<node TEXT="diff" ID="ID_1230055334" CREATED="1373404763955" MODIFIED="1373404765006"/>
<node TEXT="commit" ID="ID_181033268" CREATED="1373404765368" MODIFIED="1373404766934"/>
</node>
</node>
</node>
<node TEXT="test stories" POSITION="right" ID="ID_212617199" CREATED="1372893294383" MODIFIED="1372893312618">
<edge COLOR="#0000ff"/>
<node TEXT="all stories" ID="ID_1612308925" CREATED="1373058630310" MODIFIED="1373058633160">
<node TEXT="test without verbose mode" ID="ID_1414687082" CREATED="1373058635114" MODIFIED="1373058640850"/>
</node>
<node TEXT="cvs" ID="ID_153083210" CREATED="1373646126581" MODIFIED="1373646152411">
<node TEXT="copy /test cvs/" ID="ID_1822485255" CREATED="1373646227790" MODIFIED="1373646238594">
<node TEXT="no check" ID="ID_630199941" CREATED="1373646282764" MODIFIED="1373646286542"/>
</node>
<node TEXT="open cvs/test" ID="ID_1273396501" CREATED="1373646243669" MODIFIED="1373646256372">
<node TEXT="no check" ID="ID_1307516298" CREATED="1373646287886" MODIFIED="1373646289872"/>
</node>
<node TEXT="click on &quot;Compare&quot;" ID="ID_267920834" CREATED="1373646258045" MODIFIED="1373646267632">
<node TEXT="check prompt" ID="ID_649252386" CREATED="1373646298807" MODIFIED="1373646302717"/>
</node>
<node TEXT="prompt to add" ID="ID_1946210649" CREATED="1373646209914" MODIFIED="1373646213120"/>
<node TEXT="click no" ID="ID_6108145" CREATED="1373646215963" MODIFIED="1373646311440"/>
<node TEXT="check error" ID="ID_51526491" CREATED="1373646323179" MODIFIED="1373646328464"/>
<node TEXT="click ok" ID="ID_801499395" CREATED="1373646329679" MODIFIED="1373646331345"/>
<node TEXT="check back to map" ID="ID_1088028290" CREATED="1373646331667" MODIFIED="1373646337367"/>
<node TEXT="check file" ID="ID_105425515" CREATED="1373646388216" MODIFIED="1373646390395"/>
</node>
<node TEXT="story 1" ID="ID_399257598" CREATED="1372893370416" MODIFIED="1372893397235">
<node TEXT="open a map in a non versionned folder" ID="ID_1676687015" CREATED="1372893339000" MODIFIED="1372893346334"/>
<node TEXT="try F10/F11/F2" ID="ID_554720570" CREATED="1372893346871" MODIFIED="1372893352533"/>
<node TEXT="it should return the same error (folder not versionned" ID="ID_476269879" CREATED="1372893353090" MODIFIED="1372893365410"/>
</node>
<node TEXT="story 2" ID="ID_1579938296" CREATED="1372893397601" MODIFIED="1372893399837">
<node TEXT="create a new file in a non versionned folder" ID="ID_1906276285" CREATED="1372893402081" MODIFIED="1372893412058"/>
<node TEXT="try diff (F10)" ID="ID_1734649467" CREATED="1372893413544" MODIFIED="1372893432507">
<node TEXT="should prompt to add file" ID="ID_586877127" CREATED="1372893435840" MODIFIED="1372893448400"/>
<node TEXT="answer no" ID="ID_1328012596" CREATED="1372893448812" MODIFIED="1372893451382"/>
</node>
<node TEXT="try update (F11)" ID="ID_1578449381" CREATED="1372893452288" MODIFIED="1372893456319">
<node TEXT="should notice that the file is not versionned" ID="ID_1924465643" CREATED="1372893457323" MODIFIED="1372893466120"/>
</node>
<node TEXT="try commit (12)" ID="ID_1996708600" CREATED="1372893467256" MODIFIED="1372893472559">
<node TEXT="should prompt to add file" ID="ID_1817406543" CREATED="1372893473807" MODIFIED="1372893478934"/>
<node TEXT="answer no" ID="ID_1269442827" CREATED="1372893479221" MODIFIED="1372893500710"/>
</node>
</node>
<node TEXT="story 3" ID="ID_1737762175" CREATED="1372893527099" MODIFIED="1372893529031">
<node TEXT="worked on a versionned file synced with the vcs" ID="ID_161147580" CREATED="1372893530325" MODIFIED="1372893562916"/>
<node TEXT="try diff (F10)" ID="ID_1706334943" CREATED="1372893567855" MODIFIED="1372893574312">
<node TEXT="should notice &quot;no diff&quot;" ID="ID_1227094229" CREATED="1372893575252" MODIFIED="1372893582945"/>
</node>
<node TEXT="try update (F11)" ID="ID_428180929" CREATED="1372893583961" MODIFIED="1372893592002">
<node TEXT="should notice &quot;up to date&quot;" ID="ID_476690224" CREATED="1372893592962" MODIFIED="1372893598572"/>
</node>
<node TEXT="try commit (F12)" ID="ID_1437714408" CREATED="1372893599528" MODIFIED="1372893604200">
<node TEXT="should notice &quot;already the latest&quot;" ID="ID_1688308708" CREATED="1372893605107" MODIFIED="1372893616525"/>
</node>
<node TEXT="edit map (don&apos;t save it)" ID="ID_916992240" CREATED="1372893636502" MODIFIED="1372893644718"/>
<node TEXT="try diff / update / commit" ID="ID_1017160266" CREATED="1372893645289" MODIFIED="1372893651353">
<node TEXT="should warn to save file first" ID="ID_669956515" CREATED="1372893652198" MODIFIED="1372893665011"/>
</node>
<node TEXT="save file" ID="ID_928461374" CREATED="1372893666822" MODIFIED="1372893668488"/>
<node TEXT="try diff / update / commit" ID="ID_466250468" CREATED="1372893669560" MODIFIED="1372893675039"/>
</node>
<node TEXT="story 4" ID="ID_1680912399" CREATED="1373058278602" MODIFIED="1373058284083">
<node TEXT="story 1 with git" ID="ID_1725522395" CREATED="1373058287241" MODIFIED="1373058316005"/>
</node>
<node TEXT="story 5" ID="ID_419476402" CREATED="1373058317275" MODIFIED="1373058319612">
<node TEXT="story 2 with git" ID="ID_217045485" CREATED="1373058320791" MODIFIED="1373058330499"/>
</node>
<node TEXT="story 6" ID="ID_1315742971" CREATED="1373058331360" MODIFIED="1373058333861">
<node TEXT="story 3 with git without push" ID="ID_1448109966" CREATED="1373058335035" MODIFIED="1373058342829"/>
</node>
<node TEXT="story 7" ID="ID_1663344379" CREATED="1373058473641" MODIFIED="1373058475847">
<node TEXT="story 3 with git with push" ID="ID_575776107" CREATED="1373058476782" MODIFIED="1373058483982"/>
</node>
</node>
<node TEXT="todo" POSITION="right" ID="ID_332791607" CREATED="1373646062559" MODIFIED="1373646064080">
<edge COLOR="#7c0000"/>
<node TEXT="automate tests" ID="ID_1391118394" CREATED="1373646065059" MODIFIED="1373646071834">
<node TEXT="automate interactive tests under windows" ID="ID_1494461386" CREATED="1373646413510" MODIFIED="1373646421381"/>
<node TEXT="execute command line actions" ID="ID_1478875447" CREATED="1373646349540" MODIFIED="1373646355618"/>
<node TEXT="check popup message" ID="ID_975945300" CREATED="1373646357133" MODIFIED="1373646366578"/>
<node TEXT="check files" ID="ID_823769011" CREATED="1373646378353" MODIFIED="1373646380383"/>
</node>
</node>
</node>
</map>
