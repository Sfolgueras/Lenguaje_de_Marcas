for $a in doc("portada.xml")//libro
return
<result>
<titulo>{$a/titulo}</titulo>
<autor>{$a/autor}</autor>
</result>