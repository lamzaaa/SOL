<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/BannerList">
        <section id="home-banner">
            <div class="home-banner">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="Banner"></xsl:apply-templates>
                    </div>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
            <div class="slide-inner">
                <img class="lazyload">
                    <xsl:attribute name="data-src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
                <xsl:if test="Description != ''">
                    <div class="content">
                        <div class="container d-flex justify-end">
                            <div class="text">
                                <xsl:value-of select="Description"></xsl:value-of>
                            </div>
                        </div>
                    </div>
                </xsl:if>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
