<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../getCreditCardValidation.wsdl"/>
      <rootElement name="CreditcardinfoCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/getCreditCardValidation"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../getStatusByCC.wsdl"/>
      <rootElement name="creditcardStatus" namespace="http://www.globalcompany.com/ns/CCAuthorizationService"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.6.0(build 111214.0600.1553) AT [FRI MAR 13 16:35:09 BRT 2015]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/getCreditCardValidation"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/CreditCardValidation/ValidationForCC/getCreditCardValidation"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:inp1="http://www.globalcompany.com/ns/CCAuthorizationService"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns0="http://oracle.com/sca/soapservice/CreditCardValidation/ValidationForCC/getStatusByCC"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl top tns plt wsdl xsd inp1 ns0 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <inp1:creditcardStatus>
      <xsl:value-of select="/top:CreditcardinfoCollection/top:Creditcardinfo/top:status"/>
    </inp1:creditcardStatus>
  </xsl:template>
</xsl:stylesheet>