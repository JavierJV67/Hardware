<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
<xsl:template match="/">

<html>
<head>
    <title>Inventario Hardware</title>
    <style>
        table { border-collapse: collapse; width: 80%; margin: auto; }
        th, td { border: 1px solid black; padding: 10px; text-align: center; }
        th { background-color: #333; color: white; }
    </style>
</head>

<body>
    <h2 style="text-align:center;">Inventario de Dispositivos</h2>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Tipo</th>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Precio (€)</th>
        </tr>

        <xsl:for-each select="inventario/dispositivo">
            <tr>
                <td><xsl:value-of select="id"/></td>
                <td><xsl:value-of select="tipo"/></td>
                <td><xsl:value-of select="marca"/></td>
                <td><xsl:value-of select="modelo"/></td>
                <td><xsl:value-of select="precio"/></td>
            </tr>
        </xsl:for-each>

    </table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>