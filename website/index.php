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

<h2>installation</h2>

<h2>utilisation</h2>


</div>

<div class="footer">
<? if ($l == "fr") { echo "auteur :"; } else {echo "author:";} ?> <a href="http://sebastien.georget.name/">Sébastien Georget</a>
</div>

</body>
</html>