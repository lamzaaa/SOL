<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/NewsDetail">
		<section class="kv-section news-detail">
			<div class="container">
				<div class="title f-24 fw-700 color-main">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="bottom-wrapper d-flex align-center justify-between">
					<time>
						<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
					</time>
					<ul class="social">
						<li>
							<a>
								<xsl:attribute name="href">
									<xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
									<xsl:value-of select="FullUrl" />
								</xsl:attribute>
								<em class="ri-facebook-fill"></em>
							</a>
						</li>
						<li>
							<a>
								<xsl:attribute name="href">
									<xsl:text>https://www.linkedin.com/sharing/share-offsite/?url=</xsl:text>
									<xsl:value-of select="FullUrl" />
								</xsl:attribute>
								<em class="ri-linkedin-box-fill"></em>
							</a>
						</li>
					</ul>
				</div>
				<div class="full-content">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					<xsl:if test="count(NewsImages) > 1">
						<div class="slide-gallery mx-auto">
							<div class="swiper-container gallery-top">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="NewsImages" mode="Top"></xsl:apply-templates>
								</div>
							</div>
							<div class="swiper-container gallery-thumbs">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="NewsImages" mode="Thumb"></xsl:apply-templates>
								</div>
							</div>
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
						</div>
					</xsl:if>
				</div>
			</div>
		</section>
		<section class="kv-section news-other">
			<div class="container">
				<div class="main-title color-main">
					<xsl:value-of select="ONText" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="slide-other">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="NewsOther"></xsl:apply-templates>
						</div>
					</div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
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
					</a>
				</div>
				<div class="content">
					<div class="title">
						<a class="fw-800 f-20 line-30 color-main lcl lcl-3">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
					</div>
					<time>
						<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
					</time>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Top">
		<div class="swiper-slide">
			<a class="img">
				<xsl:attribute name="data-fancybox">
					<xsl:text disable-output-escaping="yes">Popup</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
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
	</xsl:template>
	<xsl:template match="NewsImages" mode="Thumb">
		<div class="swiper-slide">
			<a class="img">
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
	</xsl:template>
</xsl:stylesheet>
