<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
    <head>
        <title>
            Actividad22
        </title>
    </head>
    <body>
        <table border="1">
        <tr>
            <th colspan="6">CDs EN OFERTA</th>
        </tr>
        <tr>
            <td>Título</td>
            <td>Artista</td>
            <td>País</td>
            <td>Compañia<br>discografica</br></td>
            <td>Precio</td>
            <td>Año de<br>publicación</br></td>
        </tr>
        <xsl:for-each select="cd_oferta/cd">
        <tr>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="artista"/></td>
            <td><xsl:value-of select="pais"/></td>
            <td><xsl:value-of select="compañia"/></td>
            <td><xsl:value-of select="precio"/></td>
            <td><xsl:value-of select="año_publicacion"/></td>
        </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>