for $hola in doc("Examen.xml")/examen/clase
return <mondongo> Profesor: {data($hola/nombre_profesor)}; Clase: {data($hola/baile)}; Precio: {data($hola/precio)}
</mondongo>

