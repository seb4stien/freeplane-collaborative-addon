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
if ($l == "fr"){
?>
freeplane : outils collaboratifs";
<? } else { ?>
freeplane : collaborative tools
<? } ?>
</title>
<meta name="description" content="freeplane mind mapping tool addon to support versionning and collaborative work">
<meta name="robots" content="index,follow,noarchive">
<link rel="stylesheet" href="css/web.css">

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-41956480-1', 'sourceforge.net');
  ga('send', 'pageview');

</script>

</head>

<body>
<div class="header">
<span class="title"><img src="img/icon.png" />
<? if ($l == "fr"){ ?>
freeplanne : outils <strong>collaboratifs</strong>
<? } else { ?>
freeplane <strong>collaborative</strong> tools
<? } ?>
</span>
<span class="lang"><a href="index.php?l=fr">français</a> | <a href="index.php?l=en">english</a></span>
</div>

<div class="menu">
<? if ($l == "fr"){ ?>
<a href="#intro">intro</a> | <a href="#download">téléchargement</a> | <a href="#documentation">documentation</a> | <a href="#contact">contact</a>
<? } else { ?>
<a href="#intro">home</a> | <a href="#download">download</a> | <a href="#documentation">documentation</a> | <a href="#contact">contact</a>
<? } ?>
</div>

<div class="body" id="intro">

<?
if ($l == "fr"){
?>
<p><a href="http://freeplane.sourceforge.net">Freeplane</a> est une application de mind mapping (carte heuristiques).</p>
<p>Ce greffon apporte le support de gestion de versions ce qui peut être utile:
<ul>
<li>pour versionner ses cartes heuristiques importantes</li>
<li>travailler à plusieurs sur une seule carte</li>
</ul></p>
<p>Il supporte actuellement les opérations de diff/update/commit de cvs.</p>

<? } else { ?>
<p><a href="http://freeplane.sourceforge.net">Freeplane</a> in an application for mind mapping.</p>
<p>This addon brings versionning control to freeplane enabling:
<ul>
<li>versionning of mindmaps</li>
<li>team working on a single mindmap</li>
</ul>
</p>

<p>It currently supports diff/update/commit operations on a map via cvs.</p>
<? } ?>

<h1 id="download">
<? if ($l == "fr"){ ?>
sources et téléchargement
<? } else { ?>
sources and download
<? } ?>
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
<li>Latest release can be found on <a href="https://sourceforge.net/projects/freeplanecollab/files/">sourceforge</a></li>
<li>Sources can be found on <a href="https://github.com/seb4stien/freeplane-collaborative-addon">github</a></li>
<?
}
?>
</ul>

<!-- documentation -->
<?
if ($l == "fr") {
?>
<h1 id="documentation">documentation</h1>

<ul>
	<li><a href="#install">installation</a></li>
	<li><a href="#use">utilisation</a></li>
	<li><a href="#uninstall">désinstallation</a></li>
</ul>
<?
} else {
?>
<h1 id="documentation">documentation</h1>

<ul>
	<li><a href="#install">install</a></li>
	<li><a href="#use">use</a></li>
	<li><a href="#uninstall">uninstall</a></li>
</ul>
<?
}
?>

