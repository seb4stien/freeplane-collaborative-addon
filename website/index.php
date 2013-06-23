<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<?
$l = "";
if ($_GET['l'] == "fr") {
	$l = "fr";
}
?>

<html>
<head>
<title>
<?
if ($l == "fr") {
echo "freeplane : outils collaboratifs";
} else {
echo "freeplane : collaborative tools";
}
?>
</title>
<meta name="description" content="freeplane mind mapping tool addon to support versionning and collaborative work">
<meta name="robots" content="index,follow,noarchive">
<link rel="stylesheet" href="css/web.css">
</head>

<body>
<div class="header">
<span class="title"><img src="img/icon.png" />
<?
if ($l == "fr") {
echo "freeplanne : outils <strong>collaboratifs</strong>"; 
} else {
echo "freeplane <strong>collaborative</strong> tools</span>";
}
?>
</span>
<span class="lang"><a href="index.php?l=fr">français</a> | <a href="index.php?l=en">english</a></span>
</div>

<div class="body">

<?
if ($l == "fr"){
?>
<p><a href="http://freeplane.sourceforge.net">Freeplane</a> est une application de mind mapping (carte heuristiques).</p>
<p>Ce greffon apporte le support de gestion de versions permettant ainsi de travailler à plusieurs sur une seule carte.</p>
<p>Il support actuellement les opérations de diff/update/commit de cvs.</p>

<? } else { ?>
<p><a href="http://freeplane.sourceforge.net">Freeplane</a> in an application for mind mapping.</p>
<p>This addon brings versionning control to freeplane enabling team working on a single mindmap.</p>
<p>Currently supports diff/update/commit operations on a map via cvs.</p>
<? } ?>

<h1>
<?
if ($l == "fr") {
echo "sources et téléchargement";
} else {
echo "sources and download";
}
?>
</h1>

<ul>
<?
if ($l == "fr") {
?>
<li>Dernières version en téléchargement sur <a href="https://sourceforge.net/projects/freeplanecollab/files/">sourceforge</a></li>
<li>Sources disponibles sur <a href="https://github.com/seb4stien/freeplane-collaborative-addon">github</a></li>
<?
} else {
?>
<li>Latest relases can be found on <a href="https://sourceforge.net/projects/freeplanecollab/files/">sourceforge</a></li>
<li>Sources can be found on <a href="https://github.com/seb4stien/freeplane-collaborative-addon">github</a></li>
<?
}
?>
</ul>

<!-- documentation -->
<?
if ($l == "fr") {
?>
<h1>documentation</h1>
<?
} else {
?>
<h1>documentation</h1>
<?
}
?>

<?
if ($l == "fr") {
?>
<h2>installation</h2>

<ol>
<li>Télécharger la dernière version ici : <a href="https://sourceforge.net/projects/freeplanecollab/files/">https://sourceforge.net/projects/freeplanecollab/files/</a></li>
<li>Ouvrir le fichier avec freeplane <br/> <img src="doc/screenshots/addon-download.png" alt="addon download" /></li>
<li>Choisir d'installer le addon <br /> <img src="doc/screenshots/addon-install.png" alt="addon installation" /></li>
<li>Confirmer l'installation <br /> <img src="doc/screenshots/addon-install-2.png" alt="addon installation confirmation" /></li>
<li>Accepter la licence <br /> <img src="doc/screenshots/addon-install-3.png" alt="accepter la license" /></li>
<li>Redémarrer freeplane une fois l'installation terminée <br /> <img src="doc/screenshots/addon-install-4.png" alt="redémarrer freeplane" /></li>
</ol>

Après l'installation on retrouve le addon
<ul>
<li>dans la liste des addons installés <br/> <img src="doc/screenshots/addon-install-5.png" width="600px" alt="vérifier l'installation" /></li>
<li>dans les menus <br /> <img src="doc/screenshots/addon-installed-menu.png" alt="menus installés" /></li>
<li>dans les raccourcis <br /> <img src="doc/screenshots/addon-installed-shortcuts.png" alt="raccourcis" /></li>
</ul>

<?
} else {
?>
<h2>installation</h2>

<h2>installation</h2>

<ol>
<li>Donwload the latest version : <a href="https://sourceforge.net/projects/freeplanecollab/files/">https://sourceforge.net/projects/freeplanecollab/files/</a></li>
<li>Open it with freeplane <br/> <img src="doc/screenshots/addon-download.png" alt="addon download" /></li>
<li>Choose to install it <br /> <img src="doc/screenshots/addon-install.png" alt="addon installation" /></li>
<li>Confirm installation <br /> <img src="doc/screenshots/addon-install-2.png" alt="addon installation confirmation" /></li>
<li>Accept the license <br /> <img src="doc/screenshots/addon-install-3.png" alt="accepter la license" /></li>
<li>Restart freeplane <br /> <img src="doc/screenshots/addon-install-4.png" alt="redémarrer freeplane" /></li>
</ol>

<?
}
?>


<?
if ($l == "fr"){
?>
<h2>utilisation</h2>

<p>
Une fois l'addon installé les commandes peuvent être utilisée via les menus :<br />
<img src="doc/screenshots/addon-installed-menu.png" alt="menus installés" />
</p>

<p>
Ou bien via les raccourcis :<br />
<img src="doc/screenshots/addon-installed-shortcuts.png" alt="raccourcis" />
</p>

<? } else { ?>

<h2>usage</h2>

<p>
Once installed, the script are available under the "tools" menu :<br />
<img src="doc/screenshots/addon-installed-menu.png" alt="menus installés" />
</p>

<p>
Or directrly through the hot keys :<br />
<img src="doc/screenshots/addon-installed-shortcuts.png" alt="raccourcis" />
</p>


<? } ?>


<?
if ($l == "fr"){
?>
<h2>désinstallation</h2>

Le addon peut être déinstallé via le menu "Outils > Addons" : <br />
<img src="doc/screenshots/addon-install-5.png" width="600px" alt="vérifier l'installation" />


<? } else { ?>
<h2>uninstall</h2>

The addon can be uninstalled under "Tools > addons" : <br />
<img src="doc/screenshots/addon-install-5.png" width="600px" alt="vérifier l'installation" />

<? } ?>



</div>

<div class="footer">
<? if ($l == "fr") { echo "auteur :"; } else {echo "author:";} ?> <a href="http://sebastien.georget.name/">Sébastien Georget</a>
</div>

<?
/*
<?
if ($l == "fr"){
?>

<? } else { ?>

<? } ?>
*/
?>


</body>
</html>