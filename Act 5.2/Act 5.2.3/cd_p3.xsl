<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="sello" select="'Atlantic Records'"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Canciones del sello <xsl:value-of select="$sello"/></title>
      </head>
      <body>
        <h1>Canciones del sello <xsl:value-of select="$sello"/></h1>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Canción</th>
            <th>Duración</th>
            <th>Artista</th>
          </tr>
          <xsl:for-each select="catalogo/cd[sello_discografico=$sello]/canciones/cancion">
            <tr>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="duracion"/></td>
              <td><xsl:value-of select="../../artista"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
