for $libro in doc("llibreria.xml")/bookstore/book
where $libro/price <= 30
return 
<libro>
        <titulo> {data($libro/title)};</titulo> 
        <precio> {data($libro/price)};</precio>
</libro>