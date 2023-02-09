for $x in doc("portada.xml")/bib/libro
where $x/@anyo < 2000 return $x