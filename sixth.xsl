<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/bank">
    <html>
        <head>
            <title>TASK</title>
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
                       margin-left: 310px;
                       box-shadow : 3px 3px 5px 5px green; 
                }
            </style>
        </head>
        <body>
            <h1>EMPLOYEE TABLE</h1>
             
            <table border="2" cellspacing="15px" cellpadding="20px">
                <tr>
                    <marquee behavior="slow" direction="">XSL WORK✔</marquee>
                </tr>
            
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>SALARY</th>
                    <th>JOINING DATE</th>
                    <th>POSITION</th>
                </tr>

                <xsl:for-each select="employee">
                <tr>
                    <td><xsl:value-of select="id"></xsl:value-of></td>
                    <td><xsl:value-of select="name"></xsl:value-of></td>
                    <td><xsl:value-of select="salary"></xsl:value-of></td>
                    <td><xsl:value-of select="date"></xsl:value-of></td>
                    <td><xsl:value-of select="position"></xsl:value-of></td>

                </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>