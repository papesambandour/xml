<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="MemoireFinEtude">
        <html>
            <style>
                table
                {
                border-collapse: collapse;
                width: 100%;
                }
                thead{
                    background:green;
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
            <body style="margin:50px 20px">

                        <div class="container">
                            <h1 style="color:blue;text-align:center">ETUDIANTS </h1>
                            <table>
                                <thead>
                                    <tr>
                                        <th>NOM</th>
                                        <th>PRENOM</th>
                                        <th>ADRESSE</th>
                                        <th>DATE NAISSANCE</th>
                                        <th>LIEU NAISSANCE</th>
                                        <th>SEXE</th>
                                        <th>LOGIN</th>
                                        <th>PASSWORD</th>
                                        <th>ROLE</th>
                                        <th>DATE INSCRIPTION</th>
                                    </tr>
                                </thead>
                                <xsl:for-each select="Etudiant">
                                <tr>
                                    <td><xsl:value-of select="nom"/></td>
                                    <td><xsl:value-of select="prenom"/></td>
                                    <td><xsl:value-of select="adresse"/></td>
                                    <td><xsl:value-of select="dateNaisse"/></td>
                                    <td><xsl:value-of select="lieuNaisse"/></td>
                                    <td><xsl:value-of select="sex"/></td>
                                    <td><xsl:value-of select="login"/></td>
                                    <td><xsl:value-of select="password"/></td>
                                    <td><xsl:value-of select="role"/></td>
                                    <td>
                                        <xsl:for-each select="dateInscription">
                                            <xsl:value-of select="jj"/> -
                                            <xsl:value-of select="mm"/> -
                                            <xsl:value-of select="aa"/>
                                          </xsl:for-each>
                                    </td>
                                </tr>
                                </xsl:for-each>
                            </table>
                        </div>

                <div class="container">
                    <h1 style="color:blue;text-align:center">PROFESSEURS </h1>
                    <table>
                        <thead>
                            <tr>
                                <th>NOM</th>
                                <th>PRENOM</th>
                                <th>ADRESSE</th>
                                <th>DATE NAISSANCE</th>
                                <th>LIEU NAISSANCE</th>
                                <th>SEXE</th>
                                <th>LOGIN</th>
                                <th>PASSWORD</th>
                                <th>ROLE</th>
                                <th>DATE INSCRIPTION</th>
                                <th>DOMAINE </th>
                                <th>GRADE </th>
                            </tr>
                        </thead>
                        <xsl:for-each select="Prof">
                            <tr>
                                <td><xsl:value-of select="nom"/></td>
                                <td><xsl:value-of select="prenom"/></td>
                                <td><xsl:value-of select="adresse"/></td>
                                <td><xsl:value-of select="dateNaisse"/></td>
                                <td><xsl:value-of select="lieuNaisse"/></td>
                                <td><xsl:value-of select="sex"/></td>
                                <td><xsl:value-of select="login"/></td>
                                <td><xsl:value-of select="password"/></td>
                                <td><xsl:value-of select="role"/></td>
                                <td>
                                    <xsl:for-each select="dateInscription">
                                        <xsl:value-of select="jj"/> -
                                        <xsl:value-of select="mm"/> -
                                        <xsl:value-of select="aa"/>
                                    </xsl:for-each>
                                </td>
                                <td><xsl:value-of select="domain"/></td>
                                <td><xsl:value-of select="grade"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

                <div class="container">
                    <h1 style="color:blue;text-align:center">DIRECTEURS DES ETUDES </h1>
                    <table>
                        <thead>
                            <tr>
                                <th>NOM</th>
                                <th>PRENOM</th>
                                <th>ADRESSE</th>
                                <th>DATE NAISSANCE</th>
                                <th>LIEU NAISSANCE</th>
                                <th>SEXE</th>
                                <th>LOGIN</th>
                                <th>PASSWORD</th>
                                <th>ROLE</th>
                                <th>DATE INSCRIPTION</th>
                            </tr>
                        </thead>
                        <xsl:for-each select="DE">
                            <tr>
                                <td><xsl:value-of select="nom"/></td>
                                <td><xsl:value-of select="prenom"/></td>
                                <td><xsl:value-of select="adresse"/></td>
                                <td><xsl:value-of select="dateNaisse"/></td>
                                <td><xsl:value-of select="lieuNaisse"/></td>
                                <td><xsl:value-of select="sex"/></td>
                                <td><xsl:value-of select="login"/></td>
                                <td><xsl:value-of select="password"/></td>
                                <td><xsl:value-of select="role"/></td>
                                <td>
                                    <xsl:for-each select="dateInscription">
                                        <xsl:value-of select="jj"/> -
                                        <xsl:value-of select="mm"/> -
                                        <xsl:value-of select="aa"/>
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

                <div class="container">
                    <h1 style="color:blue;text-align:center">SUJETS</h1>
                    <table>
                        <thead>
                            <tr>
                                <th>TITRE</th>
                                <th>DESCRIPTION</th>
                            </tr>
                        </thead>
                        <xsl:for-each select="Sujet">
                            <tr>
                                <td><xsl:value-of select="titre"/></td>
                                <td><xsl:value-of select="description"/></td>

                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <div class="container">
                    <h1 style="color:blue;text-align:center">PAIEMENTS</h1>
                    <table>
                        <thead>
                            <tr>
                                <th>MONTANT</th>
                                <th>TYPE</th>
                                <th>DATE</th>
                            </tr>
                        </thead>
                        <xsl:for-each select="Paiement">
                            <tr>
                                <td><xsl:value-of select="montant"/></td>
                                <td><xsl:value-of select="typePaiement"/></td>
                                <td>
                                    <xsl:for-each select="datePaiement">
                                        <xsl:value-of select="jj"/>-
                                        <xsl:value-of select="mm"/>-
                                        <xsl:value-of select="aa"/>
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <div class="container">
                    <h1 style="color:blue;text-align:center">JURIES</h1>
                    <table>
                        <thead>
                            <tr>
                                <th>ID JURY</th>
                                <th>ID MEMBRE</th>
                                <th>ID PRESIDENT</th>
                                <th>DECISSION</th>
                            </tr>
                        </thead>
                        <xsl:for-each select="Jury">
                            <tr>
                                <td><xsl:value-of select="@idJury"/></td>
                                <td><xsl:value-of select="@membre_id"/></td>
                                <td><xsl:value-of select="@soutenance_presid_Iid"/></td>
                                <td><xsl:value-of select="decission"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <div class="container">
                    <h1 style="color:blue;text-align:center">MEMOIRES</h1>
                    <table>
                        <thead>
                            <tr>
                                <th>ID MEMOIRE</th>
                                <th>ID ETUDIANT</th>
                                <th>CONTENU</th>
                            </tr>
                        </thead>
                        <xsl:for-each select="Memoire">
                            <tr>
                                <td><xsl:value-of select="@idmemoire"/></td>
                                <td><xsl:value-of select="@proprietaire_id"/></td>
                                <td><xsl:value-of select="contenue"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <div class="container">
                    <h1 style="color:blue;text-align:center">SOUTENANCES</h1>
                    <table>
                        <thead>
                            <tr>
                                <th>ID SOUTENANCE </th>
                                <th>ID JURY </th>
                                <th>LIEUX </th>
                                <th>DATE</th>
                            </tr>
                        </thead>
                        <xsl:for-each select="Soutenance">
                            <tr>
                                <td><xsl:value-of select="@idSoutenance"/></td>
                                <td><xsl:value-of select="@jury_id"/></td>
                                <td><xsl:value-of select="lieuSoutenance"/></td>
                                <td>
                                    <xsl:for-each select="dateStenance">
                                        <xsl:value-of select="jj"/>-
                                        <xsl:value-of select="mm"/>-
                                        <xsl:value-of select="aa"/>
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

                <div class="container">
                    <h1 style="color:blue;text-align:center">FICHES DE SUIVIES</h1>
                    <table>
                        <thead>
                            <tr>
                                <th>ID FICHE </th>
                                <th>ID ETUDIANT </th>
                                <th>ID JURY </th>
                                <th>CONTENUE</th>
                            </tr>
                        </thead>
                        <xsl:for-each select="FicheSuivi">
                            <tr>
                                <td><xsl:value-of select="@idFiche"/></td>
                                <td><xsl:value-of select="@etudiant_id"/></td>
                                <td><xsl:value-of select="@prof_id"/></td>
                                <td><xsl:value-of select="contenueFich"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>



            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>