<%@ Page Title="belliGERENT Arena" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="belligerent_arena.aspx.vb" Inherits="belligerent_arena" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script type="text/javascript" src="extras/hoverscript.js"></script>

    <link rel="stylesheet" type="text/css" href="extras/hoverstyle.css" />
    <style type="text/css">
        .style5
        {
            font-family: Cambria;
        }
        .style6
        {
            font-family: Cambria;
            font-size: 20px;
        }
        .style7
        {
            font-family: Cambria;
            font-size: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />    <center><p style="color: #FFFFFF; margin-left: 40px; width: 150px;">
           <span style="color: #FFFFFF; font-family: Cambria; font-size:17px;"> 
        <a href="http://www.tcs.com"><img src="images/s-tcs.jpg" /></a></span><br />
           Presents</span><br />
<br />
    </p></center>
    <center>
        <span class="style5"><b style="color: white; font-size: 27px">belli</b></span><b
            style="color: white; font-size: 27px" class="style6"><span class="style5">GERENT</span></b></center>
    <div id="animmenu" class="noscript">
        <table align="center">
            <tr>
                <td>
                    <a href="belligerent.aspx"><span>Event</span></a>
                </td>
                <td>
                    <a href="belligerent_problem.aspx"><span>Problem Statement</span></a>
                </td>
                <td class="style8">
                    <a href="belligerent_rules.aspx"><span>Rules</span></a>
                </td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <td>
                    <a href="belligerent_contactus.aspx"><span>Contact Us</span></a>
                </td>
                <td>
                    <a href="belligerent_arena.aspx"><span>Arena Description</span></a>
                </td>
                <td>
                    <a href="belligerent_event_structure.aspx"><span>Event Structure</span></a>
                </td>
            </tr>
        </table>
    </div>
    <ul style="color: White; text-align: left">
        <li>
            <h3 class="style6">
                ARENA DESCRIPTION:</h3>
            <ul>
                <li class="style7">All rounds will consist of same arena.</li>
                <li class="style7">Arena will be of 7.0m x 1.5 m.</li>
                <li class="style7">Width of path will be 0.40m.</li>
                <li class="style7">Dimension of bridge(Wooden Block) is 0.35m x 0.20m x 0.06m.</li>
                <li class="style7">Width of Grass Zone and Sand Zone is 0.40m.</li>
                <li class="style7">Width of Defending zone is 0.70m.</li>
                <li class="style7">Width of dead zone is 0.10m.</li>
                <li class="style7">Diameter of rotating target is 0.50m.</li>
                <li class="style7">Width of trenches is 0.10m.</li>
                <li class="style7">Width of target 1 and Target 2 is 0.30 m.</li>
                <li class="style7">Height of Target 1 and Target 2 is 0.45m.</li>
                <li class="style7">Shortest distance from Target 1 to Firing Zone 1 is 1.5m.</li>
                <li class="style7">Shortest distance from Target 2 to firing zone 2 is 1m.</li>
                <li class="style7">Shortest distance of Trenches from sand zone is 1.5m</li>
                <li class="style7">Shortest distance of rotating target from Grass Zone is 2m.</li>
            </ul>
        </li>
    </ul>
    <img alt="TOP VIEW" src="images/TOP VIEW.png" height="247" width="550px" />
    <h1 style="text-align: center; color: White; font-size: 15pt;">&nbsp;
</h1>
    <img alt="SIDE VIEW" src="images/SIDE VIEW.png" height="350px" width="550px" />
    <h1 style="text-align: center; color: White; font-size: 15pt;">
        SIDE VIEW</h1>
    <p style="color: White; text-align: left" class="style7">
        Click to download arena images.</p>
        <ul>
    <a href="./images/TOP VIEW.png"  target="_blank" style="color: White; text-align: left"><li>TOP VIEW</li></a><br />
    <a href="./images/SIDE VIEW.png" target="_blank" style="color: White; text-align: left"><li>SIDE VIEW</li></a><br />
    </ul>
</asp:Content>
