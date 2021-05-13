<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/NewsList">
		<div class="row">
			<xsl:apply-templates select="News"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-6"></div>
		<div class="col-lg-6">
			<div class="wrapper-content">
				<div class="main-title color-white">
					<xsl:value-of select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="content f-16 fw-300 color-white line-30">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
				<a class="btn read-more" href="">
					<xsl:attribute name="href">
						<xsl:value-of disable-output-escaping="yes" select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<span>
						<xsl:value-of disable-output-escaping="yes" select="/NewsList/JoinText"></xsl:value-of>
					</span>
					<em class="material-icons">arrow_forward_ios</em>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
