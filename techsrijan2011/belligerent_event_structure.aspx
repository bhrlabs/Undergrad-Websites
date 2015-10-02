<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="belligerent_event_structure.aspx.vb" Inherits="belligerent_event_structure" %>

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
            font-size: 17px;
        }
        .style7
        {
            font-family: Cambria;
            font-size: 20px;
        }
        .style8
        {
            font-family: Cambria;
        }
        .style9
        {
            font-size: 17px;
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
    <center>
        <span class="style5"><b style="color: white; font-size: 27px">belli</b></span><b 
            style="color: white; font-size:27px" class="style6"><span class="style5">GERENT</span></b></center>
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
    <ul style=" color:White; text-align:left">
    <li><h3 class="style7">COMMON RULES FOR ALL ROUNDS:</h3>
    <ul class="style9">
    <li class="style8">All rounds will consist of same arena.</li>
    <li class="style8">Two teams will compete simultaneously.</li>
    <li class="style8">All the rounds will be knockout rounds.</li>
    <li class="style8">One team will be assigned as red team and the other as blue team. A toss will be done for the same.</li>
    <li class="style8">The robot has to move in a defined path</li>
    <li class="style8">The path is shown by grey colour in the diagram.</li>
    <li class="style8">Following the path is compulsory.</li>
    <li class="style8">The ball to be fired will be provided at arena and will be of the size of a normal table tennis ball.</li>
    <li class="style8">10 points will be deducted each time the robot deviates from the path.</li>
    <li class="style8">The team with lesser time will be preferred in case the two team gains same point.</li></ul></li>

    <li><h3 class="style7">ROUND 1:</h3>
    <ul class="style9">
    <li class="style8">Robot of both the teams will be placed at their respective starting point.</li>
    <li class="style8">The robot has to reach the LOC through a defined path.</li>
    <li class="style8">While driving to LOC the robot has to hit target 1 and target 2 once from each Firing zone.</li>
    <li class="style8">A maximum of 5 tries will be given to hit targets from a single zone.</li>
    <li class="style8">Each hit will gain 50points and each shot miss will lead to -10 points.</li>
    <li class="style8">A maximum of 8 min. Will be given to both the teams to complete the task.</li>
    <li class="style8">Top 16 teams with maximum points will move to next round.</li>
    </ul></li>

    <li><h3 class="style7">ROUND 2:</h3>
    <ul class="style9">
    <li class="style8">Robot of both the teams will be placed at their respective starting point.</li>
    <li class="style8">The robot has to reach the LOC through a defined path.</li>
    <li class="style8">While moving through the path, the robot will come through a number of pits. The robot should fill the pits with the help of blocks provided.</li>
    <li class="style8">While driving to LOC the robot has to hit target 1 and target 2 once from each cover zone.</li>
    <li class="style8">A maximum of 5 tries will be given to hit targets from a single zone.</li>
    <li class="style8">Each hit will gain 50points and each shot miss will lead to -10 points.</li>
    <li class="style8">A maximum of 8 min. Will be given to both the teams to complete the task.</li>
    <li class="style8">Top 8 teams with maximum points will move to next round.</li>
    </ul></li>

    <li><h3 class="style7">ROUND 3:</h3>
    <ul class="style9">
    <li class="style8">Robot of both the teams will be placed at their respective starting point.</li>
    <li class="style8">The robot has to reach the sand zone present after LOC (through a defined path) and hit trench no. 1 and 5 present on opponent’s area.</li>
    <li class="style8">While moving through the path, the robot will come through a number of pits. The robot should fill the pits with the help of blocks provided.</li>
    <li class="style8">The robot will also have to hit the target 1 and target 2 once from each cover zone.</li>
    <li class="style8">A maximum of 5 tries will be given to hit targets from a single zone.</li>
    <li class="style8">Each hit will gain 50points and each shot miss will lead to -10 points.</li>
    <li class="style8">A maximum of 12 min. Will be given to both the teams to complete the task.</li>
    <li class="style8">Top 4 teams with maximum points will move to semi-finals.</li>
    </ul></li>

    <li><h3 class="style7">SEMI-FINAL:</h3>
    <ul class="style9">
    <li class="style8">Robot of both the teams will be placed at their respective starting point.</li>
    <li class="style8">The robot has to reach the enemy base in minimum possible time.</li>
    <li class="style8">While moving through the path, the robot will come through a number of pits. The robot should fill the pits with the help of blocks provided.</li>
    <li class="style8">The robot will also have to hit the target 1 and target 2 once from each cover zone.</li>
    <li class="style8">When the robot reaches sand zone present after LOC (through a defined path), then it has to hit each trench (total 5) present on opponent’s area.</li>
    <li class="style8">The robot will then move to grass zone and have to hit the rotating target placed after trenches.</li>
    <li class="style8">Each hit will gain 50points and each shot miss will lead to -10 points for target 1 and target 2.</li>
    <li class="style8">Each hit will gain 20points and each shot miss will lead to -5 points for targeting the trench.</li>
    <li class="style8">Hitting all the 5 pits in a total of 5 attempts i.e. hitting each trench at a single try will result in a bonus 100 point.</li>
    <li class="style8">50 points will be awarded for hitting target 3. And 25 points will be reduced for each miss.</li>
    <li class="style8">Hitting target 3 is necessary.</li>
    <li class="style8">A total no. of 3 tries will be given for hitting target 1 and target 2.</li>
    <li class="style8">A total no. of 10 tries will be given to hit all the 5 trenches.</li>
    <li class="style8">Top 2 teams with maximum points will reach the finals.</li>
    </ul></li>
    <li><h3 class="style7">FINAL:</h3>
    <ul class="style9">
    <li class="style8">Robot of blue the team will be placed at its starting point and red’s team robot will be placed at defending zone.</li>
    <li class="style8">The robot at defending zone has to defend his area by hitting opponent’s robot while the other robot has to reach the enemy base in minimum possible time.</li>
    <li class="style8">Blue team is also allowed to hit red team’s robot after crossing LOC.</li>
    <li class="style8">If any of these robots get hit thrice then it will be considered as dead.</li>
    <li class="style8">While moving through the path, the robot will come through a number of pits. The robot should fill the pit with the help of blocks provided.</li>
    <li class="style8">The robot will also have to hit the target 1 and target 2 once from each cover zone.</li>
    <li class="style8">When the robot reaches sand zone present after LOC (through a defined path), then it has to hit each trench (total 5) present on opponent’s area.</li>
    <li class="style8">The robot will then move to grass zone and have to hit a rotating target 3 placed after trenches.</li>
    <li class="style8">Each hit will gain 50points and each shot miss will lead to -10 points for target1 and target 2.</li>
    <li class="style8">Each hit will gain 20points and each shot miss will lead to -5 points for targeting the trenches.</li>
    <li class="style8">Hitting all the 5 trenches in a total of 5 attempts i.e. hitting each trench at a single try will result in a bonus 100 point.</li>
    <li class="style8">Different points will be written at different portion of target 3 and the same will be awarded for hitting that portion. 25 points will be reduced for each miss.</li>
    <li class="style8">Hitting target 3 is necessary.</li>
    <li class="style8">A total no. of 3 tries will be given for hitting target 1 and target 2.</li>
    <li class="style8">A total no. of 10 tries will be given to hit all the 5 trenches.</li>
    <li class="style8">Same round will be played by interchanging the position of robot.</li>
    <li class="style8">The team with maximum points will be the winner.</li>
    </ul></li>
    </ul>
    <br class="style6" />
    <br class="style6" /><br class="style6" /><br class="style6" /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

