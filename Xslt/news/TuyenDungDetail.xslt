<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/NewsDetail">
		<section class="kv-section recruitment-detail">
			<div class="container">
				<div class="row">
					<div class="col-xl-9 col-lg-9 col-md-9 col-12">
						<div class="title f-24 fw-700 color-main">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="bottom-wrapper d-flex align-center justify-between">
							<time>
								<xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
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
							<div class="content">
								<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
							</div>
						</div>
						<div class="list-content">
							<div class="img">
								<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
							</div>
							<xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
						</div>
					</div>
					<div class="col-lg-3 col-md-3">
						<div class="box-apply">
							<a class="btn btn-apply">
								<xsl:attribute name="data-type">
									<xsl:text>iframe</xsl:text>
								</xsl:attribute>
								<xsl:attribute name="data-fancybox">
									<xsl:text>Form ứng tuyển</xsl:text>
								</xsl:attribute>
								<xsl:attribute name="data-src">
									<xsl:value-of select="ApplyUrl" disable-output-escaping="yes" />
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Apply"></xsl:value-of>
								<xsl:value-of select="ApplyText" disable-output-escaping="yes"></xsl:value-of>
							</a>
							<a class="btn btn-down">
								<xsl:attribute name="href">
									<xsl:text disable-output-escaping="yes">/Data/Sites/1/media/tuyen-dung/sol-enc-hrm-bang-thong-tin-ung-vien.xlsx</xsl:text>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="target">
									<xsl:text disable-output-escaping="yes">_blank</xsl:text>
								</xsl:attribute>
								<xsl:value-of select="DownText" disable-output-escaping="yes"></xsl:value-of>
							</a>
						</div>
						<div class="recuirement-other">
							<div class="recuirement-header">
								<div class="main-title fw-700 color-main">
									<xsl:value-of select="VTKText" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</div>
							<div class="recuirement-body">
								<div class="row">
									<xsl:apply-templates select="NewsOther"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<div class="item">
			<div class="title f-16 fw-700 color-gray">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</div>
			<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="col-lg-12 col-md-12 col-sm-6 col-6">
			<div class="item d-flex flex-column">
				<time>
					<xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
				</time>
				<a class="title f-16 fw-300 color-gray" href="">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
