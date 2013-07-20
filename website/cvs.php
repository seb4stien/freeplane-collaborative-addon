<? include("lib/header.inc.php"); ?>

<p>
Cette page présente brièvement comment installer le système de gestion de version CVS sur un poste windows. Pour cela nous utiliserons <i>WinCVS</i>.
</p>

<h1>Téléchargement</h1>

<p>
Vous pouvez télécharger wincvs :
<ul>
<li><a href="http://cvsgui.sourceforge.net/download.html#wincvs_recommended">sur le site officiel</a></li>
<li><a href="http://www.commentcamarche.net/download/telecharger-34055058-wincvs">sur "commentcamarche"</a></li>
</ul>
</p>

<h1>Installation</h1>

<p>
<ul>
<li>extraire le contenu de l'archive téléchargée</li>
<li>exécuter wincvs_setup.exe</li>
<li>suivre les étapes de l'installation
<ul>
	<li>choisir <i>Full installation (recommanded)</i></li>
	<li>conserver le choix <i>Create a shell context menu</i></li>
</ul>
</li>
<li>à la fin de l'installation de wincvs, cocher <i>Install CVSNT</i></li>
<li>installer CVSNT avec au minimum les composants
<ul>
<li><i>Server components</i></li>
<li><i>Password Server (:pserver:) Protocol</i></li>
</ul>
</li>
<li>
sélectionner ensuite
<ul>
<li><i>Install cvsnt service</i></li>
<li><i>Install cvsnt lock service</i></li>
</ul>
</li>
<li>
à la fin de l'installation, sélectionner 
<ul>
<li><i>Start CVS service</i></li>
<li><i>Start CVS Lock service</i></li>
</ul>
</li>
</ul>
</p>

<h1>

<? include("footer.php"); ?>