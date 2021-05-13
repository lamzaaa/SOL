<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ProductFilter">
        <div class="list d-flex align-center">
            <xsl:apply-templates select="Group"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Group">
        <div class="wrapper d-flex align-center">
            <div class="title">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </div>
            <select class="ajaxsort">
                <xsl:apply-templates select="Option"></xsl:apply-templates>
            </select>
        </div>
    </xsl:template>
    <xsl:template match="Option">
        <option>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="selected">
                    <xsl:text>selected</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="value">
                <xsl:value-of select="Url"/>
            </xsl:attribute>
            <xsl:value-of select="Title"/>
        </option>
    </xsl:template>
</xsl:stylesheet>
