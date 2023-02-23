for $libro in doc("llibreria.xml")/bookstore/book
where $libro/year = 2005 
return 
<lib2005>
    <titulo>{data($libro/title)};</titulo>
    <autor>{data($libro/author)};</autor>
</lib2005>