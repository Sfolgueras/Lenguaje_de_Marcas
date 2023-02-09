for $a in doc("portada.xml")/bib/libro
where $a/editorial = "Addison-Wesley"
return
<libro año="{ $a/@anyo }">
{ $a/titulo }
</libro>