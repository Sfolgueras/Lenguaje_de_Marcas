let $precios := doc("llibreria.xml")/bookstore/book/price
return 
<precios>
  <minimo>{max($precios)}</minimo>
  <maximo>{min($precios)}</maximo>
</precios>
