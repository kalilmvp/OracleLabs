<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../receivePO.wsdl"/>
      <rootElement name="PurchaseOrder" namespace="http://xmlns.oracle.com/ns/order"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../WriteApprovalResults.wsdl"/>
      <rootElement name="Order" namespace="http://xmlns.oracle.com/ns/order"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.6.0(build 111214.0600.1553) AT [SAT MAR 14 12:45:56 BRT 2015]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:tns="http://oracle.com/sca/soapservice/POProcessing/POProcessing/receivePO"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/file/POProcessing/POProcessing/WriteApprovalResults"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:inp1="http://xmlns.oracle.com/ns/order"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl tns wsdl inp1 xsd ns0 plt jca xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <inp1:Order>
      <inp1:customerId>
        <xsl:value-of select="/inp1:PurchaseOrder/inp1:CustID"/>
      </inp1:customerId>
      <inp1:orderId>
        <xsl:value-of select="/inp1:PurchaseOrder/inp1:ID"/>
      </inp1:orderId>
      <xsl:if test="/inp1:PurchaseOrder/inp1:productName">
        <inp1:prodName>
          <xsl:value-of select="/inp1:PurchaseOrder/inp1:productName"/>
        </inp1:prodName>
      </xsl:if>
      <xsl:if test="/inp1:PurchaseOrder/inp1:itemType">
        <inp1:itemType>
          <xsl:value-of select="/inp1:PurchaseOrder/inp1:itemType"/>
        </inp1:itemType>
      </xsl:if>
      <xsl:if test="/inp1:PurchaseOrder/inp1:price">
        <inp1:price>
          <xsl:value-of select="/inp1:PurchaseOrder/inp1:price"/>
        </inp1:price>
      </xsl:if>
      <xsl:if test="/inp1:PurchaseOrder/inp1:quantity">
        <inp1:qty>
          <xsl:value-of select="/inp1:PurchaseOrder/inp1:quantity"/>
        </inp1:qty>
      </xsl:if>
      <xsl:if test="/inp1:PurchaseOrder/inp1:status">
        <inp1:status>
          <xsl:value-of select="/inp1:PurchaseOrder/inp1:status"/>
        </inp1:status>
      </xsl:if>
      <inp1:creditCardInfo>
        <inp1:cardNumber>
          <xsl:value-of select="/inp1:PurchaseOrder/inp1:ccNumber"/>
        </inp1:cardNumber>
        <inp1:cardType>
          <xsl:value-of select="/inp1:PurchaseOrder/inp1:ccType"/>
        </inp1:cardType>
      </inp1:creditCardInfo>
    </inp1:Order>
  </xsl:template>
</xsl:stylesheet>