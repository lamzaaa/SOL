<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="main-title color-main">
            <xsl:value-of select="ModuleTitle"></xsl:value-of>
        </div>
        <div class="row">
            <xsl:apply-templates select="News"></xsl:apply-templates>
            <div class="wrapper-button d-flex justify-end">
                <a class="view-more">
                    <xsl:attribute name="href">
                        <xsl:text disable-output-escaping="yes">/tin-tuc-su-kien</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <span>Xem thêm</span>
                    <img src="/Data/Sites/1/skins/default/img/icon/viewmore.png" alt=""/>
                </a>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-lg-3 col-md-6">
            <div class="news-item zoom-img">
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
                    </a>
                </div>
                <div class="content-wrapper d-flex flex-column justify-between">
                    <a class="title f-20 fw-800 color-main line-30 color-main lcl lcl-3" href="">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title"></xsl:value-of>
                    </a>
                    <time>
                        <xsl:value-of select="CreatedDate"></xsl:value-of>
                    </time>
                    <div class="desc f-16 fw-300 line-30">
                        <xsl:value-of select="BriefContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
