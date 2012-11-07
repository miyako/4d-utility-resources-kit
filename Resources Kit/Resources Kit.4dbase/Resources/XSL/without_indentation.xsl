<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	exclude-result-prefixes="xsl">
<xsl:output 
	method="xml" 
	omit-xml-declaration="no" 
	indent="no" />
	
<xsl:strip-space elements="*" />
<xsl:decimal-format name="decimal" NaN="0" />
	
<xsl:template match="/">
	<xsl:copy-of select="." />
</xsl:template>

</xsl:stylesheet>