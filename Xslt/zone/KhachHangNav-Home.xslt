<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="catalog-box d-flex justify-center align-center">
            <div class="text f-18 fw-700 color-white">Danh mục</div>
            <em class="material-icons">expand_more</em>
        </div>
        <ul class="tabs flex-column">
            <xsl:apply-templates select="Zone/Zone"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone">
        <li class="item f-18 d-flex align-center justify-between">
            <xsl:attribute name="rel">
                <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                <xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>item f-18 d-flex align-center justify-between active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>item f-18 d-flex align-center justify-between active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="Title"></xsl:value-of>
            <em class="material-icons">arrow_forward_ios</em>
        </li>
    </xsl:template>
</xsl:stylesheet>
