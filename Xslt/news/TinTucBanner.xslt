<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/NewsList">
		<section class="kv-section home-news-specail">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-3 col-md-6 col-sm-6 col-12">
			<div class="news-item zoom-img">
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
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
					<div class="hot-news f12 fw-700 color-white">
						<xsl:if test="ShowOption > 0">
							<xsl:if test="floor(ShowOption div 2) mod 2 = 1">
								<xsl:value-of select="/NewsList/NNText" disable-output-escaping="yes"></xsl:value-of>
							</xsl:if>
						</xsl:if>
					</div>
				</div>
				<div class="content-wrapper d-flex flex-column justify-between">
					<a class="title f-16 fw-700 color-main line-30 color-main lcl lcl-2" href="">
						<xsl:attribute name="href">
							<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="Title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
