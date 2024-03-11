<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca Personal </h1>
                <table border="1">
                    <tr bgcolor="#90EE90">
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Precio</th>
                        <th>ISBN</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <tr>
                            <!-- <xsl:choose>
                                <xsl:when test="precio = '10.50'">
                                    <xsl:attribute name="style">background-color: yellow;</xsl:attribute>
                                </xsl:when>
                                <xsl:when test="precio = '60.50'">
                                    <xsl:attribute name="style">background-color: green;</xsl:attribute>
                                </xsl:when>
                            </xsl:choose>
                            -->
                            <xsl:choose>
                                <xsl:when test="precio > 25">
                                    <xsl:attribute name="style">background-color: red;</xsl:attribute>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">background-color: green;</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
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
                                <xsl:value-of select="isbn" />
                            </td>
                        </tr>
                    </xsl:for-each>
                                <xsl:value-of select="autor" />
                            
                            <td>
                                <xsl:value-of select="precio" />
                            </td>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>