<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/data">
        <html>
            <head>
                <title>My CD Collection</title>
            </head>
            <style>
               
                
                body{
                    background-color: black;
                    color: white;
                    
                }
                h1{
                    text-align : center;
                    background-color :blue;
                    padding : 20px;
                    letter-spacing: 10px;
                    font-size: 30px;
                    font-weight: bold;
                    text-shadow : 3px 3px 3px black;

                }
                table{
                       margin-left: 395px;
                       box-shadow : 3px 3px 5px 5px teal; 
                }
            </style>
        </html>
        <body>
            <h1>My CD Collection</h1>

            <table border="2" cellspacing="20px" cellpadding="15px">
                <tr>
                    <th bgcolor="green">Title</th>
                    <th bgcolor="green">Artist</th>
                </tr>
                <xsl:for-each select="collection">
                    <tr>
                        <td><xsl:value-of select="title"></xsl:value-of></td>
                        <td><xsl:value-of select="artist"></xsl:value-of></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </xsl:template>
</xsl:stylesheet>