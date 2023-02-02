for $x in doc("portada.xml")/bib/libro
order by $x/@anyo return <libro> {$x/@anyo} {$x/titulo }</libro>