<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Libros del autor John Doe</h1>
                <table>
                    <tr bgcolor="#88444">
                        <th>ISBN</th>
                        <th>Titulo</th>
                        <th>Autor</th>
                        <th>Precio</th>
                    </tr>
                    <!-- Libros de John Doe ordenados por precio -->
                    <xsl:for-each select="libreria/libro[autor='John Doe']">
                        <xsl:sort select="precio" data-type="number"/>
                        <tr bgcolor="#89999">
                            <td><xsl:value-of select="isbn"/></td>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="precio"/></td>
                        </tr>
                    </xsl:for-each>
                    <!-- Libros de todos los demás autores ordenados por precio -->
                    <xsl:for-each select="libreria/libro[autor!='John Doe']">
                        <xsl:sort select="precio" data-type="number"/>
                        <tr bgcolor="#89999">
                            <td><xsl:value-of select="isbn"/></td>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="precio"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
