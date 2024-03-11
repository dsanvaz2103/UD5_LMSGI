<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="artista" select="'Michael Jackson'"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Canciones de <xsl:value-of select="$artista"/></title>
      </head>
      <body>
        <h1>Canciones de <xsl:value-of select="$artista"/></h1>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Canción</th>
            <th>Duración</th>
          </tr>
          <xsl:for-each select="catalogo/cd[artista=$artista]/canciones/cancion">
            <tr>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="duracion"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
