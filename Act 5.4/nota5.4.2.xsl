<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="ISO-8859-1" indent="yes"/>

<xsl:template match="/notas">
    <html>
        <head>
            <title>Notas de Alumnos &#x2013; CFGS &#x2013; Desarrollo de Aplicaciones Web &#x2013; UD5</title>
            <style type="text/css">
                body { font-family: Arial, sans-serif; }
                h1 { color: #333; }
                .tabla-contenidos { width: 100%; text-align: center; }
                table { border-collapse: collapse; width: 100%; }
                th, td { border: 1px solid #ddd; padding: 8px; }
                th { background-color: #4CAF50; color: white; }
                .sobresaliente { color: blue; }
                .notable { color: #008000; }
                .bien { color: black; }
                .suficiente { color: orange; }
                .suspenso { color: red; }
            </style>
        </head>
        <body>
            <div class="tabla-contenidos">
                <h2>Tabla de Contenidos</h2>
                <table>
                    <tr>
                        <th colspan="3">Datos</th>
                        <th colspan="3">Notas</th>
                    </tr>
                    <tr>
                        <th>Nombre Alumno:</th>
                        <th>Actividades UD5</th>
                        <th>Convocatoria</th>
                        <th>Cuestionarios</th>
                        <th>Tareas</th>
                        <th>Examen</th>
                    </tr>
                    <xsl:for-each select="alumno[@convocatoria='Junio']">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellidos"/></td>
                            <td><xsl:value-of select="@convocatoria"/></td>
                            <td><xsl:value-of select="cuestionarios"/></td>
                            <td><xsl:value-of select="tareas"/></td>
                            <td><xsl:value-of select="examen"/></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="final >= 9">
                                        <span class="sobresaliente">Sobresaliente</span>
                                    </xsl:when>
                                    <xsl:when test="final >= 7">
                                        <span class="notable">Notable</span>
                                    </xsl:when>
                                    <xsl:when test="final >= 6">
                                        <span class="bien">Bien</span>
                                    </xsl:when>
                                    <xsl:when test="final >= 5">
                                        <span class="suficiente">Suficiente</span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <span class="suspenso">Suspenso</span>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </div>
        </body>
    </html>
</xsl:template>

<xsl:template match="matricula"/>

</xsl:stylesheet>