for $a in doc("portada.xml")//libro
let $cont := $a//autor
where count($cont) >= 2
return $a/ titulo