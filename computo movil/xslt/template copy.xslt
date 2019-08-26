<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html> 
  <body>
    <img src="logo.png" width="300"/>
    <table border="1">
      <tr bgcolor="#116332">
        <th style="text-align:left">Title</th>
        <th style="text-align:left">Artist</th>
      </tr>
      <xsl:for-each select="catalog/cliente/mod_1">
      <tr>
        <td><xsl:value-of select="nombre"/></td>
        <td><xsl:value-of select="ciudad"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
  </xsl:template>
</xsl:stylesheet>

<table border="1">
      <xsl:for-each select="mod_2">
      <tr>
        <td><xsl:value-of select="m_total"/></td>
      </tr>
      <tr>
        <td><xsl:value-of select="m_antes"/></td>
      </tr>
      <tr>
        <td><xsl:value-of select="m_mes"/></td>
      </tr>
      <tr>
        <td><xsl:value-of select="m_telefono"/></td>
      </tr>
      <tr>
        <td><xsl:value-of select="m_factura"/></td>
      </tr>
      </xsl:for-each>
    </table>

    <img width = "400">
        <xsl:attribute name="src">
          <xsl:value-of select="//barras"/>
        </xsl:attribute>
      </img>