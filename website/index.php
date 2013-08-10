<? include("lib/header.inc.php"); ?>

<table border="0">

<tr>
<td>
<? if ($l == "fr"){ ?>
<p><i>freeplane outils collaboratifs</i> est une extension à <a href="http://freeplane.sourceforge.net">freeplane</a> qui permet de faire du mind mapping participatif.</p>
<p>Le principe est simple
<ul>
<li>Chaque utilisateur dispose d'une copie de la mindmap sur laquelle il va pouvoir détailler certaines branches.</li>
<li>Au fur et à mesure de son travail, il va pouvoir publier ses modifications sur un serveur central et y récupérer les modifications des autres utilisateurs.</li>
<li>Chacun peut ainsi travailler de son côté (y compris offline) et ensuite synchroniser sa carte pour récupérer le travail des autres.</li>
</ul>
</p>

<? } else { ?>
<p>freeplane-collaborative-tools is a <a href="http://freeplane.sourceforge.net">freeplane</a> extension enabling collaborative mind mapping.</p>

<p>It's designed for asynchronous collaborative work:
<ul>
<li>Each user works on a copy of the mindmap.</li>
<li>During his work he puslishes the modifications on a central server where he can fetch other users contributions.</li>
<li>Every user can work offline and then synchronize their work.</li>
</ul>
</p>

<? } ?>
</td>
<td>
<? if ($l == "fr"){ ?>
<iframe width="420" height="315" src="//www.youtube.com/embed/p_4qVWyurIw?rel=0" frameborder="0" allowfullscreen></iframe>
<? } else { ?>
<iframe width="420" height="315" src="//www.youtube.com/embed/PeoxhbGOk_Y?rel=0" frameborder="0" allowfullscreen></iframe>
<? } ?>
</td>
</tr>
</table>

<? if ($l == "fr"){ ?>

<p>Pour réaliser cela, l'extension s'appuie sur un outil tiers : un système de gestion de version. Ce type d'outil est largement utilisé dans le monde du développement.</p>
<p>Actuellement, trois systèmes de gestion de version sont supportés : CVS, SVN et GIT.</p>

<br />
<p>
<strong>Exemples d'utilisation</strong>
<ul>
	<li>vous avez une mindmap qui représente un projet complexe sur laquelle plusieurs intervenants doivent réaliser des mises à jour</li>
	<li>vous utilisez une mindmap dans le cadre d'un projet de développement, et vous souhaitez facilement utiliser le système de gestion de version pour historiser vos changements</li>
	<li>votre mindmap est importante, et vous aimeriez garder l'historique des évolutions</li>
</ul>
</p>

<? } else { ?>
<p>The synchronization mechanism is provided by an external tool: a versionning control system. This type of tool is massively used in software development.</p>

<p>Currently, three versionning systems are supported : CVS, SVN and GIT.</p>
<br />

<p>
<strong>Use cases</strong>
<ul>
	<li>you work on a big mindmap for a complex project where several people have updates to make</li>
	<li>you are a software developper and want to integrate your mindmap in your versionning system</li>
	<li>your mindmap contains important data, and you want to be able to access older versions if necessary</li>
</ul>
</p>
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
<li>Télécharger la <a href="http://sourceforge.net/projects/freeplanecollab/files/stable/collaborativeTools-0.9.1.addon.mm/download">version 0.9.1</a> (<a href="http://sourceforge.net/projects/freeplanecollab/files/stable/">anciennes versions</a>)</li>
<li>Sources disponibles sur <a href="https://github.com/seb4stien/freeplane-collaborative-addon">github</a></li>
<?
} else {
?>
<li>Download <a href="http://sourceforge.net/projects/freeplanecollab/files/stable/collaborativeTools-0.9.1.addon.mm/download">version 0.9.1</a> (<a ="http://sourceforge.net/projects/freeplanecollab/files/stable/">older releases</a>)</li>
<li>Sources can be found on <a href="https://github.com/seb4stien/freeplane-collaborative-addon">github</a></li>
<?
}
?>
</ul>


<? include("lib/footer.inc.php"); ?>