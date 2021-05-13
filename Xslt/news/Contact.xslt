<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="row">
            <xsl:apply-templates select="News"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-lg-4">
            <div class="item">
                <xsl:attribute name="data-href">
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </xsl:attribute>
                <div class="title f-24 fw-700 color-gray text-uppercase">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </div>
                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
