<html>
<body>
<table>
<tr>
<th>Titulo</th>
<th>Editorial</th>
<th>Precio</th>
</tr>
{
for $a in doc("Libros.xml")//libro
return
<tr>
<td>{$a /titulo}</td>
<td>{$a /editorial}</td>
<td>{$a /precio}</td>
</tr>
}
</table>
</body>
</html>