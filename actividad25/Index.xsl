<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="text" indent="yes"/>
  <xsl:template match="/">
    FACTURA:
        DATOS EMPRESA:
            Nombre: <xsl:value-of select="factura/datos_empresa/nombre"/>
            Dirección: <xsl:value-of select="factura/datos_empresa/direccion"/>
            Código postal: <xsl:value-of select="factura/datos_empresa/codigo_postal"/>
            CIF: <xsl:value-of select="factura/datos_empresa/CIF"/>
            Telefono: <xsl:value-of select="factura/datos_empresa/telefono"/>
            Fax: <xsl:value-of select="factura/datos_empresa/fax"/>
        
        DATOS CLIENTE:
            Numero cliente: <xsl:value-of select="factura/datos_cliente/numero_cliente"/>
            Nombre: <xsl:value-of select="factura/datos_cliente/nombre"/>
            Dirección envio: <xsl:value-of select="factura/datos_cliente/direccion_envio"/>
            Población: <xsl:value-of select="factura/datos_cliente/poblacion"/>
            Código postal: <xsl:value-of select="factura/datos_cliente/cod_postal"/>
            Provincia: <xsl:value-of select="factura/datos_cliente/provincia"/>
        
        DATOS FACTURA:
            Fecha: <xsl:value-of select="factura/datos_factura/fecha"/>
            Numero pedido: <xsl:value-of select="factura/datos_factura/num_pedido"/>
            Forma de pago: <xsl:value-of select="factura/datos_factura/forma_pago"/>

            Pedido:
                Ref:<xsl:value-of select="factura/datos_factura/pedido/ref"/>
                Descripción:<xsl:value-of select="factura/datos_factura/pedido/descripcion"/>
                Cantidad: <xsl:value-of select="factura/datos_factura/pedido/cantidad"/>
                Precio: <xsl:value-of select="factura/datos_factura/pedido/precio"/>
                IVA: <xsl:value-of select="factura/datos_factura/pedido/iva"/>
                Importe: <xsl:value-of select="factura/datos_factura/pedido/importe"/>
           
         Base imponible:<xsl:value-of select="factura/base_imponible"/>
         Cuota IVA: <xsl:value-of select="factura/cuota_iva"/>
         Total factura: <xsl:value-of select="factura/total_factura"/>
        
</xsl:template>
</xsl:stylesheet>
