<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html> 
  <body bgcolor="#EFEFF9">
  <center>
    <xsl:for-each select="catalog/cliente">
    
    <table style="width:40%; background-color: white;">
    <tr>
    <td colspan="2"><center><br/><img style=" width: 300px;" src="logo.png" align="middle"/></center><br/></td>
    </tr>
    <tr>
    <td style="font-family: fantasy;">
      <table border="0" style="padding-right: 20px;">
      <xsl:for-each select="mod_1">
      <tr style="width: 100%;">
        <td><xsl:value-of select="nombre"/></td>
      </tr>
      <tr>
        <td><xsl:value-of select="ciudad"/></td>
      </tr>
      <tr>
        <td><xsl:value-of select="colonia"/></td>
      </tr>
      <tr>
        <td><xsl:value-of select="calle"/></td>
      </tr>
      </xsl:for-each>
      <tr>
      <td>
      <img width = "270">
        <xsl:attribute name="src">
          <xsl:value-of select="//barras"/>
        </xsl:attribute>
      </img>
      </td>
      </tr>
    </table>
    </td>
    <td style="background-color: white; font-family: fantasy;">
    <table border="0" style="float: right;">
      <xsl:for-each select="mod_2">
      <tr>
        <td style="width: 80%;">Total a pagar: </td>
        <td>$<xsl:value-of select="m_total"/></td>
      </tr>
      <tr>
        <td>Pagar antes de: </td>
        <td><xsl:value-of select="m_antes"/></td>
      </tr>
      <tr>
        <td>Mes de facturación: </td>
        <td><xsl:value-of select="m_mes"/></td>
      </tr>
      <tr>
        <td>Telefono: </td>
        <td><xsl:value-of select="m_telefono"/></td>
      </tr>
      <tr>
        <td>Factura n°: </td>
        <td><xsl:value-of select="m_factura"/></td>
      </tr>
      <tr>
        <td colspan = "2" style="font-family: Times; font-style: italic;">
        <center>
        <br/>
        Su estado de cuenta puede ser pagado en cualquier centro de cobro indicado al reverso de esta factura
        </center>
        </td>
      </tr>
      </xsl:for-each>
    </table>
    </td>
    </tr>
    <tr>
    <td>
    <br/>
    <br/>
    </td>
    </tr>
    <tr>
    <td colspan = "2">
      <img src="publicidad.png" width="600"/>
    </td>
    </tr>
    <tr>
    <td>
    <br/>
    <br/>
    </td>
    </tr>
    <tr>
    <td>
      <table border="0" style="font-family: fantasy; width: 100%;">
        <xsl:for-each select="mod_3">
        <th colspan = "2" style="background-color: #318978; color: white; font-family: Times;">RESUMEN DEL ESTADO DE CUENTA</th>
        <tr style="width: 80%;">
          <td>Saldo anterior: </td>
          <td>$<xsl:value-of select="s_anterior"/></td>
        </tr>
        <tr>
          <td>Pago: </td>
          <td>$<xsl:value-of select="s_pago"/></td>
        </tr>
        <tr>
          <td>Saldo: </td>
          <td>$<xsl:value-of select="s_saldo"/></td>
        </tr>
        <tr>
          <td>Cargos del mes: </td>
          <td>$<xsl:value-of select="s_cargos"/></td>
        </tr>
        <tr>
          <td>IVA: </td>
          <td>$<xsl:value-of select="s_iva"/></td>
        </tr>
        <tr>
          <td>Subtotal: </td>
          <td>$<xsl:value-of select="s_sub"/></td>
        </tr>
        <tr>
          <td>Cargo por redondeo: </td>
          <td>$<xsl:value-of select="s_redondeo"/></td>
        </tr>
        <tr>
          <td>Total: </td>
          <td>$<xsl:value-of select="s_total"/></td>
        </tr>
        </xsl:for-each>
      </table>
    </td>
    <td>
      <table border="0" style="font-family: fantasy; float: right; width: 80%;">
        <xsl:for-each select="mod_4">
        <th colspan = "2" style="background-color: #318978; color: white; font-family: Times;">CARGOS DEL MES</th>
        <tr>
          <td>Planes y paquetes: </td>
          <td>$<xsl:value-of select="a_planes"/></td>
        </tr>
        <tr>
          <td>Servicio local: </td>
          <td>$<xsl:value-of select="a_servicio"/></td>
        </tr>
        <tr>
          <td>Tiendas TELNOR: </td>
          <td>$<xsl:value-of select="a_tiendas"/></td>
        </tr>
        <tr>
          <td>Servicios especiales: </td>
          <td>$<xsl:value-of select="a_especial"/></td>
        </tr>
        <tr>
          <td>Celulares: </td>
          <td>$<xsl:value-of select="a_celulares"/></td>
        </tr>
        <tr>
          <td>IEPS 3%: </td>
          <td>$<xsl:value-of select="a_ieps"/></td>
        </tr>
        <tr>
          <td>Subtotal: </td>
          <td>$<xsl:value-of select="a_sub"/></td>
        </tr>
        <tr>
          <td STYLE="color: white"> _ </td>
        </tr>
        </xsl:for-each>
      </table>
    </td>
    </tr>
    <tr>
    <td>
    <br/>
    <br/>
    </td>
    </tr>
    <tr>
    <td colspan = "2">
      <img src="publicidad2.png" width="600"/>
    </td>
    </tr>

    <tr>
      <xsl:for-each select="mod_2">
        <center><td colspan = "2">Teléfono: <xsl:value-of select="m_telefono"/> | Pagar antes de: <xsl:value-of select="m_antes"/> | Mes de facturación: <xsl:value-of select="m_mes"/></td></center>
      </xsl:for-each>
    </tr>
    <tr>
    <td>
    <br/>
    <br/>
    </td>
    </tr>

    <tr style="font-family: fantasy;">
      <td>
        <table>
          <tr>
            <td style = "width: 60%; padding-right: 30px;">
            Total a pagar por Servicios de Telecomunicaciones de TELNOR y otros Servicios
            </td>
            <td>
            $<xsl:value-of select="mod_2/m_total"/>
            </td>
          </tr>
          <tr>
            <td colspan = "2">
            <img width = "270">
              <xsl:attribute name="src">
                <xsl:value-of select="//barras"/>
              </xsl:attribute>
            </img>
            </td>
          </tr>
        </table>
      </td>
      <td>
      <table>
          <tr>
            <td style = "width: 60%; padding-right: 30px;">
            Total de Servicios de Telecomunicaciones de TELNOR
            </td>
            <td>
            $<xsl:value-of select="mod_4/a_sub"/>
            </td>
          </tr>
          <tr>
            <td colspan = "2">
            <img width = "270">
              <xsl:attribute name="src">
                <xsl:value-of select="//barras"/>
              </xsl:attribute>
            </img>
            </td>
          </tr>
        </table>
      </td>
    </tr>

    </table>
    <br/>
    <br/>
    <br/>
    
    </xsl:for-each>
    </center>

  </body>
  </html>
  </xsl:template>
</xsl:stylesheet>

