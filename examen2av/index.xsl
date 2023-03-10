<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body>
      <table border="1">
        <tr>
          <th>Servicio</th>
          <th>Precio</th>
          <th>Bono 5</th>
          <th>Bono 10</th>
          <th>Reserva</th>
          <th>Horario</th>
          <th>Empleados</th>
        </tr>
        <xsl:for-each select="servicios/servicio">
          <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td>
                <xsl:value-of select="precio/precio_hora"/>
                <xsl:value-of select="precio/precio_mensual"/>
            </td>
            <td><xsl:value-of select="precio/bonos/bono5"/></td>
            <td><xsl:value-of select="precio/bonos/bono10"/></td>
            <td>
                <xsl:value-of select="reserva"/>
                <xsl:value-of select="plazas"/>
            </td>
            <td>
                <xsl:value-of select="horario/dias"/> 
                <xsl:value-of select="horario/horas"/></td>
            <td>
              <xsl:for-each select="empleados/empleado">
                <xsl:value-of select="."/><xsl:if test="position() != last()">, </xsl:if>
              </xsl:for-each>
            </td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
