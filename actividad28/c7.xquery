for $libro in doc("llibreria.xml")/bookstore/book
order by $libro/@category, $libro/title
return <libro>{$libro};</libro>