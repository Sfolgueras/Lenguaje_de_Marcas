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
    </head>
    <body>
        <main>
            <h1 style="text-align:center"><xsl:value-of select="rss/channel/title"/></h1>
        
        </main>   
    </body>
  </html>
  
  </xsl:template>
  </xsl:stylesheet>