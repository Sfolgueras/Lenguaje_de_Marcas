for $libros in doc("llibreria.xml")/bookstore/book
let $precio_iva := $libros/price * 1.21
order by $precio_iva
return 
<libros>
    <titulo>{data($libros/title)}</titulo>
    <precio_iva>{data(($precio_iva))}</precio_iva>
</libros>