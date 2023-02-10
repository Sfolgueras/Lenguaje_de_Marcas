for $clase in doc("Examen.xml")/examen/clase
where $clase/sala = 2 and $clase/precio < 35
return
<resultado>
  <baile>{$clase/baile/text()}</baile>
  <precio>{$clase/precio/text()}</precio>
  <plazas>{$clase/plazas/text()}</plazas>
  <fecha_incio>{$clase/fecha_incio/text()}</fecha_incio>
  <fecha_fin>{$clase/fecha_fin/text()}</fecha_fin>
  <dias_semana>{$clase/dias_semana/text()}</dias_semana>
  <nombre_profesor>{$clase/nombre_profesor/text()}</nombre_profesor>
  <sala>{$clase/sala/text()}</sala>
</resultado>