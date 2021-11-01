<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/NewsList">
		<section class="kv-section recruitment-page">
			<div class="container">
				<div class="main-title color-main">
					<xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of>
				</div>
				<div class="recruitment-list">
					<div class="list-wrapper">
						<xsl:apply-templates select="News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="sg-item">
			<div class="item-recruit d-flex">
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
				<div class="content d-flex justify-between">
					<div class="caption">
						<a class="title f-18 fw-700 color-main">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						<div class="time f-16 fw-300 color-gray">
							<xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
						</div>
						<div class="area f-16 fw-300 color-gray">
							<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
						</div>
					</div>
					<div class="icon d-flex">
						<xsl:if test="ShowOption > 0">
							<xsl:if test="floor(ShowOption div 1) mod 2 = 1">
								<div class="option hot">
									<xsl:text disable-output-escaping="yes">Hot</xsl:text>
								</div>
							</xsl:if>
							<xsl:if test="floor(ShowOption div 2) mod 2 = 1">
								<div class="option new">
									<xsl:value-of select="/NewsList/NewText" disable-output-escaping="yes">
									</xsl:value-of>
								</div>
							</xsl:if>
							<xsl:if test="floor(ShowOption div 4) mod 2 = 1">
								<div class="option deadline">
									<xsl:value-of select="/NewsList/DeadLineText" disable-output-escaping="yes">
									</xsl:value-of>
								</div>
							</xsl:if>
						</xsl:if>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
