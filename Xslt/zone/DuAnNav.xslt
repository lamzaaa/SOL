<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="catalog-box d-flex justify-center align-center">
            <div class="text f-18 fw-700 color-white">Danh mục</div>
            <em class="material-icons">expand_more</em>
        </div>
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
        <li class="item" rel="panel-1">
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
