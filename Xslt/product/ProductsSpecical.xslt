<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/ProductList">
		<div class="main-title color-main">
			<xsl:value-of select="ModuleTitle"></xsl:value-of>
		</div>
		<div class="row">
			<xsl:apply-templates select="Product"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Product">
		<div class="col-lg-4 col-md-4">
			<div class="project-item-col">
				<div class="project-item">
					<div class="img">
						<a>
							<xsl:attribute name="href">
								<xsl:text disable-output-escaping="yes">javascript:;</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
						</a>
					</div>
					<div class="content d-flex align-center">
						<a class="text f-20 fw-700 color-white text-center text-uppercase" href="javascript:;">
							<xsl:attribute name="href">
								<xsl:text disable-output-escaping="yes">javascript:;</xsl:text>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="arrow"></div>
				</div>
				<div class="project-detail">
					<div class="container">
						<div class="main-title color-main">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="container--tabs">
							<ul class="nav nav-tabs">
								<li class="active">
									<a>
										<xsl:attribute name="href">
											<xsl:text disable-output-escaping="yes">#tab-1</xsl:text>
										</xsl:attribute>
										<xsl:value-of select="/ProductList/InforText" disable-output-escaping="yes"></xsl:value-of>
									</a>
								</li>
								<li>
									<a>
										<xsl:attribute name="href">
											<xsl:text disable-output-escaping="yes">#tab-2</xsl:text>
										</xsl:attribute>
										<xsl:value-of select="/ProductList/ImageText" disable-output-escaping="yes"></xsl:value-of>
									</a>
								</li>
								<div class="close">
									<xsl:value-of select="/ProductList/CloseText" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</ul>
							<div class="tab-content">
								<div class="wrap-content tab-pane active">
									<xsl:attribute name="id">
										<xsl:text disable-output-escaping="yes">tab-1</xsl:text>
									</xsl:attribute>
									<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
								</div>
								<div class="wrap-content tab-pane">
									<xsl:attribute name="id">
										<xsl:text disable-output-escaping="yes">tab-2</xsl:text>
									</xsl:attribute>
									<div class="slide-detail">
										<div class="swiper-container gallery-top">
											<div class="swiper-wrapper">
												<xsl:apply-templates select="ProductImages" mode="Top"></xsl:apply-templates>
											</div>
										</div>
										<div class="swiper-container gallery-thumbs">
											<div class="swiper-wrapper">
												<xsl:apply-templates select="ProductImages" mode="Thumb"></xsl:apply-templates>
											</div>
										</div>
										<!-- <div class="swiper-button-next"></div>
                                        <div class="swiper-button-prev"></div> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="ProductImages" mode="Top">
		<div class="swiper-slide">
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
	</xsl:template>
	<xsl:template match="ProductImages" mode="Thumb">
		<div class="swiper-slide">
			<div class="img">
				<img class="lazyload">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
