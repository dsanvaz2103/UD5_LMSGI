<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Lista de CDs</title>
      </head>
      <body>
        <h1>Lista de CDs</h1>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Título del álbum</th>
            <th>Artista</th>
            <th>Canciones</th>
            <th>Sello discográfico</th>
            <th>Año de publicación</th>
          </tr>
          <xsl:for-each select="catalogo/cd">
            <tr>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="artista"/></td>
              <td>
                <xsl:for-each select="canciones/cancion">
                  <xsl:value-of select="titulo"/>
                  <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
              </td>
              <td><xsl:value-of select="sello_discografico"/></td>
              <td><xsl:value-of select="anno_publicacion"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
