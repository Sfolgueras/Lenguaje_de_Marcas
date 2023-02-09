for $a in distinct-values(doc("portada.xml")
//(autor)/apellido)
order by $a
return <apellidos>{ $a }</apellidos>