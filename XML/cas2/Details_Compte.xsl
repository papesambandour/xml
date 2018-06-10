<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="Comptes">
        <html>
            <style>
                table
                {
                border-collapse: collapse;
                width: 50%;
                }
                td,th{

                border: 1px solid black;
                width: 20%;
                height: 30px;


                }
                tr{
                text-align: center;
                }
                th{
                font-weight: bold;
                }
                .container
                {
                border:solid black 1px;
                margin-bottom:50px;
                padding :25px
                }

            </style>
            <body style="margin:50px 200px">



                    <xsl:for-each select="Compte">
                        <div class="container">
                        <h1 style=" font-weight: bold;color: blue; text-align: center;font-size: 50px;border:solid 4px black;  width: 80%;margin:auto">BANK OF DAKAR</h1>
                        <h3 style="font-weight:bold;text-decoration: underline;font-size:40px">Bienvenue</h3>
                        <p style="font-size:30px;">Situation de votre compte N°<xsl:value-of select="Numero"/> ,
                            <xsl:choose>
                                <xsl:when test="Solde &gt; 0">
                                    <span style="color:red">Crediteur</span>
                                </xsl:when>
                                <xsl:when test="Solde = 0">
                                    <span style="color:orange">NULL</span>
                                </xsl:when>
                                <xsl:otherwise>
                                    <span style="color:blue">Debiteur</span>
                                </xsl:otherwise>
                            </xsl:choose>
                        </p>
                            <table>
                                <tr>
                                    <th>CODE CLIENT</th>
                                    <th><xsl:value-of select="CodeClient"/></th>
                                </tr>
                                <tr>
                                    <th>SOLDE</th>
                                    <th><xsl:value-of select="Solde"/></th>
                                </tr>
                                <tr>
                                    <th>TYPE COMPTE</th>
                                    <th><xsl:value-of select="Type"/></th>
                                </tr>
                                <tr>
                                    <th>NOM CLIENT</th>
                                    <th>GGGG</th>
                                </tr>
                                <tr>
                                    <th>PRENOM CLIENT</th>
                                    <th>GGG</th>
                                </tr>
                                <tr>
                                    <th>ADRESSE</th>
                                    <th>FFF</th>
                                </tr>
                                <tr>
                                    <th>TEL CLIENT</th>
                                    <th>FFF</th>
                                </tr>
                            </table>
                            <h3 style="font-weight:bold;font-size:40px">Mercie !</h3>

                        </div>
                    </xsl:for-each>


            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>