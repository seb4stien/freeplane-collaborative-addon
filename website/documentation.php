<?
$page="documentation";
include("lib/header.inc.php");
?>

<!-- TOC -->
<br />
<? if ($l == "fr") { ?>
<b>Table des matières</b>
<ul>
<li>
	freeplane-collaborative-tools
	<ul>
		<li><a href="#videos">vidéos</a></li>
		<li><a href="#install">installation</a></li>
		<li><a href="#configure">configuration</a></li>
		<li><a href="#use">utilisation</a></li>
		<li><a href="#uninstall">désinstallation</a></li>
	</ul>
</li>
<li>
	svn
	<ul>
		<li><a href="/<?= $l ?>/svn.html">installer et utiliser svn</a></li>
	</ul>
</li>
<? } else { ?>
<b>Table of content</b>
<ul>
<li>
	freeplane-collaborative-tools
	<ul>
		<li><a href="#videos">videos</a></li>
		<li><a href="#install">install</a></li>
		<li><a href="#configure">configuration</a></li>
		<li><a href="#use">use</a></li>
		<li><a href="#uninstall">uninstall</a></li>
	</ul>
<li>
	svn
	<ul>
		<li><a href="/<?= $l ?>/svn.html">how to install and use svn</a></li>
	</ul>
</li>
</ul>
<? } ?>

<!-- Install -->
<? if ($l == "fr") { ?>
<h1 id="install">vidéos</h1>
<? } else { ?>
<h1 id="install">videos</h1>
<? } ?>

<iframe src="http://www.youtube.com/embed/videoseries?list=PLM-LYMrurBhIrsE4wVTq1xZr-oU8dLFVB&showinfo=1" 
width="100%" height="500" frameborder="0"></iframe>

<!-- Install -->
<? if ($l == "fr") { ?>
<h1 id="install">installation</h1>

<div class="warning">
Important : ce addon nécessite d'avoir un système de gestion de version d'installé sur son ordinateur. Aujourd'hui seul CVS et GIT sont supportés. De la documentation viendra présenter comment installer un tel outil.
</div>

<ol>
<li>Télécharger la dernière version ici : <a href="https://sourceforge.net/projects/freeplanecollab/files/">https://sourceforge.net/projects/freeplanecollab/files/</a></li>
<li>Ouvrir le fichier avec freeplane <br/> <img src="/doc/screenshots/addon-download.png" alt="addon download" /></li>
<li>Choisir d'installer le addon <br /> <img src="/doc/screenshots/addon-install.png" alt="addon installation" /></li>
<li>Confirmer l'installation <br /> <img src="/doc/screenshots/addon-install-2.png" width="600" alt="addon installation confirmation" /></li>
<li>Accepter la licence <br /> <img src="/doc/screenshots/addon-install-3.png" alt="accepter la license" /></li>
<li>Redémarrer freeplane une fois l'installation terminée <br /> <img src="/doc/screenshots/addon-install-4.png" alt="redémarrer freeplane" /></li>
</ol>


<?
} else {
?>
<h1 id="install">installation</h1>


<div class="warning">
Important : this addon requires a working versionning control system. Currently only CVS and GIT are supported. More doc will come to explain how to install one of these.
</div>

<ol>
<li>Donwload the latest version : <a href="https://sourceforge.net/projects/freeplanecollab/files/">https://sourceforge.net/projects/freeplanecollab/files/</a></li>
<li>Open it with freeplane <br/> <img src="/doc/screenshots/addon-download.png" alt="addon download" /></li>
<li>Choose to install it <br /> <img src="/doc/screenshots/addon-install.png" alt="addon installation" /></li>
<li>Confirm installation <br /> <img src="/doc/screenshots/addon-install-2.png" width="600" alt="addon installation confirmation" /></li>
<li>Accept the license <br /> <img src="/doc/screenshots/addon-install-3.png" alt="accepter la license" /></li>
<li>Restart freeplane <br /> <img src="/doc/screenshots/addon-install-4.png" alt="redémarrer freeplane" /></li>
</ol>

<?
}
?>

<?
if ($l == "fr"){
?>
<h1 id="configure">configuration</h1>
<ol>
<li>Paramétrer l'addon en allant dans <i>Outils > Préférences</i>, puis dans <i>Plugins</i> <br />
	<img src="/doc/screenshots/addon-configure.png" alt="configurer" /> <br />
</li>
<li>Configurer l'add-on
	<img src="/doc/screenshots/addon-configure-2.png" alt="configurer" width="600" />
	<ul>
	<li><b>Chemin vers l'exécutable XXX</b> : seul celui du système de gestion de version que vous utilisez est obligatoire.</li>
	<li><b>Mode verbeux</b> : principalement pour débugger l'add-on.</li>
	<li><b>Mode silencieux</b> : pour limiter le nombre de popups affichés lorsque vous êtes familiarisé avec l'add-on (les statuts "ok" sont affichés dans la barre d'état, les erreurs continuent à s'afficher sous forme de popup)</li>
	</ul>
</li>	
</ol>

<?
} else {
?>
<h1 id="configure">configuration</h1>
<ol>
<li>Configure the addon under <i>Tools > Preferences</i>, then <i>Plugins</i> <br />
	<img src="/doc/screenshots/addon-configure.png" alt="configure" />
</li>
<li>
	<img src="/doc/screenshots/addon-configure-2.png" alt="configure" width="600" /> <br />
	<ul>
	<li><b>Path to XXX</b> : only the one to the versionning system you use is mandatory.</li>
	<li><b>Verbose mode</b> : mainly for debugging.</li>
	<li><b>Quiet mode</b> : to limit the number of confirmation popups when you're used to the add-on ("ok" are shown in the status bar, errors are still displayed as popups.</li>
	</ul>
</li>	
</ol>
<?
}
?>


<?
if ($l == "fr"){
?>
<h1 id="use">utilisation</h1>
<p>
Demo:<br />
<iframe width="420" height="315" src="//www.youtube.com/embed/HIGS78lgeUk" frameborder="0" allowfullscreen></iframe>
</p>

<p>
Une fois l'addon installé les commandes peuvent être utilisée via les menus :<br />
<img src="/doc/screenshots/addon-installed-menu.png" alt="menus installés" />
</p>

<p>
Ou bien via les raccourcis :<br />
<img src="/doc/screenshots/addon-installed-shortcuts.png" alt="raccourcis" />
</p>

<? } else { ?>

<h1 id="use">usage</h1>

<p>
Demo:<br />
<iframe width="420" height="315" src="//www.youtube.com/embed/HIGS78lgeUk" frameborder="0" allowfullscreen></iframe>
</p>

<p>
Once installed, the script are available under the "tools" menu :<br />
<img src="/doc/screenshots/addon-installed-menu.png" alt="menus installés" />
</p>

<p>
Or directrly through the hot keys :<br />
<img src="/doc/screenshots/addon-installed-shortcuts.png" alt="raccourcis" />
</p>


<? } ?>


<?
if ($l == "fr"){
?>
<h1 id="uninstall">désinstallation</h1>

Le addon peut être déinstallé via le menu "Outils > Addons" : <br />
<img src="/doc/screenshots/addon-install-5.png" width="600" alt="vérifier l'installation" />


<? } else { ?>
<h1 id="uninstall">uninstall</h1>

The addon can be uninstalled under "Tools > addons" : <br />
<img src="/doc/screenshots/addon-install-5.png" width="600" alt="vérifier l'installation" />

<? } ?>


<? include("lib/footer.inc.php"); ?>