<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca Personal </h1>
                <table border="1">
                    <tr bgcolor="#90EE90">
                        <th>ISBN</th>
                        <th>Titulo</th>
                        <th>Autor</th>
                        <th>Precio</th>
                        <th>Numero de Paginas</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <tr>
                            <xsl:choose>
                                <xsl:when test="numPagina > 150">
                                    <xsl:attribute name="style">background-color: red;</xsl:attribute>
                                </xsl:when>
                            </xsl:choose>

                            <td>
                                <xsl:value-of select="isbn" />
                            </td>
                            <td>
                                <xsl:value-of select="titulo" />
                            </td>
                            <td>
                                <xsl:value-of select="autor" />
                            </td>
                            <td>
                                <xsl:value-of select="precio" />                            
                            </td>
                            <td>
                                <xsl:value-of select="numPagina" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>