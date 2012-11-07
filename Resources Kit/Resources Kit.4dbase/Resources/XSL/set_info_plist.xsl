<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:str="http://exslt.org/strings"
				exclude-result-prefixes="xsl str"
                >
				
<xsl:output method="xml" 
			indent="yes" 
			doctype-public="-//Apple//DTD PLIST 1.0//EN" 
			doctype-system="http://www.apple.com/DTDs/PropertyList-1.0.dtd" />

<xsl:param name="bundle_name" />

<xsl:template match="node()|@*">
	<xsl:variable name="position" select="count(preceding-sibling::*)" />
	<xsl:choose>
	<xsl:when test="name() = 'string' and ./preceding-sibling::key[count(preceding-sibling::*) = $position - 1]/text() = 'CFBundleExecutable'"  >
		<string><xsl:value-of select="str:decode-uri($bundle_name)" /></string>
	</xsl:when>
	<xsl:when test="name() = 'string' and ./preceding-sibling::key[count(preceding-sibling::*) = $position - 1]/text() = 'CFBundleIdentifier'"  >
		<string><xsl:value-of select="concat(., '.', $bundle_name)" /></string>
	</xsl:when>	
	<xsl:otherwise>
		<xsl:copy>
		<xsl:apply-templates select="node()|@*" />
		</xsl:copy>
	</xsl:otherwise>
	
	</xsl:choose>

</xsl:template>

</xsl:stylesheet>
