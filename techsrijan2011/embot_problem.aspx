<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="embot_problem.aspx.vb" Inherits="embot_problem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" src="extras/hoverscript.js"></script>

<link rel="stylesheet" type="text/css" href="extras/hoverstyle.css" />
    <style type="text/css">
        .style7
        {
            font-size: 17px;
        }
        .style8
        {
            font-size: 20px;
        }
        .style9
        {
            font-size: x-small;
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
        <b style="color: white; font-size: 27px">em-</b><b 
            style="color: white; font-size:27px" class="style6;">BOT</b></center>
    <div id="animmenu" class="noscript">
        <table align="center">
            <tr>
                <td>
                    <a href="embot.aspx"><span>Event</span></a>
                </td>
                <td>
                    <a href="embot_problem.aspx"><span>Problem Statement</span></a>
                </td>
                <td class="style8">
                    <a href="embot_rules.aspx" class="style9"><span>Rules</span></a>
                </td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <td>
                    <a href="embot_contactus.aspx"><span>Contact Us</span></a>
                </td>
                <td>
                    <a href="embot_arena.aspx"><span>Arena Description</span></a>
                </td>
                 <td>
                    <a href="embot_judgement.aspx"><span>Judgement Criteria</span></a>
                </td>
            </tr>
        </table>
    </div>
    <br /><br />
    <p style="color:White; text-align:left" class="style7">
    To design a multi-tasking robot with a wireless controlled arm which can follow a specific path and perform the given task from the wireless 
    controlled arm, robot should be made in such a way that it can be operated from a laptop  for battling  in a robo war.
    </p>
    <ol style="color:White; text-align:left" class="style5">
        <li>
        <h3 class="style8">Definition of A Match</h3>
        <ul class="style7"><li>Two robots will simultaneously  start from different ends of the arena from starting points of dimension 35cmX35cm.Two boxes of dimensions 5cmX5cmX 5cm will be placed on the robot at the starting point.</li>
            <li>After covering certain distance on the zigzag  path( black line) of width 4.5cm,it will encounter a stopping signal which will be active for 30seconds .In this duration robot has to perform a task of placing two boxes(placed on the robot)  in a specified area next to the stopping signal ( which is 15 cm from centre of line) using a "wireless controlled arm".</li>
            <li>After 30sec the stopping signal will get deactivated and the robot will start following its usual path and will reach the sumo ring which is 10cm above the ground. The robot reaching the sumo ring first will be given some advantage.</li>
            <li>In the sumo ring the robots will be controlled by the laptop ,it could be wired or wireless.The Sumo match consists of up to three rounds of  two minutes each round.The robot first thrown out of the ring will lose,each sumo match will of 50 points.</li>
            <li>The robot must be ready at the appointed time. A referee may declare a round or entire match lost if a robot isn't punctually prepared to compete.</li>
            <li>Throughout the contest, the algorithms, settings, and components on the robot can be shaped, angled, or configured differently for facing each opponent and being placed in different starting positions. </li>
        </ul>
        </li>
        
        <li><h3 class="style8">End Of Round</h3>
            <ul><li class="style7">At the end of a round, the contestants retrieve their robots and prepare them for the next round.The robots will be forwarded on the basis of their total points .</li>
            </ul>
        </li>

        <li><h3 class="style8">Starting</h3>
            <ul><li class="style7">Both contestants place their fingers on their robot's starting buttons and await the referee's signal. If a problem is encountered before the referee says, "go", a contestant may alert the referee, without penalty, that the robot isn't ready. (Commonly, a robot may fall or slip when a finger is place over the start button.)</li>
            </ul>
        </li>

        <li><h3 class="style8">Clear Exterior </h3>
            <ul><li class="style7">Upon pressing the start buttons, the contestants immediately leave the exterior area around the ring. During the round, all people and objects must be kept out of the ring and exterior area to avoid distracting the robots or altering the outcome.</li>
            </ul>
        </li>
    </ol>
        <br class="style5" />
        <br class="style5" />
        <br class="style5" />
        <br class="style5" />
        <br class="style5" />
        <br class="style5" />
        <br class="style5" />
        <br class="style5" />
        <br class="style5" />
        <br class="style5" />
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

