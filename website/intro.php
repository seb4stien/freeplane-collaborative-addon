<? include("lib/header.inc.php"); ?>

<h1>Construire une carte à plusieurs avec freeplane</h1>

<p>
Si vous utilisez freeplane sur de <b>grosses cartes</b> (d'organisation, de documentation, de développement...) vous vous êtes certainement déjà retrouvé dans la situation de vouloir <b>travailler à plusieurs</b> sur le document.
</p>

<p>
Deux grandes approches sont disponibles sur le marché aujourd'hui : l'<b>édition collaborative temps réel, et le partage de fichier</b>. Les deux ont leurs avantages et leurs inconvénients : dans un cas on devra être connecté pour interagir, dans l'autre on risque de bloquer le travail simultané.
</p>

<p>
Une <b>autre possibilité</b> existe désormais : <b>le versionning de cartes</b> sous freeplane grâce à l'addon <a href="http://freeplanecollab.sourceforge.net/index.php?l=fr">freeplane-collaborative-tools</a>.
</p>


<h2>Comment l'utiliser ?</h2>

<p>
Le principe est simple
<ul>
<li>vous ouvrez votre carte sur votre poste de travail</li>
<li>vous <b>récupérez les modifications</b> des autres contributeurs (raccourcis clavier : "F11")</li>
<li>vous <b>éditez</b> la carte</li>
<li>vous la <b>publiez</b> (raccourcis clavier "F12") pour que les autres y accèdent</li>
</ul>

Les avantages de ce fonctionnement :
<ul>
<li>chacun peut travailler sur sa partie de la carte (même en étant offline)</li>
<li>tout le monde a la <b>vue d'ensemble</b></li>
</ul>

<h2>Comment ça marche ?</h2>

<p>
Le prérequis est de disposer d'un système de gestion de version. Aujourd'hui CVS, SVN et GIT sont supportés. 
</p>
<p>
Si vous ne disposez pas de système de gestion de version deux possibilités s'offre à vous :
<ul>
<li>en installer un : todo lien vers un tuto</li>
<li>utiliser un service public : todo : lien vers ?</li>
</ul>
</p>

<p>
Le fonctionnement du addon est ensuite très simple : il met à disposition les opérations les plus courantes (mise à jour, publication) à l'intérieur de freeplane (via les menus et les raccourcis).
</p>

<p>
Point de vigilance : le système de gestion de version n'est pas magicien, si vous travaillez à plusieurs sur le même noeud il pourra y avoir des conflits. Dans ce cas il faudra les résoudre en ouvrant la mindmap avec un éditeur de texte.
</p>

<h2>Quelles sont les évolutions prévues ?</h2>

<p>
Il s'agit d'un projet opensource (GPL) disponible sous <a href="https://github.com/seb4stien/freeplane-collaborative-addon/">github</a> auquel chacun peut contribuer et donc déterminer les évolutions :).
</p>

<p>
Toutes les évolutions prévues sont listées <a href="https://github.com/seb4stien/freeplane-collaborative-addon/issues">ici</a>.
</p>

<? include("footer.php"); ?>