<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xslthl="http://xslthl.sf.net" exclude-result-prefixes="xslthl" version="1.0">
   <xsl:import href="urn:docbkx:stylesheet"/>
   <xsl:import href="urn:docbkx:stylesheet/highlight.xsl"/>
   <xsl:param name="saxon.linenumbering" select="1"/>
   <xsl:param name="linenumbering.everyNth">1</xsl:param>
   <xsl:param name="section.autolabel.max.depth">2</xsl:param>
   <xsl:param name="use.id.as.filename">true</xsl:param>
   <xsl:param name="chunk.section.depth">1</xsl:param>
   <xsl:output method="xml" indent="no"/>
   <xsl:template match="xslthl:keyword" mode="xslthl">
      <span class="hl-keyword">
         <xsl:apply-templates mode="xslthl"/>
      </span>
   </xsl:template>
   <xsl:template match="xslthl:string" mode="xslthl">
      <span class="hl-string">
         <xsl:apply-templates mode="xslthl"/>
      </span>
   </xsl:template>
   <xsl:template match="xslthl:comment" mode="xslthl">
      <span class="hl-comment">
         <xsl:apply-templates mode="xslthl"/>
      </span>
   </xsl:template>
   <xsl:template match="xslthl:tag" mode="xslthl">
      <span class="hl-tag">
         <xsl:apply-templates mode="xslthl"/>
      </span>
   </xsl:template>
   <xsl:template match="xslthl:attribute" mode="xslthl">
      <span class="hl-attribute">
         <xsl:apply-templates mode="xslthl"/>
      </span>
   </xsl:template>
   <xsl:template match="xslthl:value" mode="xslthl">
      <span class="hl-value">
         <xsl:apply-templates mode="xslthl"/>
      </span>
   </xsl:template>
   <xsl:template match="xslthl:number" mode="xslthl">
      <span class="hl-number">
         <xsl:apply-templates mode="xslthl"/>
      </span>
   </xsl:template>
   <xsl:template match="xslthl:annotation" mode="xslthl">
      <span class="hl-annotation">
         <xsl:apply-templates mode="xslthl"/>
      </span>
   </xsl:template>
   <xsl:template match="xslthl:directive" mode="xslthl">
      <span class="hl-directive">
         <xsl:apply-templates mode="xslthl"/>
      </span>
   </xsl:template>
   <!-- Not sure which element will be in final XSLTHL 2.0 -->
   <xsl:template match="xslthl:doccomment|xslthl:doctype" mode="xslthl">
      <span class="hl-doctype">
         <xsl:apply-templates mode="xslthl"/>
      </span>
   </xsl:template>
</xsl:stylesheet>
