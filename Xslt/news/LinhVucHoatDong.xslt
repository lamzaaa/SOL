<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="wrapper-content panel">
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                <xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>wrapper-content panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>wrapper-content panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="container">
                <div class="full-content">
                    <xsl:apply-templates select="News" mode="TongThau"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="TongThau">
        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
    </xsl:template>
</xsl:stylesheet>
