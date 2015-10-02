<%@ Page Title="imBROGLIO Rules" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="imbroglio_rules.aspx.vb" Inherits="imbroglio_rules" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="extras/hoverscript.js"></script>
    <link rel="stylesheet" type="text/css" href="extras/hoverstyle.css" />
    <style type="text/css">
        .style6
        {
            font-family: Cambria;
            font-size: 17px;
        }
        .style11
        {
            font-family: Cambria;
            font-size:17px;
        }
        .style12
        {
            font-size: 17px;
        }
        .style13
        {
            font-size: 20px;
            font-family: Cambria;
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
    <center class="style11">
        <b style="color: white; font-size: 27px">imb</b><b 
            style="color: white; font-size:27px" class="style6;">ROGLIO</b></center>
    <div id="animmenu" class="noscript">
                <table align="center">
            <tr>
                <td>
                    <a href="imbroglio.aspx"><span>Event</span></a>
                </td>
                <td>
                    <a href="imbroglio_problem.aspx"><span>Problem Statement</span></a>
                </td>
                <td class="style8">
                    <a href="imbroglio_rules.aspx"><span>Rules</span></a>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <a href="imbroglio_event_structure.aspx"><span>Event Structure</span></a>
                </td>
                <td class="style8">
                    <a href="imbroglio_arena.aspx"><span>Arena Description</span></a>
                </td>
                <td>
                    <a href="imbroglio_contactus.aspx"><span>Contact Us</span></a>
                </td>
            </tr>
        </table>
    </div>
    <ul style="color: White; text-align: left">
        <li>
            <h3 class="style13">
                ROBOT SPECIFICATION:</h3>
            <ul class="style12">
                <li class="style11">The robot should be wireless manually controlled.</li>
                <li class="style11">The robot must fit into a box of dimension: 20X20X15 cm.</li>
                <li class="style11">Weight of robot should not exceed 2.5 kg.</li>
                <li class="style11">Dimensions may exceed after the beginning of event but shouldn’t
                    exceed the dimension mentioned above.</li>
                <li class="style11">Lego kits and complete car bases are not allowed.</li>
                <li class="style11">The potential difference between any two points of the robot should
                    not exceed 24V DC.</li>
            </ul>
        </li>
        <li>
            <h5 class="style13">
                GENERAL RULES:</h5>
            <ul>
                <li class="style11"><span class="style12">The team can have a maximum of 3 members, not necessarily of the
                    same institute.</li>
                <li class="style11">The name of the machine must be prominently displayed.</li>
                <li class="style11">The machine will be checked for its safety before the race and will
                    be discarded if found unsafe for other participants and spectators.</li>
                <li class="style11">One team-member will control the robot from a pre decided remote
                    location.</span></li>
                <li class="style6">
                    <p class="style12">
                        The team will be disqualified if:</p>
                    <ol type="a" class="style12">
                        <li class="style11">The robot damages the arena in any way.</li>
                        <li class="style11">If any team is found using any unfair means.</li>
                        <li class="style11">It is not ready at the time specified.</li>
                    </ol>
                </li>
                <li class="style11"><span class="style12">No part of the robot, intentionally or unintentionally, should be
                    left in the arena after the maximum allotted time. In such cases penalty will be
                    awarded.</li>
                <li class="style11">The organizers reserve the rights to change any or all of the rules
                    as they deem fit. Change in rules, if any will be highlighted on the website and
                    notified to the registered participants</li>
                <li class="style11">Judges decision shall be treated as final and binding on all.</span></li>
            </ul>
        </li>
    </ul>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
