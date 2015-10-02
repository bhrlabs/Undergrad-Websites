<%@ Page Title="imBROGLIO Event Structure" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="imbroglio_event_structure.aspx.vb" Inherits="imbroglio_event_structure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            font-size: 22px;
        }
        .style7
        {
            font-family: Cambria;
            font-size: 17px;
        }
        .style8
        {
            font-family: Cambria;
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <br />    <center><p style="color: #FFFFFF; margin-left: 40px; width: 150px;">
           <span style="color: #FFFFFF; font-family: Cambria; font-size:17px;"> 
        <a href="http://www.tcs.com"><img src="images/s-tcs.jpg" /></a></span><br />
           Presents</span><br />
<br />
    </p></center>
    <center class="style5">
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
                <td>
                    <a href="imbroglio_rules.aspx"><span>Rules</span></a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="imbroglio_event_structure.aspx"><span>Event Structure</span></a>
                </td>
                <td>
                    <a href="imbroglio_arena.aspx"><span>Arena Description</span></a>
                </td>
                <td>
                    <a href="imbroglio_contactus.aspx"><span>Contact Us</span></a>
                </td>
            </tr>
        </table>
        </div>
    <ul style=" color:White; text-align:left">
    <li><h3 class="style6">COMMON RULES:</h3>
        <ol>
        <li class="style7">Each round will consist of a maze.</li>
        <li class="style7">Pattern of maze will be changed after each round.</li>
        <li class="style7">Maze pattern of the semi final and final round will be disclosed during the event itself.</li>
        </ol>
    </li>
    <li><h5 class="style8">ROUND 1:</h5>
        <ol>
        <li class="style7">Your robot will be placed at starting point of the maze.</li>
        <li class="style7">You have to reach the end point of the maze in minimum possible time.</li>
        <li class="style7">A maximum of 8min. will be given to complete the path.</li>
        <li class="style7">Top 16 teams with minimum timing than others will qualify for the next round.</li>
        </ol>
    </li>
    <li><h5 class="style8">ROUND 2:</h5>
        <ol>
        <li class="style7">Your robot will be placed at the starting point of another maze.</li>
        <li class="style7">Rest rules are same as round 1 except that maximum time limit to reach the end point will be of 10min.</li>
        <li class="style7">Top 8 teams with minimum timing will qualify for the next round.</li>
       </ol>
    </li>
    <li><h5 class="style8">ROUND 3:</h5>
        <ol>
            <li class="style7">Robot will be placed at starting point of the arena.</li>
            <li class="style7">A ball will be placed at some place in the arena (as shown in figure MAZE-3).</li>
            <li class="style7">The robot has to find the ball and drag it to the end point.</li>
            <li class="style7">A maximum time of 12min. will be given to complete the task.</li>
            <li class="style7">Top 4 teams taking the least time will reach the semi-finals.</li>
        </ol>
    </li>
    <li><h3 class="style6">SEMI-FINAL:</h3>
        <ol>
            <li class="style7">Robot will be placed at the starting point of the arena.</li>
            <li class="style7">Some balls will be placed at different colour zones assigned to the arena.</li>
            <li class="style7">The robot has to collect the ball at different colour zones and place them at their respective colour pockets and then have to reach the end point.</li>
            <li class="style7">All the teams will be given a diagram of arena consisting of all the hurdles and zones they are required to pass.</li>
            <li class="style7">They have to find out the path to the end point with the help of a diagram provided.</li>
            <li class="style7">There will be some hurdles like speed breakers, constantly opening and closing doors, autonomous robots moving to and fro constantly to block the path.</li>
            <li class="style7">A penalty of +2 minutes will be added to the total time if the robot touches the autonomous robot or the door.</li>
            <li class="style7">A maximum of 18min. will be given to complete the task.</li>
            <li class="style7">The team performing first will receive the diagram of arena earlier than the rest teams.</li>
            <li class="style7">While one team will be performing the task, other teams will be taken to a different place so that they wouldn’t be able to see the arena. This is done to keep the event neutral.</li>
            <li class="style7">Top 2 teams with minimum time will reach the FINALS.
            </li>
        </ol>
    </li>
    <li><h3 class="style6">FINAL:</h3>
        <ol>
            <li class="style7">One team will be assigned as red team and the other team will be assigned as blue team. A toss will be done to decide the same.</li>
            <li class="style7">Robot of the teams will be placed at their respective start point.</li>
            <li class="style7">Both the teams will then be given a diagram of arena consisting of all the hurdles and zones they are required to pass. The diagram will not consist of opponent’s zone and hurdles.</li>
            <li class="style7">Some balls will be placed at different colour zones assigned to the arena.</li>
            <li class="style7">The robot has to collect the ball at different colour zones, place them at their respective colour pockets and then have to reach the end point.</li>
            <li class="style7">Some hurdles like speed breakers, constantly opening and closing doors, autonomous robot constantly moving to and fro will be present on arena.</li>
            <li class="style7">A penalty of +3 minutes will be added to the total time if the robot touches the autonomous robot or the door.</li>
            <li class="style7">A wall follower robot will be present which will follow the walls towards the exit, thus helping you to reach the end point.</li>
            <li class="style7">The wall follower will be activated as soon as you place the yellow ball into its pocket.</li>
            <li class="style7">A penalty of +3 minutes will be added to total time if the robot hits the wall follower robot.</li>
            <li class="style7">The team with least time will be the winner. </li>
        </ol>
    </li>
    </ul>
</asp:Content>

