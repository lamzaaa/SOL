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
        <li class="item">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>
