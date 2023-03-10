(:for para recorrer todos los empleados y se guardan en $empleado:)
for $empleado in doc("portada.xml")/servicios/servicio/empleados/empleado
(:asigno el valor del texto de empleado a $nombre empleado:)
let $nombre_empleado := $empleado/text()
(:for para recorrer todos las etiquetas servicio que contengan la etiqueta empleado, 
la condicion [empleados/empleado = $nombre_empleado] sirve para que no se repita información:)
for $servicio in doc("portada.xml")/servicios/servicio[empleados/empleado = $nombre_empleado]
(:asigno el valor del texto de la etiqueta nombre a $nombre_servicio:)
let $nombre_servicio := $servicio/nombre/text()
(:for para recorrer todas las etiquetas horario dentro de servicio:)
for $horario in $servicio/horario
(:for para recorrer todas las etiquetas dias dentro de horario, el tokenize sirve para separar el texto por comas
el uso de tokenize lo he encontrado aquí:https://stackoverflow.com/questions/4929322/split-comma-separated-string-in-xquery:)
for $dia in tokenize($horario/dias, ", ")
(:for para recorrer los valores de todas las etiquetas horas dentro de horario:)
for $hora in tokenize($horario/horas, ", ")
(:sirve para ordenar el output por primero nombre y despues dia:)
order by $nombre_empleado, $dia
(:sirve para concatenar los valores de las variables separadas por un guion:)
return concat($nombre_empleado, " - ", $nombre_servicio, " - ", $dia, " - ", $hora)

