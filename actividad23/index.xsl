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
            <th colspan="6">FACTURA nº999</th>
        </tr>
        <tr>
            <xsl:for-each select="factura/datos_empresa">
            <td colspan="5">
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
        <tr>
            <td colspan="6">Datos CLIENTE</td> 
        </tr>
        <tr>
            <td colspan="6">
                <xsl:for-each select="factura/datos_cliente">
                nº cliente: <xsl:value-of select="numero_cliente"/>
                <br>Nombre: <xsl:value-of select="nombre"/></br>
                <br>Direccion de envio: <xsl:value-of select="direccion_envio"/></br>
                <br>Población: <xsl:value-of select="poblacion"/></br>
                <br>cod. postal: <xsl:value-of select="cod_postal"/></br>
                <br>Provincia: <xsl:value-of select="provincia"/></br>
                </xsl:for-each>
            </td>
        </tr>
    
    </table>
    
        
    </body>
    </html>
    </xsl:template> 
</xsl:stylesheet>