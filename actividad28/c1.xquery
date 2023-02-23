for $libro in doc("llibreria.xml")/bookstore/book
return <titulo> Titulo: {data($libro/title)}; </titulo>