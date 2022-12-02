<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
    <html>
        <head>
            <title>
                Actividad21
            </title>
        </head>
        <body>
            <table border="1">
                <tr>
                    <th rowspan="2">Descripción de cada hecho</th>
                    <th>Fecha</th>
                </tr>
                    
                <tr>
                    <td>Dia</td>
                    <td>Mes</td>
                    <td>Año</td>
                </tr>
                <xsl:for-each select="main/hecho">
                    <tr>
                        <td><xsl:value-of select="fecha"/></td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>


    </xsl:template>
</xsl:stylesheet>