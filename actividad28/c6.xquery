let $years := doc("llibreria.xml")/bookstore/book/year
return
  <publicaciones>
    {
      for $year in $years
      return <publicacion>{$year}</publicacion>
    }
  </publicaciones>