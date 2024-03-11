<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="duracionMaxima" select="'240'"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Canciones con duración inferior a <xsl:value-of select="$duracionMaxima"/> segundos </title>
      </head>
      <body>
        <h1>Canciones con duración inferior a <xsl:value-of select="$duracionMaxima"/> segundos </h1>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Canción</th>
            <th>Duración</th>
            <th>Artista</th>
          </tr>
          <xsl:for-each select="catalogo/cd/canciones/cancion[duracion &lt; $duracionMaxima]">
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
