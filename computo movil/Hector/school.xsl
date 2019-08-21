<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Students</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th></th>
      <th>Name</th>
      <th>Lastname</th>
      <th>Age</th>
    </tr>
    <xsl:for-each select="school/students/student">
    <tr>
      <td>
        <img>
          <xsl:attribute name="src">
              <xsl:value-of select="avatar"/>
          </xsl:attribute>
          <xsl:attribute name="width">
              50px
          </xsl:attribute>
          <xsl:attribute name="height">
              50px
          </xsl:attribute>
        </img>
      </td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="lastname"/></td>
      <td><xsl:value-of select="age"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>