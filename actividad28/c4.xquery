for $libro in doc("llibreria.xml")/bookstore/book
where $libro/price <= 30
return $libro/title