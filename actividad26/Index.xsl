<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:dc="http://purl.org/dc/elements/1.1/" 
xmlns:content="http://purl.org/rss/1.0/modules/content/" 
xmlns:dcterms="http://purl.org/dc/terms/" 
xmlns:atom="http://www.w3.org/2005/Atom" 
xmlns:media="http://search.yahoo.com/mrss/"
version="1.0">
  <xsl:template match="/">
  <html lang="en">
    <head>
        <link rel="stylesheet" href="estilo.css"></link>
    </head>
    <body>
        <main>        
            <h1 style="text-align:center"><xsl:value-of select="rss/channel/title"/></h1>
            <h3 style="text-align:center"><xsl:value-of select="rss/channel/description"/></h3>          
            <xsl:for-each select="rss/channel/item">
                <h2 style="text-align:center"><xsl:value-of select="title"/></h2>
                <p style="text-align:center"><xsl:value-of select="pubDate"/></p>
                <xsl:for-each select="media:content">
                    <img src="{@url}" alt="{media:description}" style="max-width:1000px; max-height:400px ; display: block;
                    margin-left: auto;
                    margin-right: auto;"></img>
                </xsl:for-each>    
                <p style="text-align:center"><xsl:value-of select="description"/></p>
                <a href="{link}" sytle="display: block; text-align:center; margin: 0 auto;">Leer más</a>
            </xsl:for-each>
        </main>   
    </body>
  </html>
  </xsl:template>
  </xsl:stylesheet>