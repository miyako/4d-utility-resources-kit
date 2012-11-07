<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:str="http://exslt.org/strings"
                >
				
<xsl:output method="text" />

<xsl:param name="bundle_name" />
<xsl:param name="version_string" select="'1.0'" />

<xsl:template match="/">

<xsl:value-of select="concat('CFBundleName = &quot;', str:decode-uri($bundle_name), '&quot;;&#xD;')" />
<xsl:value-of select="concat('CFBundleShortVersionString = &quot;', str:decode-uri($version_string), '&quot;;&#xD;')" />
<xsl:value-of select="concat('CFBundleGetInfoString = &quot;', str:decode-uri($bundle_name), ' version ', $version_string, '&quot;;&#xD;')" />

</xsl:template>

</xsl:stylesheet>
