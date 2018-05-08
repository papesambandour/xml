<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xsd="http://www.w3.org/1999/XSL/Transform">

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
            </style>
            <body>
                <table class="table">
                    <tr>
                        <th>Numero</th>
                        <th>Type</th>
                        <th>Date Creation</th>
                        <th>Solde</th>
                    </tr>
                    <xsd:for-each select="Compte">
                        <tr>
                            <td> <xsl:value-of select="Numero"/> </td>
                            <td> <xsl:value-of select="Type"/> </td>
                            <td> <xsl:value-of select="Date_creation"/> </td>
                            <td> <xsl:value-of select="Solde"/> </td>
                        </tr>
                    </xsd:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>