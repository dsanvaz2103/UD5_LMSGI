<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 <html>
 <body>
     <h2>Autores ordenados por el precio de sus libros más caros</h2>
     <table border="1">
       <tr bgcolor="#9acd32">
         <th>Autor</th>
         <th>Libro más caro</th>
         <th>Precio</th>
       </tr>
       <xsl:for-each select="libreria/libro">
         <xsl:sort select="libreria/libro[percio > 10 and autor = 'Martin Fowler']"/>
         <xsl:if test="not(preceding-sibling::libro[autor = current()/autor])">
           <tr>
             <td><xsl:value-of select="autor"/></td>
             <td>
               <xsl:value-of select="titulo"/>
             </td>
             <td>
               <xsl:value-of select="percio"/>
             </td>
           </tr>
         </xsl:if>
       </xsl:for-each>
     </table>
 </body>
 </html>
</xsl:template>
</xsl:stylesheet>
