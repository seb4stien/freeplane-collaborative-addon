<? include("lib/header.inc.php"); ?>

<ul>
<?
if ($l == "fr") {
?>
<li>19 octobre 2013 : après quelques mois de développement et plus de 500 téléchargements, l'extension sort en <a href="https://sourceforge.net/projects/freeplanecollab/files/stable/">version 1.0.0</a></li>
<li>30 septembre 2013 : publication de la <a href="https://sourceforge.net/projects/freeplanecollab/files/stable/">version 0.9.4</a> qui ajoute un 'timeout' sur les appels au système de gestion de version.</li>
<li>28 septembre 2013 : publication de la <a href="https://sourceforge.net/projects/freeplanecollab/files/experimental/">version 0.9.4 en test</a> qui ajoute un 'timeout' sur les appels au système de gestion de version.</li>
<li>13 août 2013 : publication de la <a href="https://sourceforge.net/projects/freeplanecollab/files/stable/">version 0.9.3</a> qui ajoute un mode 'silencieux' pour limiter le nombre de popups et une optimisation pour git (pas de push si par de repository distant de configuré)</li>
<li>18 juillet 2013 : publication de la <a href="https://sourceforge.net/projects/freeplanecollab/files/stable/">version 0.9</a> qui est une refonte des versions précédentes intégrant le support cvs, svn et git</li>
<li>13 juillet 2013 : support experimental de svn dans la <a href="https://sourceforge.net/projects/freeplanecollab/files/experimental/">version 0.8</a></li>
<li>6 juillet 2013 : support experimental de git dans la <a href="https://sourceforge.net/projects/freeplanecollab/files/experimental/">version 0.7</a></li>
<li>4 juillet 2013 : publication de la <a href="https://sourceforge.net/projects/freeplanecollab/files/stable/">version 0.6</a>
<ul>
<li>finalisation des messages utilisateur et des traductions</li>
<li>revue de code pour améliorer la gestion des erreurs</li>
<li>support de l'ajout de fichier au système de gestion de versions</li>
</ul>
</li>
<li>29 juin 2013 : publication de la <a href="https://sourceforge.net/projects/freeplanecollab/files/old/">version 0.5</a>
<ul>
<li>ajout de messages utilisateur et de traductions</li>
<li>rechargement automatique de la carte dans freeplane lorsqu'elle a été mise à jour</li>
</ul>
</li>
<?
} else {
?>
<li>19 october 2013 : after some months of development and more than 500 downloads, the add-on is released under <a href="https://sourceforge.net/projects/freeplanecollab/files/stable/">version 1.0.0</a>.</li>
<li>30 september 2013 : release of <a href="https://sourceforge.net/projects/freeplanecollab/files/stable/">version 0.9.4</a> adding a timeout for the versionning system call.</li>
<li>28 september 2013 : release of <a href="https://sourceforge.net/projects/freeplanecollab/files/experimental/">version 0.9.4 for test</a> adding a timeout for the versionning system call.</li>
<li>13 august 2013 : release of <a href="https://sourceforge.net/projects/freeplanecollab/files/stable/">version 0.9.3</a> adding a 'quiet mode' to limit the number of popups and an optimization for git (no push question if there is no remote repository)</li>
<li>18 july 2013 : release of <a href="https://sourceforge.net/projects/freeplanecollab/files/stable/">version 0.9</a> which is a major refactoring including cvs, svn and git support</li>
<li>13 july 2013 : experimental git support in <a href="https://sourceforge.net/projects/freeplanecollab/files/experimental/">version 0.8</a></li>
<li>6 july 2013 : experimental git support in <a href="https://sourceforge.net/projects/freeplanecollab/files/experimental/">version 0.7</a></li>
<li>4 july 2013 : release of <a href="https://sourceforge.net/projects/freeplanecollab/files/stable/">version 0.6</a>
<ul>
<li>added user-friendly messages</li>
<li>code refactoring for better error handling</li>
<li>support for adding file to versionning system</li>
</ul>
</li>
<li>29 june 2013 : release of <a href="https://sourceforge.net/projects/freeplanecollab/files/old/">version 0.5</a>
<ul>
<li>added user messages and translations</li>
<li>automatic reload of the map in freeplane after update</li>
</ul>
</li><?
}
?>
</ul>


<? include("lib/footer.inc.php"); ?>