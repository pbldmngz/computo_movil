<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>BIBLIOTECA</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Titulo</th>
            <th>Autor</th>
            <th>Editorial</th>
            <th>Año</th>
            <th>ISBN</th>
            <th>Portada</th>
          </tr>
          <xsl:for-each select="Biblioteca/libro">
            <tr>
              <td>
                <xsl:value-of select="title"/>
              </td>
              <td>
                <xsl:value-of select="author"/>
              </td>
              <td>
                <xsl:value-of select="editorial"/>
              </td>
              <td>
                <xsl:value-of select="year"/>
              </td>
              <td>
                <xsl:value-of select="isbn"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
<!--<img src="image_sample" width="200" heigth="200" alt="">>
