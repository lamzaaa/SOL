<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="row">
            <xsl:apply-templates select="Zone" mode="LV1"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="LV1">
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="item">
                <div class="nav-title f-25 fw-700 color-white">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                    <span class="ri-arrow-drop-down-line"></span>
                </div>
                <ul>
                    <xsl:apply-templates select="Zone" mode="LV2"></xsl:apply-templates>
                </ul>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="LV2">
        <li class="nav-item">
            <a class="nav-link f-20 fw-500 color-white">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>
