<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                >

    <xsl:template match="Comptes">
        <html>
            <style>
                table
                {
                border-collapse: collapse;
                width: 100%;
                }
                td,th{

                border: 1px solid blue;
                width: 20%;
                height: 30px;


                }
                tr{
                text-align: center;
                }
                th{
                font-weight: bold;
                }
                .vert{
                background-color:green;
                }
                .jaune{
                background-color:yellow;
                }
            </style>
            <body>
                <table class="table">
                    <tr>
                        <th>Numero</th>
                        <th>Type</th>
                        <th>Date Creation</th>
                        <th>Solde</th>
                    </tr>
                    <xsl:for-each select="Compte">
                        <xsl:if test="Solde &gt; 100000">
                           <xsl:choose>
                               <xsl:when test="Solde &lt;= 200000">
                                   <tr class="vert">
                                       <td> <xsl:value-of select="Numero"/> </td>
                                       <td> <xsl:value-of select="Type"/> </td>
                                       <td> <xsl:value-of select="Date_creation"/> </td>
                                       <td > <xsl:value-of select="Solde"/> </td>
                                   </tr>
                               </xsl:when>
                               <xsl:otherwise>
                                   <tr class="jaune">
                                       <td> <xsl:value-of select="Numero"/> </td>
                                       <td> <xsl:value-of select="Type"/> </td>
                                       <td> <xsl:value-of select="Date_creation"/> </td>
                                       <td > <xsl:value-of select="Solde"/> </td>
                                   </tr>
                               </xsl:otherwise>
                           </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>