<?
if ($l == "fr") {
?>
<h2 id="install">installation</h2>

<div class="warning">
Important : ce addon nécessite d'avoir un système de gestion de version d'installé sur son ordinateur. Aujourd'hui seul CVS est supporté.
</div>

<ol>
<li>Télécharger la dernière version ici : <a href="https://sourceforge.net/projects/freeplanecollab/files/">https://sourceforge.net/projects/freeplanecollab/files/</a></li>
<li>Ouvrir le fichier avec freeplane <br/> <img src="doc/screenshots/addon-download.png" alt="addon download" /></li>
<li>Choisir d'installer le addon <br /> <img src="doc/screenshots/addon-install.png" alt="addon installation" /></li>
<li>Confirmer l'installation <br /> <img src="doc/screenshots/addon-install-2.png" width="600" alt="addon installation confirmation" /></li>
<li>Accepter la licence <br /> <img src="doc/screenshots/addon-install-3.png" alt="accepter la license" /></li>
<li>Redémarrer freeplane une fois l'installation terminée <br /> <img src="doc/screenshots/addon-install-4.png" alt="redémarrer freeplane" /></li>
<li>Paramétrer l'addon en allant dans <i>Outils > Préférences</i>, puis dans <i>Plugins</i> <br />
	<img src="doc/screenshots/addon-configure.png" alt="configurer" /> <br />
	<img src="doc/screenshots/addon-configure-2.png" alt="configurer" width="600" /> <br />
</i>	
</ol>


<?
} else {
?>
<h2 id="install">installation</h2>


<div class="warning">
Important : this addon requires a working versionning control system. Currently only cvs is supported.
</div>

<ol>
<li>Donwload the latest version : <a href="https://sourceforge.net/projects/freeplanecollab/files/">https://sourceforge.net/projects/freeplanecollab/files/</a></li>
<li>Open it with freeplane <br/> <img src="doc/screenshots/addon-download.png" alt="addon download" /></li>
<li>Choose to install it <br /> <img src="doc/screenshots/addon-install.png" alt="addon installation" /></li>
<li>Confirm installation <br /> <img src="doc/screenshots/addon-install-2.png" width="600" alt="addon installation confirmation" /></li>
<li>Accept the license <br /> <img src="doc/screenshots/addon-install-3.png" alt="accepter la license" /></li>
<li>Restart freeplane <br /> <img src="doc/screenshots/addon-install-4.png" alt="redémarrer freeplane" /></li>
<li>Configure the addon under <i>Tools > Preferences</i>, then <i>Plugins</i> <br />
	<img src="doc/screenshots/addon-configure.png" alt="configure" /> <br />
	<img src="doc/screenshots/addon-configure-2.png" alt="configure" width="600" /> <br />
</i>	
</ol>

<?
}
?>


<?
if ($l == "fr"){
?>
<h2 id="use">utilisation</h2>

<p>
Une fois l'addon installé les commandes peuvent être utilisée via les menus :<br />
<img src="doc/screenshots/addon-installed-menu.png" alt="menus installés" />
</p>

<p>
Ou bien via les raccourcis :<br />
<img src="doc/screenshots/addon-installed-shortcuts.png" alt="raccourcis" />
</p>

<? } else { ?>

<h2 id="use">usage</h2>

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
<h2 id="uninstall">désinstallation</h2>

Le addon peut être déinstallé via le menu "Outils > Addons" : <br />
<img src="doc/screenshots/addon-install-5.png" width="600" alt="vérifier l'installation" />


<? } else { ?>
<h2 id="uninstall">uninstall</h2>

The addon can be uninstalled under "Tools > addons" : <br />
<img src="doc/screenshots/addon-install-5.png" width="600" alt="vérifier l'installation" />

<? } ?>

<h1 id="contact">contact</h1>
<script type="text/javascript">
function displayMail(mail, domain)
{
  document.write('<a href="mailto:' + mail + '.2013@' + domain + '">' + mail+'.2013'+'@'+domain + '</a>');
}
</script>

<? if ($l == "fr"){ ?>
Les retours d'expérience sont les bienvenus, soit par l'intermédiaire du <a href="https://github.com/seb4stien/freeplane-collaborative-addon/issues?state=open">tracker</a>, soit par mail :
<? } else { ?>
Feedbacks are welcome either by the <a href="https://github.com/seb4stien/freeplane-collaborative-addon/issues?state=open">issue tracker</a> or by mail :
<? } ?>
<script type="text/javascript">displayMail('seb', 'georget.name');</script>

<br />

</div>

<div class="footer">
<? if ($l == "fr") { echo "auteur :"; } else {echo "author:";} ?> <a href="http://sebastien.georget.name/">Sébastien Georget</a>
</div>

<!-- 
<?
/*
<? if ($l == "fr"){ ?>

<? } else { ?>

<? } ?>
*/
?>
-->


</body>
</html>