<libros>{
  for $libro in doc("llibreria.xml")/bookstore/book/title
  return 
  <titulo>{$libro}</titulo>
}
<total>{count(doc("llibreria.xml")/bookstore/book)}</total>
</libros>

       