<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="main-title color-main">
            <xsl:value-of select="ModuleTitle"></xsl:value-of>
        </div>
        <xsl:apply-templates select="Zone" mode="LV1"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone" mode="LV1">
        <div class="row">
            <div class="col-xl-5 col-lg-12">
                <div class="col-left">
                    <div class="content f-16 fw-300">
                        <xsl:value-of select="Description"></xsl:value-of>
                    </div>
                </div>
            </div>
            <div class="col-xl-7 col-lg-12">
                <div class="col-right d-flex flex-wrap justify-center">
                    <xsl:apply-templates select="Zone" mode="LV2"></xsl:apply-templates>
                </div>
                <div class="col-right-mobile">
                    <xsl:apply-templates select="Zone" mode="Mobile"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="LV2">
        <div class="item zoom-img">
            <div class="img">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <img class="lazyload">
                        <xsl:attribute name="data-src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                    <div class="content f-36 fw-700 color-white text-uppercase">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </div>
                </a>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Mobile">
        <div class="item">
            <div class="img">
                <a href="">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <img class="lazyload">
                        <xsl:attribute name="data-src">
                            <xsl:value-of select="SecondUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                    <div class="content f-36 fw-700 color-white text-uppercase">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </div>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
