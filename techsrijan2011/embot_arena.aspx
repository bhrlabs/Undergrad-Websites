<%@ Page Title="em-BOT Arena" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="embot_arena.aspx.vb" Inherits="embot_arena" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" src="extras/hoverscript.js"></script>

<link rel="stylesheet" type="text/css" href="extras/hoverstyle.css" />
    <style type="text/css">
        .style7
        {
            font-family: Cambria;
            font-size: 17px;
        }
        .style8
        {
            font-size: 17px;
        }
        .style9
        {
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
   T<span class="style7">he arena is of dimension 6ft. by 5ft. which consists of two part .The first is zigzag path of width 4.5cm and the other is a mini sumo ring.
        </span>
    </p>
    <ol style="color:White; text-align:left" class="style5">
        <li>
        <h3 class="style9">Path follower</h3>
        <ul class="style7">
        <li>This section of arena consists of  zigzag  path of width 4.5cm.The robot has to start from a starting point of dimension 35cmX35cm 
        and follow the path.The area where boxes are to be placed is  of dim.40cmX30cm .The boxes are of dim.5cmX5cmX5cm(25gm).The surface of the 
        Path finder part is flat white</li>            
        </ul>
        </li>
        
        <li><h3 class="style9">The Ring </h3>
            <ul><li class="style7">The Mini Sumo ring is 100 centimetres in diameter, 10 centimetres in height from the ground .The surface of the Mini Sumo ring is flat white.  The border is gloss black and 4 centimetres in width.
                <center><img alt="embot arena" src="images/embot arena/pic1.png" height="400px" width="400px" /></center></li>
            </ul>
        </li>
        <li><h3 class="style9">Important Checkpoints</h3>
            <ul><li class="style7">Its the starting point of the robot with the dimensions 35cm*35 cm.
                <center><img alt="starting" src="images/embot arena/start.png" width="144px"  height="98px" /></center></li>
                <li><span class="style8">It's the next check point where the contestant need to place the boxes.<br /><br />
                    <p>These two digit figures will be placed on the robot base at the starting of the round. Such that on reaching the second check point they have to place them on the block below the MMMEC from the robot base by using a wireless controlled arm .</span></p>
                    <br /><br />
                    <center><img alt="starting" src="images/embot arena/mmmec.png" height="98px"  width="144px" /></center>
                    <p class="style8">This line signifies a stoping signal in which a black strip will be used to stop the robot.This strip will be change its color to white which signifies the end of the time which will be 30 sec .During this time the  contestant have to put the blocks on their place if the contestant is unable to complete the task the points will be deducted  and the change in the color will force the robot to move forward.</p>
                    <center><img alt="starting" src="images/embot arena/pic2.png" width="380px"  height="210px" /></center>
                    <center><img alt="starting" src="images/embot arena/pic3.png" width="384px"  height="247px" /></center>
                </li>
                <li><span class="style8">This check point signifies the end of the first phase after this the robot enter the battle field and now the robots will be laptop controlled for the robowar.
                    </span>
                    <br /><br />
                    <center><img alt="starting" src="images/embot arena/pic4.png" width="242px"  height="197px" /></center>
                </li>
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

