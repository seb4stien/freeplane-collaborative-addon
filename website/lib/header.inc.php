<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<?
$l = "en";
if ($_GET['l'] == "fr") {
	$l = "fr";
}


function t() {
	
}

?>

<html>
<head>
<title>
<? if ($l == "fr"){ ?>
freeplane : outils collaboratifs
<? } else { ?>
freeplane : collaborative tools
<? } ?>
</title>
<meta name="description" xml:lang="fr-FR" content="extention à freeplane permettant la gestion de version et le travail collaboratif">
<meta name="keywords" xml:lang="fr-FR" content="mindmap, mind mapping, carte heuristique, collaboratif, gestion de version, freeplane, cvs, git">
<meta name="description" xml:lang="en-EN" content="freeplane mind mapping tool addon to support versionning and collaborative work">
<meta name="keywords" xml:lang="en-EN" content="mind map, mind mapping, collaborative, versionning, freeplane, cvs, git">
<? if ($l == "fr"){ ?>
<meta http-equiv="content-language" content="fr-FR" />
<? } else { ?>
<meta http-equiv="content-language" content="en-EN" />
<? } ?>
<link rel="stylesheet" href="/css/web.css">

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
<span class="title"><img src="/img/icon.png" />
<? if ($l == "fr"){ ?>
freeplane : outils <strong>collaboratifs</strong>
<? } else { ?>
freeplane <strong>collaborative</strong> tools
<? } ?>
</span>
<span class="lang"><a href="/fr/index.html">français</a> | <a href="/en/index.html">english</a></span>
</div>

<div class="menu">
<? if ($l == "fr"){ ?>
<a href="/fr/index.html#intro">intro</a> |
<a href="/fr/index.html#download">téléchargement</a> |
<a href="/fr/news.html">actualités</a> |
<a href="/fr/documentation.html">documentation</a> |
<a href="/fr/contact.html">contact</a>
<? } else { ?>
<a href="/en/index.html#intro">home</a> |
<a href="/en/index.html#download">download</a> |
<a href="/en/news.html">news</a> |
<a href="/en/documentation.html">documentation</a> |
<a href="/en/contact.html">contact</a>
<? } ?>
</div>

<div class="body" id="intro">
