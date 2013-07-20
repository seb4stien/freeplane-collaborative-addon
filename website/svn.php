<? include("lib/header.inc.php"); ?>

<p>
Cette page présente brièvement les systèmes de gestion de version et explique comment installer l'un d'entre eux (svn) pour travailler à plusieurs.
</p>

<h1>Introduction</h1>

<p>
La plupart des systèmes de gestion de versions fonctionnent en mode <i>client-serveur</i> :
<ul>
<li>un serveur informatique centralise les fichiers <b>de référence</b> et les met à disposition grâce à un programme qui tourne <i>en tâche de fond</i></li>
<li>les postes clients disposent de <b>copies locales</b> des fichiers et viennent se synchroniser sur le serveur de référence</li>
</ul>
</p>

<p>
L'extension <i>freeplane-collaborative-tools</i> s'appuie sur cet écosystème pour permettre le travail collaboratif.
</p>

<p>
Dans la suite nous verrons donc comment :
<ul>
<li><a href="#install-client">installer un client SVN</a></li>
<li><a href="#install-server">installer un serveur SVN</a> si votre organisation n'en dispose pas déjà</li>
<li><a href="#create-project">créer sont premier référentiel partagé</li>
</ul>

<h1 id="install-client">Installer un client SVN</h1>

<p>
Cette opération est à réaliser chez chaque utilisateur qui souhaitera utiliser "freeplane-collaborative-tools".
</p>

<p>
Vous pouvez télécharger le client svn : <a href="http://tortoisesvn.net/downloads.html">TortoiseSVN</a>.
</p>

<p>
Durant l'installation, il faut bien sélectionner : <i>command line tools</i>.<br />
<img src="/doc/screenshots/tortoisesvn-install.png" alt="tortoise svn install"/>
</p>

<p>
C'est aussi simple que ça.
</p>

<h1 id="install-server">Installer un serveur SVN</h1>

<p>
Cette opération n'est à réaliser qu'une fois pour toute sur un serveur centralisé (windows, linux ou autre).
</p>

<p>
Si vous n'avez pas de serveur centralisé, l'installation peut très bien être réalisée sur un poste de travail windows. Il faut cependant que celui-ci soit allumé quand les contributeurs souhaitent partager leurs cartes.
</p>


<p>
Vous pouvez télécharger le serveur svn ici : <a href="https://sourceforge.net/projects/win32svn/">Win32SVN</a>. (Il n'y a aucune action spécifique durant l'installation.)
</p>


<p>
La configuration du serveur se déroule en deux temps :
<ol>
<li>créer un répertoire qui contiendra les fichiers de référence</li>
<li>démarrer le serveur svn</li>
</ol>
</p>

<h2>Création du référentiel</h2>

<ol>
<li>Créer un référentiel <b><i>C:\svn-ref</i></b> grâce à la commande <b><i>svnadmin create "c:\svn-ref"</i></b> dans une fenêtre de commande (programme "cmd.exe" auquel on peut accéder avec le raccourcis "touche windows + r")<br />
<img src="/doc/screenshots/svn-mkref.png" "tortoise svn mkdir" />
</li>
<li>Dans le répertoire créé, ouvrir le fichier <i>c:\svn-ref\conf\svnserve.conf</i> et décommenter les lignes suivantes (en retirant les "# ") :
<pre>
anon-access = read
auth-access = write
password-db = passwd
</pre>
De cette manière, vous autorisez les utilisateurs listés dans le fichier <i>c:\svn-ref\conf\passwd</i> à se connecter au référentiel.
</li>
<li>
Ajouter des utilisateurs autorisés dans le fichier <i>c:\svn-ref\conf\passwd</i>. Le fichier contient des exemples. Commen dans le cas précédent il faut retirer "# " pour que ce soit pris en compte :
<pre>
[users]
bob = motDePasseDeBob
</pre>
</li>
</ol>


<h2>Démarrage du serveur</h2>

<p>
Il faut maintenant s'assurer que le serveur SVN démarrera automatiquement avec windows. Encore une fois ça se passe en ligne de commande. Attention, il faut bien respecter la syntaxe en laissant un espace après le signe "=".
</p>
<p>
La commande est la suivante :
<pre>
sc create svn
	binpath= "\"C:Program Files (x86)\Subversion\bin\svnserve.exe\" --service -r C:\svn-ref\"
	displayname= "SVN Server"
	depend= Tcpip
	start= auto
</pre>
Il faut l'exécuter en ligne de commande en tant qu'administrateur. Pour cela, lancer <i>cmd.exe</i> en tant qu'administrateur : <br />
<img src="/doc/screenshots/cmd.png" "command line as administrator" /> <br />
Ce qui ressemble à ça : <br />
<img src="/doc/screenshots/svn-addservice.png" "svn service" /><br />
Pour le démarrer la première fois, il faut juste saisir la commande suivante :
<pre>
net start svn
</pre>
</p>

<h1 id="create-project">Créer son premier espace partagé</h1>

<p>
Pour cela nous allons utiliser le client svn <i>Tortoise svn</i>.
</p>
<p>
L'opération ne prend que quelques étapes (cette première étape n'est à réaliser qu'une fois) :
<ol>
<li>
aller dans le répertoire contenant votre carte, faire un click droit et choisir d'importer un projet<br />
<img src="/doc/screenshots/tortoisesvn-import.png" />
</li>
<li>
préciser l'adresse du référentiel (en local 127.0.0.1, et à distance il faudra récupérer l'adresse IP)<br />
<img src="/doc/screenshots/tortoisesvn-import2.png" />
</li>
<li>
saisir les informations d'authentification<br />
<img src="/doc/screenshots/tortoisesvn-auth.png" />
</li>
</ol>
Les fichiers sont maintenant dans le référentiel.
</p>

<p>
Maintenant il n'y a plus qu'à les extraire du référentiel pour travailler dessus (cette phase sera à réaliser sur chaque poste client) :
<ol>
<li>
aller là où vous souhaitez extraire les cartes et fait un click droit<br />
<img src="/doc/screenshots/tortoisesvn-checkout.png" />
</li>
<li>
préciser l'adresse du référentiel
<br />
<img src="/doc/screenshots/tortoisesvn-checkout2.png" />
</li>
</ol>
</p>

<p>
Maintenant que toute l'initialisation est terminée, la suite se passera sous freeplane :)
</p>
<p>
Ouvrez la carte normalement, travaillez dessus et publiez là avec "F12".
</p>
<p>
Si d'autres contributeurs travaillent dessus en parallèle, mettez là à jour avec "F11".
</p>

<? include("lib/footer.inc.php"); ?>