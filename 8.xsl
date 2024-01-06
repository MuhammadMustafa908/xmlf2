<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/company">
    <html>
        <head>
            <title>work</title>
            <style>
                body{
                    background-color:black;
                    color:white;
                }
                h2{
                    background-color:cyan;
                    text-align:center;
                    font-size:50px;
                    font-weight:bold;
                    color:black;
                }
                table{
                    margin-left:380px;
                    box-shadow:3px 3px 4px 4px blue;
                    font-weight:bold;
                }
            </style>
        </head>
        <body>
            <h2>EMPLOYEE DATA</h2>

            <table border="2" cellspacing="20px" cellpadding="15px">
                <tr>
                    <marquee behavior="" direction="">WORK DONE👍</marquee>
                </tr>
                <tr>
                    <th bgcolor="teal" colspan="5">DATA</th>
                </tr>
                <tr>
                    <th bgcolor="grey">ID</th>
                    <th bgcolor="grey">NAME</th>
                    <th bgcolor="grey">SALARY</th>
                    <th bgcolor="grey">JOINING DATE</th>
                    <th bgcolor="grey">POSITION</th>
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