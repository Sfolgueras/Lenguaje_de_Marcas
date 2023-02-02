for $x in doc("c:\users\usuario\desktop\xquery1.xml")/bib/libro
where $x/@anyo < 2000 return $x