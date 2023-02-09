for $b in doc("portada.xml")//libro
let $c := $b/autor
return
<libro>
{ $b/titulo, <autores>{ count($c) }</autores>}
</libro>