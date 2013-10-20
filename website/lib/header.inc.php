<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<?
$l = "en";
if (array_key_exists('l', $_GET) and $_GET['l'] == "fr") {
	$l = "fr";
}


function t() {
	
}

?>

<html>
<head prefix="og: http://ogp.me/ns#">
<title>
<? if ($l == "fr"){ ?>
freeplane : outils collaboratifs
<? } else { 
$l = "en";
?>
freeplane : collaborative tools
<? } ?>
</title>
<? 
if ($l == "fr") {
$url = "http://freeplanecollab.sourceforge.net/fr/";
?>
<meta http-equiv="content-language" content="fr-FR" />
<meta property="og:title" content="freeplane : add-on collaboratif" />
<meta property="og:description" content="Une extension pour freeplane (outil de mind-mapping) permettant le travail collaboratif et la gestion de versions." />
<meta name="description" xml:lang="fr-FR" content="Une extension pour freeplane (outil de mind-mapping) permettant le travail collaboratif et la gestion de versions.">
<meta name="keywords" xml:lang="fr-FR" content="mindmap, mind mapping, carte heuristique, collaboratif, gestion de version, freeplane, cvs, git">

<? } else { 
$url = "http://freeplanecollab.sourceforge.net/";
?>
<meta http-equiv="content-language" content="en-EN" />
<meta property="og:title" content="freeplane collaborative add-on" />
<meta property="og:description" content="A freeplane (mind-mapping tool) add-on to support versionning and collaborative work." />
<meta name="description" xml:lang="en-EN" content="A freeplane (mind-mapping tool) add-on to support versionning and collaborative work.">
<meta name="keywords" xml:lang="en-EN" content="mind map, mind mapping, collaborative, versionning, freeplane, cvs, git">

<? } ?>
<meta property="og:image" content="http://freeplanecollab.sourceforge.net/img/icon-large.png" />
<meta property="og:image:type" content="image/png">
<link rel="image_src" type="image/png" href="http://freeplanecollab.sourceforge.net/img/icon-large.png" />
<meta property="og:url" content="<?= $url ?>" />
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
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/fr_FR/all.js#xfbml=1&appId=34638349412";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div class="header">
<span class="title"><img itemprop="image" src="/img/icon-large.png" />
<? if ($l == "fr"){ ?>
freeplane : outils <strong>collaboratifs</strong>
<? } else { ?>
freeplane <strong>collaborative</strong> tools
<? } ?>
</span>
<span class="lang"><a href="/fr/index.html">français</a> | <a href="/">english</a></span>
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

<div class="msb">
<center>
<fb:share-button href="<?=$url?>" type="button"></fb:share-button>
<br /><br />
<div class="fb-like" data-href="<?=$url?>" data-action="like" data-layout="box_count"> </div>
<br /><br />
<div class="g-plusone" data-href="<?=$url?>" data-size="tall" data-annotation="bubble"></div>
<script type="text/javascript">
  window.___gcfg = {lang: 'fr'};

  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/plusone.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
</script>
<br /> <br />
<a href="https://twitter.com/share" class="twitter-share-button" data-url="<?=$url?>" data-lang="<?=$l?>" data-count="vertical">Tweeter</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
<script src="//platform.linkedin.com/in.js" type="text/javascript">
 lang: fr_FR
</script>
<br /><br />
<script type="IN/Share" data-url="<?=$url?>" data-counter="top"></script>
</center>
</div>


<div class="body" id="intro">