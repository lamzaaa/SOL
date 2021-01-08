<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <ul class="tabs">
            <xsl:apply-templates select="Zone"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="IsActive='true'">
            <xsl:apply-templates select="Zone" mode="Sub"></xsl:apply-templates>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="Sub">
        <li class="item">
            <xsl:attribute name="rel">
                <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                <xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <span>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </span>
        </li>
    </xsl:template>
</xsl:stylesheet>
