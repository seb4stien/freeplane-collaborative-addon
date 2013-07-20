<?
$page="contact";
include("lib/header.inc.php");
?>

<script type="text/javascript">
function displayMail(mail, domain)
{
  document.write('<a href="mailto:' + mail + '4stien@' + domain + '">' + mail+''+'4stien@'+domain + '</a>');
}
</script>

<p>
<? if ($l == "fr"){ ?>
Les retours d'expérience sont les bienvenus, soit par l'intermédiaire du <a href="https://github.com/seb4stien/freeplane-collaborative-addon/issues?state=open">tracker</a>, soit par mail :
<? } else { ?>
Feedbacks are welcome either by the <a href="https://github.com/seb4stien/freeplane-collaborative-addon/issues?state=open">issue tracker</a> or by mail :
<? } ?>
<script type="text/javascript">displayMail('seb', 'users.sourceforge.net');</script>
</p>

<? include("lib/footer.inc.php"); ?>