<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="BOOKDETAILS">
        <html>
            <style>
                table
                {
                border-collapse: collapse;
                width: 90%;
                margin:auto
                }
                td,th{

                border: 1px solid black;
                width: 20%;
                height: 30px;


                }
                td{
                background:#ddd;
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

                <!-- PRESENTATION 1 START-->
                <h1 style=" font-weight: bold;color: blue; text-align: center;font-size: 30px;border:solid 1px black;  width: 80%;margin:auto; margin-bottom:30px">PRESENTATION 1</h1>
                <xsl:for-each select="BOOK">
                    <div style="border-bottom: solid 1px #ddd">
                    <ul>
                        <li>
                            TITLE : <xsl:value-of select="TITLE"/>
                        </li>
                        AUTHOR : <xsl:value-of select="AFNAME"/> <xsl:value-of select="ALNAME"/><br/>
                        PRICE : <xsl:value-of select="PRICE"/><br></br>
                        QUANTITY : <xsl:value-of select="QUANTITY"/>
                    </ul>

                    </div>

                </xsl:for-each>
                <!-- PRESENTATION 1 START-->

                <!-- PRESENTATION 2 START-->
                <h1 style=" font-weight: bold;color: blue; text-align: center;font-size: 30px;border:solid 1px black;  width: 80%;margin:auto; margin-bottom:50px;margin-top:50px">PRESENTATION 2</h1>


                    <table>
                        <tr>
                            <th>TITLE</th>
                            <th>AUTHOR</th>
                            <th>PRICE</th>
                            <th>QUANTITY</th>
                        </tr>
                        <xsl:for-each select="BOOK">
                            <tr>
                                <td><xsl:value-of select="TITLE"/></td>
                                <td><xsl:value-of select="AFNAME"/> <xsl:value-of select="ALNAME"/></td>
                                <td><xsl:value-of select="PRICE"/></td>
                                <td><xsl:value-of select="QUANTITY"/></td>
                            </tr>
                          </xsl:for-each>
                    </table>

                <!-- PRESENTATION 2 START-->

                <!-- PRESENTATION 3 START-->
                <h1 style=" font-weight: bold;color: blue; text-align: center;font-size: 30px;border:solid 1px black;  width: 80%;margin:auto; margin-bottom:50px;margin-top:50px">PRESENTATION 3 Les livres dont le prix est entre 15 et 40</h1>


                    <table>
                        <tr>
                            <th>TITLE</th>
                            <th>AUTHOR</th>
                            <th>PRICE</th>
                            <th>QUANTITY</th>
                        </tr>
                        <xsl:for-each select="BOOK">
                            <xsl:if test="PRICE &lt;= 40">
                                <xsl:if test="PRICE &gt;=15">
                                    <tr>
                                        <td><xsl:value-of select="TITLE"/></td>
                                        <td><xsl:value-of select="AFNAME"/> <xsl:value-of select="ALNAME"/></td>
                                        <td><xsl:value-of select="PRICE"/></td>
                                        <td><xsl:value-of select="QUANTITY"/></td>
                                    </tr>
                                </xsl:if>
                            </xsl:if>
                          </xsl:for-each>
                    </table>

                <!-- PRESENTATION 3 START-->
          <!-- PRESENTATION 4 START-->
                <h1 style=" font-weight: bold;color: blue; text-align: center;font-size: 30px;border:solid 1px black;  width: 80%;margin:auto; margin-bottom:50px;margin-top:50px">PRESENTATION 4 Les livres qui sont moins d’une centaine pour un auteur donné</h1>


                    <table>
                        <tr>
                            <th>TITLE</th>
                            <th>AUTHOR</th>
                            <th>PRICE</th>
                            <th>QUANTITY</th>
                        </tr>
                        <xsl:for-each select="BOOK[sum(QUANTITY) &gt; 100]">

                                    <tr>
                                        <td><xsl:value-of select="TITLE"/></td>
                                        <td><xsl:value-of select="AFNAME"/> <xsl:value-of select="ALNAME"/></td>
                                        <td><xsl:value-of select="PRICE"/></td>
                                        <td><xsl:value-of select="QUANTITY"/></td>
                                    </tr>

                          </xsl:for-each>
                    </table>

                <!-- PRESENTATION 4 START-->
  <!-- PRESENTATION 5 START-->
                <h1 style=" font-weight: bold;color: blue; text-align: center;font-size: 30px;border:solid 1px black;  width: 80%;margin:auto; margin-bottom:50px;margin-top:50px">PRESENTATION 5 Les livres de l’auteur John GRISHAM</h1>


                    <table>
                        <tr>
                            <th>TITLE</th>
                            <th>AUTHOR</th>
                            <th>PRICE</th>
                            <th>QUANTITY</th>
                        </tr>
                        <xsl:for-each select="BOOK">
                            <xsl:if test="normalize-space(AFNAME) = 'JOHN'">
                                <xsl:if test="normalize-space(ALNAME) = 'GRISHAM'">
                                    <tr>
                                        <td><xsl:value-of select="TITLE"/></td>
                                        <td><xsl:value-of select="AFNAME"/> <xsl:value-of select="ALNAME"/></td>
                                        <td><xsl:value-of select="PRICE"/></td>
                                        <td><xsl:value-of select="QUANTITY"/></td>
                                    </tr>
                                </xsl:if>
                            </xsl:if>
                          </xsl:for-each>
                    </table>

                <!-- PRESENTATION 5 START-->

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>