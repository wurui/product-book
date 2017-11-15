<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.product-book">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-product-book" ox-mod="product-book">
            <h3>
                <img src="{data/title/icon}"/><xsl:value-of select="data/title/title"/>
                <sub><xsl:value-of select="data/title/subtitle"/></sub>
            </h3>
            <ul>
            	<xsl:for-each select="data/product-list/i">
            		<li>
            			<a href="{href}">
            				<span class="right">
            					<em class="price">
            						<xsl:value-of select="price"/>
            					</em>
            					<br/>
            					<b class="bt-book">预订</b>
            				</span>
		            		<b class="title">
		            			<span class="line3"><xsl:value-of select="title"/></span>
		            		</b>
		            		<br/>
		            		<span class="bottom">
		            			<xsl:if test="count(tags/i) &gt; 0">
			            			<span class="tags"><xsl:copy-of select="tags/i"/></span>
			            		</xsl:if>
		            			<xsl:if test="sold &gt; 0">
			            			<span class="sold">月销:<xsl:value-of select="sold"/>份</span>
			            		</xsl:if>
		            		</span>
	            		</a>
            		</li>
            	</xsl:for-each>
            </ul>
            <div class="bottom-button">
                <a href="{data/a-link/href}"><xsl:value-of select="data/a-link/title"/></a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
