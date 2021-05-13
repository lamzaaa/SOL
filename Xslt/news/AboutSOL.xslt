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
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>wrapper-content panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">wrapper-content panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="container">
                <xsl:apply-templates select="News" mode="TongQuan"></xsl:apply-templates>
            </div>
        </div>
        <!-- <xsl:if test="position() = 2 ">
            <div class="wrapper-content panel">
                <xsl:attribute name="id">
                    <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                    <xsl:value-of select="position()"></xsl:value-of>
                </xsl:attribute>
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>wrapper-content panel active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <div class="container">
                    <xsl:apply-templates select="News" mode="CoCau"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if> -->
    </xsl:template>
    <xsl:template match="News" mode="TongQuan">
        <!-- <div class="wrap-img">
            <div class="img">
                <img class="lazyload">
                    <xsl:attribute name="data-src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
        </div> -->
        <div class="wrap-content">
            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        </div>
    </xsl:template>
</xsl:stylesheet>
