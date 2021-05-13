<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() = 1">
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
                    <div class="row">
                        <xsl:apply-templates select="News" mode="BanGiamDoc"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 2">
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
                    <div class="row">
                        <xsl:apply-templates select="News" mode="Canboquanly"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="BanGiamDoc">
        <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="leader-item zoom-img">
                <div class="img">
                    <a data-fancybox="" href="javascript:;">
                        <xsl:attribute name="data-src">
                            <xsl:text disable-output-escaping="yes">#popup-</xsl:text>
                            <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
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
                <div class="content">
                    <a data-fancybox="" href="javascript:;">
                        <xsl:attribute name="data-src">
                            <xsl:text disable-output-escaping="yes">#popup-</xsl:text>
                            <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <div class="name f-20 fw-700 text-capitalize color-main">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </div>
                        <div class="desc f-14 fw-400 text-uppercase">
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div style="display: none;" class="popup">
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">popup-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <div class="leader-detail d-flex">
                <div class="col-left">
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
                </div>
                <div class="col-right">
                    <div class="title f-24 fw-700 text-capitalize color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="sub-title f-14 fw-400 text-uppercase">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                    <div class="desc">
                        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Canboquanly">
        <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="leader-item zoom-img">
                <div class="img">
                    <a data-fancybox="" href="javascript:;">
                        <xsl:attribute name="data-src">
                            <xsl:text disable-output-escaping="yes">#cbql-</xsl:text>
                            <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
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
                <div class="content">
                    <a data-fancybox="" href="javascript:;">
                        <xsl:attribute name="data-src">
                            <xsl:text disable-output-escaping="yes">#cbql-</xsl:text>
                            <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <div class="name f-20 fw-700 text-capitalize color-main">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </div>
                        <div class="desc f-14 fw-400 text-uppercase">
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div style="display: none;" class="popup">
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">cbql-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <div class="leader-detail d-flex">
                <div class="col-left">
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
                </div>
                <div class="col-right">
                    <div class="title f-24 fw-700 text-capitalize color-main">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="sub-title f-14 fw-400 text-uppercase">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                    <div class="desc">
                        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
