<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
    <head>
        <title>
            Actividad23
        </title>
    </head>
    <body>
    <table border="1">
        <tr>
            <th colspan="2">FACTURA nº999</th>
        </tr>
        <tr>
            <xsl:for-each select="factura/datos_empresa">
            <td colspan="1,5">
                <xsl:value-of select="nombre"/>
                <br><xsl:value-of select="direccion"/></br>
                <xsl:value-of select="codigo_postal"/>
                <br>C.I.F.: <xsl:value-of select="CIF"/></br>
                <br>teléfono: <xsl:value-of select="telefono"/></br>
                <br>fax: <xsl:value-of select="fax"/></br>
            </td>
        </xsl:for-each>
        <xsl:for-each select="factura/datos_factura">
        <td>
           <br> Fecha: <xsl:value-of select="fecha"/></br>
         <br>Pedido nº<xsl:value-of select="num_pedido"/></br>
         <br>Forma de pago: <xsl:value-of select="forma_pago"/></br>
        </td>

        </xsl:for-each>            
        </tr>
    
    </table>
    
        
    </body>
    </html>
    </xsl:template> 
</xsl:stylesheet>