<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone[IsActive='true']" mode="LV-1"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone" mode="LV-1">
        <ul class="tabs">
            <xsl:apply-templates select="Zone" mode="LV-2"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone" mode="LV-2">
        <li class="item">
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="rel">
                <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <span>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </span>
        </li>
    </xsl:template>
</xsl:stylesheet>