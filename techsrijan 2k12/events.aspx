<%@ Page Language="C#" AutoEventWireup="true" CodeFile="events.aspx.cs" Inherits="events" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>Eventbook | techSRIJAN 2012 - The annual Techno-management festival, MMMEC Gorakhpur</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"> 
        <meta name="description" content="Experimental Page Layout Inspired by Flipboard" />
        <meta name="keywords" content="flip, pages, flipboard, layout, responsive, web, web design, grid, ipad, jquery, css3, 3d, perspective, transitions, transform" />
        <meta name="author" content="" />
        <link rel="shortcut icon" href="../favicon.ico"> 
		<!--<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700,300,300italic' rel='stylesheet' type='text/css'>-->
        <link rel="stylesheet" type="text/css" href="eventstyle/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="eventstyle/css/style.css" />
        <link href="images/favicon.gif" rel="icon" type="image/gif" />
		<script type="text/javascript" src="eventstyle/js/modernizr.custom.08464.js"></script>
		<script id="pageTmpl" type="text/x-jquery-tmpl">
			<div class="${theClass}" style="${theStyle}">
				<div class="front">
					<div class="outer">
						<div class="content" style="${theContentStyleFront}">
							<div class="inner">{{html theContentFront}}</div>
						</div>
					</div>
				</div>
				<div class="back">
					<div class="outer">
						<div class="content" style="${theContentStyleBack}">
							<div class="inner">{{html theContentBack}}</div>
						</div>
					</div>
				</div>
			</div>			
		</script>
        <style type="text/css">
         .contacts { text-align:justify; width:500px;}
         .downloadlink { color:Red; font-style:italic; }
         .downloadlink:hover { color:Green;}
        </style>
    </head>
    <body>
		
		<header class="main-title">
			<h1 id="ebook"><font style=" font-family:'Celtic Garamond the 2nd';">t</font>echSRIJAN<strong> 2012</strong></h1>
			<p>Swipe or drag to flip the pages, click to open items </p>
			<p><strong>Best viewed in a Google Chrome</strong></p>
		</header>
		
		<div id="flip" class="container">
		
			<div class="f-page f-cover">
				<div class="cover-elements">
					<div class="logo">
						
					</div>
					<h1>Swipe or Drag to flip the Page <a href="home.aspx">HOME</a></h1>
					<div class="f-cover-story"><span></span>EVENT BOOK</div>
				</div>
				<div class="f-cover-flip">&lt; Flip</div>
			</div>
            <%--index section--%>
            <div class="f-page ">
				<div class="f-title">
					<a href="home.aspx">Home</a>
					<h2>INDEX</h2>
					<a href="#"></a>
                 </div>   
                    <div class=" indxbox w-55 h-20; indx box-b-r">
                    <h2>techSHILP</h2>
                <ul>
                    <li><a href="events.aspx?page=4"><div class="indxImg"><img src="eventstyle/images/android.jpg" class="indxImg" /></div><h3>Android</h3></a></li>
                    <li><a href="events.aspx?page=4"><div class="indxImg"><img src="eventstyle/images/webkriti.jpg" class="indxImg" /></div><h3>webKRITI</h3></a></li>
                    <li><a href="events.aspx?page=4"><div class="indxImg"><img src="eventstyle/images/vhdl.jpg" class="indxImg" /></div><h3>VHDL</h3></a></li>
                   
                    <li><a href="events.aspx?page=4"><div class="indxImg"><img src="eventstyle/images/catia.jpg" class="indxImg" /></div><h3>catia/PRO-E</h3></a></li>
                </ul>
				</div>

                    <div class=" indxbox w-45 h-20; indx">
                    <h2>nirMAAN</h2>
                <ul>
                    <li><a href="events.aspx?page=3"><div class="indxImg"><img src="eventstyle/images/abinitio.jpg" class="indxImg" /></div><h3>abINITIO</h3></a></li>
                    <li><a href="events.aspx?page=3"><div class="indxImg"><img src="eventstyle/images/bridgekriti.jpg" class="indxImg" /></div><h3>bridgeKRITI</h3></a></li>
                    <li><a href="events.aspx?page=3"><div class="indxImg"><img src="eventstyle/images/1.jpg" class="indxImg" /></div><h3>sansCARBURANT</h3></a></li>
                    <li><a href="events.aspx?page=3"><div class="indxImg"><img src="eventstyle/images/junkyard.jpg" class="indxImg" /></div><h3>junkyardWARS</h3></a></li>
                </ul>
				</div>
                 <div class=" indxbox w-35 h-20; indx box-b-r">
                 <h2>roboKRITI</h2>
                <ul>
                    <li><a href="events.aspx?page=2"><div class="indxImg"><img src="eventstyle/images/robo2.jpg" class="indxImg" /></div><h3>Wired</h3></a></li>
                    <li><a href="events.aspx?page=2"><div class="indxImg"><img src="eventstyle/images/robo4.png" class="indxImg" /></div><h3>Wireless</h3></a></li>
                    <li><a href="events.aspx?page=2"><div class="indxImg"><img src="eventstyle/images/robo3.jpg" class="indxImg" /></div><h3>Autonomous</h3></a></li>
                </ul>
				</div>
                 <div class=" indxbox w-20 h-20; indx box-b-r">
                 <h2>quiZZES</h2>
                <ul>
                    <li><a href="events.aspx?page=6"><div class="indxImg"><img src="eventstyle/images/bizgyan.jpg" class="indxImg" /></div><h3>bizGYAN</h3></a></li>
                    <li><a href="events.aspx?page=6"><div class="indxImg"><img src="eventstyle/images/quiz.jpg" class="indxImg" /></div><h3>techNEETI</h3></a></li>
                </ul>
				</div>
                 <div class=" indxbox w-20 h-20; indx box-b-r">
                 <h2>abhiGYAAN</h2>
                <ul>
                    <li><a href="events.aspx?page=5"><div class="indxImg"><img src="eventstyle/images/resnova.jpg" class="indxImg" /></div><h3>resNOVA</h3></a></li>
                    <li><a href="events.aspx?page=5"><div class="indxImg"><img src="eventstyle/images/manthan.jpg" class="indxImg" /></div><h3>Manthan</h3></a></li>
                </ul>
                </div>
                <div class=" dragbox w-20 h-20">
                    <img src="eventstyle/images/drag2.gif" alt="DRAG" class="arrow" />
				</div>
				
                
                <div class=" indxbox w-20 h-20; indx box-b-r">
                <h2>techPRADARSHANI</h2>
                <ul>
                    <li><a href="events.aspx?page=8"><div class="indxImg"><img src="eventstyle/images/hardrachana.jpg" class="indxImg" /></div><h3>hardRACHANA</h3></a></li>
                    <li><a href="events.aspx?page=8"><div class="indxImg"><img src="eventstyle/images/softrachana.jpg" class="indxImg" /></div><h3>softRACHANA</h3></a></li>
                </ul>
				</div>
                <div class=" indxbox w-20 h-20; indx box-b-r">
                <h2>inCOGNITO</h2>
                <ul>
                    <li><a href="events.aspx?page=7"><div class="indxImg"><img src="eventstyle/images/informal.jpg" class="indxImg" /></div><h3>Informals</h3></a></li>
                    <li><a href="events.aspx?page=7"><div class="indxImg"><img src="eventstyle/images/langaming.jpg" class="indxImg" /></div><h3>Lan Gaming</h3></a></li>
                </ul>
				</div>
                <div class=" indxbox w-20 h-20; indx box-b-r">
                <h2>codZILLA</h2>
                <ul>
                    <li><a href="events.aspx?page=9"><div class="indxImg"><img src="eventstyle/images/codzilla.jpg" class="indxImg" /></div><h3>&nbsp;&nbsp;codZILLA</h3></a></li>
                </ul>
				</div>
                <div class=" indxbox w-20 h-20; indx box-b-r">
                <h2>venTURA</h2>
                <ul>
                    <li><a href="events.aspx?page=10"><div class="indxImg"><img src="eventstyle/images/ventura.jpg" class="indxImg" /></div><h3>venTURA</h3></a></li>
                </ul>
				</div>
                <div class=" indxbox w-20 h-20; indx box-b-r">
                <h2>techPRASTUTI</h2>
                <ul>
                    <li><a href="events.aspx?page=11"><div class="indxImg"><img src="eventstyle/images/techprastuti.jpg" class="indxImg" /></div><h3>techPRASTUTI</h3></a></li>
                </ul>
				</div>
                <div class=" indxbox w-20 h-20; indx box-b-r">
                <h2>Pixels</h2>
                <ul>
                    <li><a href="events.aspx?page=12"><div class="indxImg"><img src="eventstyle/images/pixels.jpg" class="indxImg" /></div><h3>Pixels</h3></a></li>
                </ul>
				</div>

                
			</div>
			<%--index section ends--%>

			<div class="f-page">
				<div class="f-title">
					<a href="home.aspx">Home</a>
					<h2>roboKRITI</h2>
					<a href="events.aspx?page=1">Back to INDEX</a>
				</div>
                
				<div class="box w-40 h-100 box-b-r">
					<div class="img-cont img-wireless"></div>
					<h3>Wireless Robotics</h3>
					<p style=" text-align:center; font-size:16px; font-style:italic;">&quot;Crooked and vague each step we tread,<br />
                        Unseen the danger, we escape the dread! <br />
                        But with delight we through the labyrinth range, <br />
                        Confused we turn, and view each artful change! <br />
                        Bewildered, through each wild meander bend, <br />
                        Our wandering steps, anxious to gain the end!&quot;</p>
                        <p>
                        Get geared to witness the finest robo-maniacs giving each other a hard time out. The most anticipated event roboKRITI is back and this 
                        time it's tougher or we should say if you want to be part of some serious robo-action then this is exactly the perfect time to cut-loose and 
                        prove your mettle. It’s time to lend wings of reality to all you’ve ever fantasized or have dreamt of in the domain of robotics.
                        </p>
<p>
<strong>Problem statement: <br /> </strong>
Build a manually controlled wireless robot which can ride on the given racing track in minimum possible time by avoid the hurdles. </p>
<p><strong>EVENT STRUCTURE<br /></strong>
<strong>
ROBOT SPECIFICATION <br /> </strong>
•	Robot should be wireless manually controlled.<br/>
•	The dimension of robot should not exceed 22*22 cm.<br/>
•	Dimensions may exceed after the beginning of event but shouldn’t exceed the dimension mentioned above. <br/></p>
<p> <strong> GENERAL RULES <br /> </strong>

•	One team-member will control the robot from a pre decided remote location. <br/>
•	The team will be disqualified if: <br/>
&nbsp;&nbsp;&nbsp;&nbsp;•	The robot damages the arena in any way. <br/>
&nbsp;&nbsp;&nbsp;&nbsp;•	If any team is found using any unfair means.<br/>
&nbsp;&nbsp;&nbsp;&nbsp;•	It is not ready at the time specified.<br/>
•	The team can have a maximum of 3 members, not necessarily of the same institute. <br/>
•	The name of the machine must be prominently displayed. <br/>
•	The organizers reserve the rights to change any or all of the rules as they deem fit. Change in rules, if any will be highlighted on the website and notified to the registered participants.<br/>
•	Judges decision shall be treated as final and binding on all.<br/></p>
<p>
<strong> COMMON RULES FOR ALL ROUNDS<br /> </strong>

•	Each round will consist of the racing track.<br/>
•	Starting and ending point will remain same in all the racing tracks.<br/>
•	One timeout of 2 min will be given to every robot other than that every time you touch the robot 30 sec will be added to the final time.<br/>
•	New hurdle will be introduced in every round.<br/>

<p>
                    <strong>Arena Description:<br /></strong>
                    <a href="pdf/robotix/wireless.jpg" class="downloadlink" target="_blank">Click here download the Arena description.</a>
                    </p>
<p><strong> ROUND:-1 <br /> </strong>
•	Robot will be placed at the starting point of the track.<br/>
•	Robot has to douche the 3 blocks placed at the starting of the track.<br/>
•	If the robot touches any of the block 10 sec for each block touched will be added to your final time.<br/>
•	If robot goes off the track then 10 sec will be added to your final time.<br/>
•	You will have to reach at the ending point in the minimum time possible through the track “A”.<br/>
•	Only 12 fastest teams will qualify for the next round.<br/></p>
<p> <strong> 
ROUND:-2 <br/></strong> 
All the rules are same as the round 1 except from the following….<br/>
•	Robot will have to the take track “B” to complete the race.<br/>
•	Robot have to pass without touching the rotating gate if it touched it then 20 sec will added to its final time, or if get stuck in it then 40 sec will be added to the final time.<br/>
•	Top 4 teams with minimum timing will qualify for the next round.<br/></p>
<p>
<strong>ROUND:-3</strong><br/>
All the rules are same as the round 1 except from the following….<br/>
•	Robot has to douche the 2 blocks placed at the starting of track.<br/>
•	Robot will have to take track “C” to complete the race.<br/>
•	A ball will be placed on the track the robot has to drag that ball to path “D”.<br/>
•	If the ball the ball goes into the whole in the track 30 sec will be added to the final time.<br/>
•	This will be knock out round winning team will qualify for the final.<br/> </p>
<p><strong> FINAL ROUND </strong> <br/>
All the rules are same as the round 1 except from the following….<br/>
•	Robot has to douche 2 blocks placed at the starting of track.<br/>
•	Robot has to take track “C” to complete the race in minimum time possible.<br/>
•	A switch will be located in the track your robot has to press that switch.<br/>
•	The switch will open the track “D” by which you can complete the race.<br/>
•	Robot has to press the correct button if your robot pressed the wrong button then it will open the path for your opponent team.<br/>
•	The team which completes the race first will be declared as the winner.<br/>
</p>
<p>
                    <strong>Contacts:<br /></strong>
                    Aviral Agarwal &nbsp;&nbsp;&nbsp; +91 8765108410<br />
                    Gagan Makhiza&nbsp;&nbsp;&nbsp; +91 7376583430<br />
                   Yogesh Sharma &nbsp;&nbsp;&nbsp;&nbsp;  +91 7376212782<br />
                    Shweta Sharma &nbsp;&nbsp;&nbsp;&nbsp;  +91 8765456871<br />
                    </p>

				</div>
				<div  class="box w-60 h-50 box-img-left ">
					<div class="img-cont img-auto"></div>
					<h3>Autonomous Robotics</h3>
					<p>   It's an era of automation. The seemingly unfathomable, intricate future depicted in movies suddenly seems so near. 
                    With the advent of new technologies by the day, robots would soon live in harmony with human-kind. They would be everyday 
                    objects and common assistants and workers for their </p>
                    <p>
                    A competition based on the perfection of the very basic - the task of overpowering the opponent, 
                    it is an innovative means to test the optimization skillfulness of budding robotics as well as pros. 
                    With the thrill to Over-power the opponents and an electrifying audience all around, 
                    this is your shot at fame with the perfect machine.
                    </p>
                    <p>
                    <strong>Rules:<br /></strong>
                    <b>Dimension:</b>Each robot is to be no larger than 25cm length by 20cm width by 15cm height at the start. Although sensor may present outside of the robot body.The robot can weigh no more than 1.5 kg.<br />
                    <b>Members per team:</b>The number of members is limited to a maximum of four (4 ). Students from different institutions can also make a team.<br />
                    <b>Sensors:</b>Any type of sensors may be used. <br />
                    <b>Power Supply:<br /></b>
                    &nbsp;&nbsp;&nbsp;&nbsp;•	Power supply must not exceed 12 V (DC or AC).<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;•	If needed, external power supply will be provided.<br />
                    </p>
                    <p>
                    <strong>Other Rules:<br /></strong>
                    •	There will 3 round over the duration of 3 days of techSRIJAN 2012<br />
                    •	Robot once entered the arena, no manual controlling should be done, else negative marks will be awarded.<br />
                    •	All robots will goes through all thethree (3) round. Winner will be decided on the basis cumulative marking of all the rounds.<br />
                    •	The Robot would be checked for their safety before the run and would be discarded if found unsafe for other participants and spectators.<br />
                    •	Any robot which damages the arena will be disqualified.<br />
                    •	Arena will be disclosed on the spot. Trial will be provided, after that 1 hour will be given to carry out any modification.<br />
                    •	2 time out will be allowed per round.<br />

                    </p>
                    <p>
                    <strong>Arena Description:<br /></strong>
                    <a href="pdf/robotix/autonomous.pdf" class="downloadlink" target="_blank">Click here download the Arena description.</a>
                    </p>
                    <p>
                    <strong>JUDGEMENT CRITERIA:<br /> </strong>
                    1.All robots will be measured, inspected, and weighed to verify qualification.<br /> 
                    2.A digital scale will be used for determining mass.  <br />
                    3.The robot will be inspected to be sure it is non-damaging and generally safe. <br />
                    4.Records will be kept to facilitate dispute resolution and tie breaking. <br />
                    5.If any unmentioned query occurs ,then the decision will be taken by the refree on the spot.<br />
                    </p>
                    <p>
                    <strong>Contacts:<br /></strong>
                    Ratan Deep Bhaskar&nbsp;&nbsp;&nbsp; +91 9559794269<br />
                    Ashanasingh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  +91 9794714392<br />
                    Sachin Kumar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   +91 8853671094<br />
                    PankhuriAgrawal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   +91 8960456072<br />
                    </p>
				</div>
                
                <div class="box w-60 h-50 box-img-left title-top">
					<div class="img-cont img-wired"></div>
					<h3>Wired Robotics</h3>
					<p style=" text-align:center; font-size:16px; font-style:italic;"> &quot;In the ring.In my mind<br />
                        Sparkling reality hard to find.<br/>
                        Warriorsmaintaina grip on reality.<br />
                        Warriors maintain a recognition of fantasy. <br />

                        Reality is in the training<br />
                        Fantasy is in courage entertaining<br />
                         Desire commitment is all 
                        that's remaining.&quot; </p>
                    <p>
                        The commencement of the Robo Era might have taken a long time, but it certainly didn't take much of a time to flourish and make 
                        its presence felt in various horizons of present world of technocrats. The world has mechanized so swiftly that the odd feeling of change 
                        is virtually undetectable. Man has found his own way of playing God by producing the ultimate creation of all time - a robot.
                        </p>
<p>
<strong>Problem statement: <br /> </strong>
Build a manually controlled wired robot which can lift a block and can situate it at the specified place. </p>
<p>
<strong> EVENT STRUCTURE <br /></strong>
<strong> ROBOT SPECIFICATION <br /><br /></strong>
• The dimension of the robot should not exceed 30 cm x 30 cm x 30 cm.<br />
• Dimensions may exceed after the beginning of event but shouldn’t exceed the dimension mentioned above.<br /><br />
<strong>GENERAL RULES<br /></strong>
• All rounds will consist of same arena.<br />
• Two teams will compete simultaneously.<br />
• All the rounds will be knockout rounds.<br />
• One team will be assigned as black team and the other as white team. A toss will done for the same.<br />
• The team will be disqualified if:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp• The robot damages the arena in any way.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp• If any team is found using any unfair means.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp• It is not ready at the time specified.<br />
• The team can have a maximum of 3 members, not necessarily of the same institute.<br />
• The name of the machine must be prominently displayed.<br />
• The organizers reserve the rights to change any or all of the rules as they deem fit. Change in rules, if any will be highlighted on the website and notified to the registered participants.<br />
• Judges decision shall be treated as final and binding on all.<br />
• Dimension of a patch is 10 cm X 10 cm.<br />
• Dimension of block is 8 cm X 8 cm.<br /></p>
<p>
<strong>COMMON RULES FOR ALL ROUNDS<br /></strong>
• Each round will consist of same arena.<br />
• Robot of both teams will be placed at respective starting point by climbing over a sloped path.<br />
• Time given in first three rounds is 10 minutes.<br />
• Teams will be judged on the basis of points scored by them.<br />
• One timeout of 2 minutes will be given to each team. Other than that if the Robot is touched by anyone, 30 points will be deducted.<br />
• In the final round, the team finishing first will be THE WINNNER.<br /></p>
<p>
                    <strong>Arena Description:<br /></strong>
                    <a href="pdf/robotix/wired.pdf" class="downloadlink" target="_blank">Click here download the Arena description.</a>
                    </p>
<p>
<strong>ROUND:-1</strong><br />
• Robot of both teams will be placed at respective starting point by climbing over a sloped path.<br />
• Robot has to first cross the ‘Patch Zone’.<br />
• 50 points will be rewards to each team for successfully crossing the ‘Patch Zone’.<br />
• Same number of blue, red and yellow colour blocks will be placed at a rotating disc.<br />
• Each Robot has to pick a particular colour block from disc.<br />
• 50, 75 and 100 points for picking red, blue and yellow blocks.<br />
• 100 points will be rewarded, for a successfully placing the blocks in the stores of their colour.<br />
• A successful placing of yellow block at 1st, 2nd and 3rd row of the ‘Patches’ will fetch 100, 75 and 50 points respectively.<br />
• The time given for the 1st round will be 10min.<br />
• Top teams will qualify for 2nd round<br /></p>
<p><strong>ROUND:-2</strong><br />
• Robot of both teams will be placed at respective starting point by climbing over a sloped path.<br />
• Robot has to pick hollow blocks from either the patch or the store.<br />
• 100 and 50 points will be rewarded for picking the block from the store and the patches respectively.<br />
• Robot has to drop the hollow blocks on the ‘Pillars’ (at the edge of rotating disc) of respective colour.<br />
• 100 points will be rewarded for dropping of each block at their respective colour ‘Pillar’.<br />
• 50 points will be deducted if block is dropped on wrong ‘Pillar’.<br />
• Time given for 2nd round will be 10 min.<br />
• Top four teams will qualify for semi-final.<br /></p>
<p>
<strong>ROUND:-3</strong><br />
• Robot of both teams will be placed at respective starting point by climbing over a sloped path.<br />
• Robot has to pick red and blue blocks from their respective stores and green block from patches.<br />
• Red and blue blocks will fetch 100 points. Green blocks will fetch 75 points.<br />
• The robot has to drop the block in the zone of same colour in a rotating ‘Circular Pyramid’.<br />
• In each zone, stopping the block at<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp• Upper slot will fetch 50 points<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• Middle slot will fetch 75 points<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp• Lower slot will fetch 100 points <br />
• Top two scorers will qualify for finals.<br /></p>
<p>
<strong>ROUND:-4<br /> </strong>
• Final qualifier teams will be called ‘Black Team’ and ‘White Team’.<br />
• Robot of Black and White team will be pinned with blue and red balloons respectively.<br />
• Both teams have to pick the blocks from store and place them in patches.<br />
• Robot has to pick the block having a pin only after all blocks are placed in patches.<br />
• Both Robots have to flatten the balloons of opponent's colour on a rotating disc. If a team flattens a balloon of its own colour, then that team has to flatten extra balloons on the same rotating disc.<br />
• After all the balloons on the rotating disc are flattened by a team, that team gets to enter the opponent’s area.<br />
• Finally, each team has to flatten the opponent’s body balloons.<br />
• A team can't attack opponent until it complete the task on the rotating disc.<br />
• The team doing so first will be THE WINNER.<br /></p>
<p>
                    <strong>Contacts:<br /></strong>
                    Aviral Agarwal &nbsp;&nbsp;&nbsp; +91 8765108410<br />
                    Gagan Makhiza&nbsp;&nbsp;&nbsp; +91 7376583430<br />
                   Yogesh Sharma &nbsp;&nbsp;&nbsp;&nbsp;  +91 7376212782<br />
                    Shweta Sharma &nbsp;&nbsp;&nbsp;&nbsp;  +91 8765456871<br />
                    </p>
		
				</div>
			</div>
			
			<div class="f-page">
				<div class="f-title">
					<a href="home.aspx">Home</a>
					<h2>nirMAAN</h2>
					<a href="events.aspx?page=1">Back to INDEX</a>
				</div>
				<div class="box w-55 h-50 box-b-r title-top box-img-left">
					<div class="img-cont img-abinitio"></div>
					<h3>abINITIO<span></span></h3>
<p><strong>Round I result<br /></strong> <a href="pdf/abinitio/ABN.pdf" class="downloadlink" target="_blank">Click here to view</a></p>
					<p>Don’t cover your feet with slippers ....Instead cover the earth with carpet!!
                        Yes!! Rube Goldberg's thinking was directly indirect... Shortcuts will lead you nowhere, and on the other hand elaborating the simplest of task can outstand you...
                        So boys and girls complicate the uncomplicated and give tribute to the late Rube Goldberg...
                        </p>
                    <p>
                    To water a plant using a Rube Goldberg Machine!!<br />
                    The starting step and the final step will be fixed for all the machines.
                    <ul>
                        <li><strong>Starting Step:</strong> Drop water from a height which starts off the machine.</li>
                        <li><strong>Final Step:</strong> Watering a plant (in a pot) symbolizing GO GREEN movement.</li>
                    </ul>
                    </p>
                    <p>
                    <strong>Event Format:<br /></strong>
                    The competition will be held in two rounds:<br />
                    •	For the first round, the teams have to submit an abstract for their machine latest by 15 October 2012. An abstract is basically a copy of a step-by-step description of their machine. Diagrams and pictures have to be included in this description along with the typed information. If any team fails to submit the copy of the abstract then they will automatically be disqualified from the event. <b>The Abstract has to be submitted at abinitio@techsrijan.org</b>.<br />
                    •	In the second round the short listed teams will be invited to present their machine in techSRIJAN 2012 at MMMEC and compete with the other teams.
                    </p>
                    <p>
                    <strong>Arena Demo:<br /></strong>
                    <a href="pdf/abinitio/abinitio2012.pdf" class="downloadlink" target="_blank">You can see a demo of arena here.</a>
                    </p>
                    <p><strong>Sample Abstract<br /></strong>
                    <a href="pdf/abinitio/abs1.pdf" class="downloadlink" target="_blank">Download sample abstract 1.</a><br />
                    <a href="pdf/abinitio/abs2.pdf" class="downloadlink" target="_blank">Download sample abstract 2.</a></p>
                    <p>
                    <strong>Materials:<br /></strong>
                    •	Each team will be provided with some of the common requirements for the rube machine and other facilities available in the college workshop.<br />
                    •	However, it is strongly advised to all the teams to carry any special tools, chemicals, etc. they will need for their rube, as every rube has different requirements.<br />
                    •	We will not be responsible in any manner for the availability of the materials required by the teams.<br />
                    </p>
                    <p>
                    <strong>Judging Criteria:<br /></strong>
                    
                    On the basis of the abstract submitted by the team, the short listing for the first round is going to be done. The judging criteria is as follows-
                    <ul>
                        <li><strong>Credits for number of total steps –</strong> Each step after the 15th step gives you a credit of +2.</li>
                        <li><strong>For the grading of an individual step–</strong>  Each step will be graded out of 10. It will comprise the innovation and complexity of the steps.</li>
                        <li><strong>Synchronization</strong> of any 2 (or greater than 2) parallel steps to trigger a new step can earn you extra credits depending on the complexity and feasibility.</li>
                        <li>Use of very common steps won’t earn you much credit.</li>
                    </ul>
                    </p>
                    <p>The judging criteria for the second round will be disclosed to the shortlisted teams only at the venue after the start of techSRIJAN 2012.</p>
                    <p>
                    <strong>Machine Specifications:<br /></strong>
                    •	The number of members in a team is restricted to five.<br />
                    •	The machine must complete the task as described in the challenge.<br />
                    •	The machine must be no larger than 12ft by 12ft and 8 ft height.<br />
                    •	The machine must have a minimum of fifteen (15) steps. There is no maximum number of steps.<br />
                    •	A step in the machine should be considered a transfer in energy from one action to another action. Identical transfers of energy in secession should be considered one step. For example, a set of dominos falling into each other should be considered one step. <br />
                    •	The machine must take no more than six (6) minutes per run.<br />
                    •	The machine will have a 25 minute reset time if they go for more than one run.<br />
                    •	Only two team members may interact with the machine once the evaluation has begun. This includes resetting the machine.<br />
                    •	No corporate logos or names may be displayed on the machines.<br />
                    •	The machine must not imply profane, indecent or lewd expressions.<br />
                    •	Any loose or flying objects must remain within the set boundaries of the machine.<br />
                    •	You are not allowed to use any electronic/electrical device requiring more than 12 volt DC supply.<br />
                    •	No power points would be supplied. However batteries may be used, which have to be arranged by the team themselves.<br />
                    •	No flames may be used on the machine.<br />
                    •	No hazardous materials or explosives can be used on the machine.<br />
                    •   Any destructive action against another machine is grounds for disqualification<br />
                    </p>
                    <p class="contacts">
                    <strong>Contacts:<br /></strong>
                    Aviral Agarwal +91 8765108410<br />
                    Apoorv Srivastava +91 8004724320<br />
                    Ayush Kr. Srivastava +91 8574323182<br />
                    Karishma Nagar +91 8542897179<br />
                    Heena Chaudhary +91 8005316032<br />
                    Arpita Sarcar +91 9532181931<br />

                    </p>
				</div>
				<div class="box w-45 h-50 box-img-left">
					<div class="img-cont img-bridgekriti"></div>
					<h3>bridgeKRITI<span></span></h3>
					<p>bridgeKRITI is an on the spot event, where you have to design, estimate and build an economical, 
                    strong and artistic model of a bridge to best suit the specified situation. 
                    It's time to transform and upgrade yourself from good to better. So come and be part of this extravaganza...</p>
                    <p>
                    <strong>Rules:<br /></strong>
                    •	A team can consist of maximum 3 participants.<br />
                    •	No material other than the material provided, can be used. <br />
                    •	The design of the bridge must be strictly according to the problem statement.<br />
                    •	The length, width and height of the bridge should not exceed the maximum limit declared just before launching the problem statement.<br />
                    •	The time for construction stage is 2 hours. <br />
                    •	Load testing will be done in presence of judges and their decision will be treated as final.<br />
                    </p>
                    <p>
                    <strong>Contacts:<br /></strong>
                    For any queries contact any of the event coordinators or mail us at <b>bridgekriti@techsrijan.org.</b>
                    </p>
				</div>
				<div class="box w-30 h-50 box-b-r title-top">
					<h3>sansCARBURANT<span></span></h3>
					<p>     Get your mind fueled with new ideas and great passion to design a tank that runs without any fuel.
                            sansCARBURANT challenges you to design a completely autonomous tank which, using your zeal and spirit as fuel, 
                            crushes the conspiracies your foes to disturb peace without fearing the hurdles in the path.
                    </p>
                    <p>
                    <strong>Problem Statement:<br /></strong>
                    You need to design an autonomous tank installed with a shooting  mechanism  capable of braking at a specific point  and shooting a table tennis ball without any manual involvement. The tank should not be power driven, rather it must use the momentum generated by the loss of potential energy  and finally halt within a predefined area, firing the ball.
                    </p>
                    <p>
                    <strong>Arena Description:<br /></strong>
                    <a href="pdf/sanscarburant/SansCARBURANT.pdf" class="downloadlink" target="_blank">Click to download Arena description</a>
                    </p>
                    <p>
                    <strong>Judgement Criteria:<br /></strong>
                    Each team will be given three trials. The best of the three will be considered for the final scoring.<br />
                    <b>Scoring scheme for the respective rounds -<br /></b>
                    <b>1. Round 1-</b> As given in Arena description:<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><i>GREEN ZONE-</i></u> It is the central region. Shooting from this region will fetch you 50 points.<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><i>YELLOW ZONE-</i></u> It is the mid region. Shooting from this region will fetch you 30 points.<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><i>RED ZONE-</i></u> It is the danger region. Shooting from this region will fetch you 0(zero) points.<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The position of the front wheels of the tank during shooting will decide the zone for the scoring.<br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The points for the target are marked in the figure 2.(in Arena description pdf)<br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total score for round 1 will be the cumulative sum of points scored in both the sections.   <br />
                    <b>1. Round 2-</b> The shortlisted teams from the round 1 will compete for 2nd round whose marking scheme will be displayed there only.<br />
                    </p>
                    <p>
                    <strong>Rules:<br /></strong>
                    1) There can be a maximum of 3 members in a team. The members in the same team can be of different institutions.<br />
                    2) The tank must be completely mechanical in structure. No electrical or electronic equipment should be installed on it. <br />
                    3) The machine should not be power driven. It should run only on the energy generated by gravitational pull. <br />
                    4) The tank must be completely autonomous in functionality, i.e. no human intervention will be allowed once the tank leaves the launch-pad. <br />
                    5) The maximum size for the tank should be 30cm x 30cm x 30cm. <br />
                    6) Any machine violating the above size specifications will be disqualified. <br />
                    7) The projectile will be of the size of a table tennis ball.<br />
                    8) Any damage to the arena or harm to the spectators caused by a tank will lead to immediate disqualification of the respective team.<br />

                    </p>
				</div>
				<div class="box w-70 h-50 title-top box-img-left ">
					<div class="img-cont img-junkyard"></div>
					
                    <h3>junkyardWARS<span></span></h3>
					<p>How good can you be at a show about nothing? That is it, make something efficient & beautiful out of the junk provided to you</p>
                    <p>Can you do something good out of the limited resources provided to you? Can you be the god of these small, creepy things? It is time to finally use your magic stick. Start getting down and dirty...</p>
                    <p> Scrap it up... 
                    </p>
                    <p>
                    <strong>Problem Statement:<br /></strong>
                    You have to design an EARTH MOVER (equipped with a basket ) which will be handled manually and able to hold up dirt efficiently.<br />
                    <b>Important points:<br /></b>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• Your basket must be in accordance with the specified measurement <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• Your mechanism should have both stability and feasibility.<br /> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;• The major task will be given at the end of event which will be revealed on the spot 
                    </p>
                    <p>
                    <strong>Specifications:<br /></strong>
                    •Basket should be max. 12” in diameter and should me semi sliced & semi cylindrical.<br />
                    •Mechanism should be able to extend from 0.25m to 1m
                    </p>
                    <p>
                    <strong>Note:<br /></strong>
                    1) The major task given to you in the end will be taken in account strictly.<br /> 
                    2) You need to make a design of model according to problem statement. <br />
                    3) You need to clearly mention all the specification and dimension of mechanism in your abstract. <br />
                    4) No use of hydraulics power is allowed for mechanism. <br />
                    5) No use of electrical motor is allowed for mechanism. <br />
                    6) No modification in engineis allowed <br />
                    </p>
                    <p>
                    <strong>List of junks:<br /></strong>
                    • Small Engine(50cc)<br /> 
                    • 3 Moped Tires <br />
                    • Moped front fork with steering handle and brakes <br />
                    • Nuts, bolts <br />
                    • Wooden planks <br />
                    • Rods <br /><br />
                    Every team can add one piece of junk to the list (The team should bring their additional junk list with them and this junk should not be any material that can boost the speed of the machine. The material to be used for mechanism should be mentioned in the abstract ). 
                    </p>
                    <p>
                    <strong>Facilities provided:<br /></strong>
                    • Arc Welding Machine <br />
                    • Drilling Machine <br />
                    • Lathe Machine <br />
                    • Grinding Machine <br /><br />
                    The availability of any other facility that you may need must be confirmed with the Coordinators at the time of abstract submission. 

                    </p>
                    <p>
                    <strong>Design Specifications:<br /></strong>
                    You need to provide answers to these questions about your design:-<br /> 
•	Clearly demonstrate the special features of your design, features that, in your opinion, are especially clever, effective and innovative. <br />
•	Point out the use of the materials in mechanism clearly. <br />
•	Clearly explain the idea and the working of the mechanism that you are using in your design. <br />
•	Your mechanism should meet the specifications given in problem statement.

                    </p>
                    <p>
                    <strong>Event Structure::<br /></strong>
                    The event consists of four rounds:<br />
                        <b>Online Round 1-<br /></b>
                        •	The online submission of the abstracts for the problem statement. <br />
                        •	Only one submission is allowed per team.<br /> 
                        •	No modifications can be made once the abstract have been submitted.<br />
                        •	Through these abstracts, teams will be shortlisted for the next round.<br />
                        <b>Online Round 2-<br /></b>
                        •	Those qualified in online round 1 will go to offline round 2 which is an interview<br /> 
                        •	Practical Problem solving skills of the participants shall be tested<br />
                        <b>On-campus Third Round-<br /></b>
                        •	After the interview, the top 3 teams would get a chance to materialize their solution 
                        •	They will be given a couple of days in the workshop to complete their machines based on their design 
                        •	The teams will have to perform the assigned task with their machines in the arena 
                        •	In this round, various aspects and features of their machines will be put to test in a specially designed arena 
                    </p>
                    <p>
                    <strong>ABSTRACT:<br /></strong>
                    You will need to present a drawing that illustrates your design clearly.<br /> 
                    •	The drawing may consist of isometric view only. You might draw orthographic views if needed. Your drawing should be well labeled. <br />
                    •	Last date of abstract submission is October 21, 2012.<br />
                    •	Mail all your entries to junkyardwars@techsrijan.org with your model`s design. <br />
                    •	Abstract should be in TIMES NEW ROMAN font. <br />
                    </p>
                    <p>
                    <strong>Rules:<br /></strong>
                    The instructions for the final round will be given at the time of the event. The testing/winning criteria of the models would be provided during the time of the event. <br />
                    •	The model should not leave anything behind during its entire mode of operation in the arena i.e. any model disintegration in itself during its motion will result into negative points. <br />
                    •	Any team that is not ready at the time specified will be fined according to the circumstances . <br />
                    •	The decision of the judges shall be treated as final and binding in any circumstance. <br />
                    •	A team must consist of 6 participants. <br />
                    •	The teams must adhere to the spirit of healthy competition. The COORDINATORS reserve the right to deduct marks of any team indulging in misbehavior. <br />
                    •	Only slight modifications in the abstract would be allowed when making the vehicle. <br />
                    •	The number of rounds and their contents are liable to change before the event and the change will be informed to all who register. <br />
                    •	All rights are reserved with the COORDINATORS. They may or may not disclose any information depending upon the information asked. They can change any rule at any time according to the situation.

                    </p>
                    <p>
                    <strong>Certification Policy </strong>
                    The top two teams would get a certificate of merit and the rest team from the final round would get a certificate for runner-ups 
                    </p>
                    <p>
                    <strong>Coordinators: <br /></strong>
                    For any queries contact us at <b>junkyardwars@techsrijan.org</b> or any of the coordinators<br />
                    Rahul Verma&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91 9005438989<br />
                    Deepak Yadav&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91 8574548728 <br />
                    Ashutosh Srivastava&nbsp;+91 9935771269 <br />
                    Kirti Jaiswal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91 9792963205<br />

                    </p>
				</div>
			</div>
			
			<div class="f-page">
				<div class="f-title">
					<a href="home.aspx">Home</a>
					<h2>techSHILP</h2>
					<a href="events.aspx?page=1">Back to INDEX</a>
				</div>
				<div class="box w-30 h-60 box-b-r title-top">
					<h3>Android App Challenge <span></span></h3>
					<p>Ready to really make Android yours? Here is a challenge to develop an android app thats gonna make you win some cool prizes !!</p>
                    <p><strong>CATEGORIES :<br /></strong>
                  
Live Wallpaper<br />
software<br  />
Entertainment<br  />
Education<br />
Games<br />
Media & Video<br />
Photography<br />
Sports<br />
Social Networking<br />
Lifestyle <br />
Productivity/Tools <br />
Health/Fitness<br />
</p>
<p><strong>Rules:</strong><br  />
1. A team may consist of maximum 2 members. <br  />
2. One team can submit up to 10 apps.<br  />
3. Mail all the apps to techshilp@techsrijan.org <br  />
4. Last date of submission is 2nd Nov.<br  />
5. All Apps submitted must be original work of the team.<br />
6. Judging would be done on the basis of the creativity, appeal and overall performance of the app.<br />
7. The decision of the judges will be final.<br />
</p>
<p><strong> Contacts: </strong><br  />
For any query mail us at <b> techshilp@techsrijan.org </b> or any of the coordinators :<br  />
Srijan Gupta &nbsp;&nbsp;&nbsp;&nbsp; +91 7599294151
</p></div>
				<div class="box w-70 h-60 box-img-left title-top">
					<div class="img-cont img-webkriti"></div>
					<h3>webKRITI <span></span></h3>
					<p>It plays host to billions of websites, it is browsed every second by millions. But still it is left wanting for more !!!</p>
                        <p>
                        It is so foppish that the more you adore it, the more it asks for. Do you accept this challenge...?</p>
                        <p>
                        The Cyber space beckons all the amateur web designers to embellish it with their creativity. 
                        Choose any of the platforms from among .NET, JAVA or MS FrontPage and give shape to your ideas. Leave the rest on our judges.</p>

				<p>
                    <strong>Problem Statement:<br /></strong>
                    Design a website which provides a platform to conduct mock/practice tests in different fields, like (Engineering , Verbal , Quant etc.),  and implementing the various functionalities mentioned below.
                   </p>
                    <p>
                    <strong>Specifications:<br /></strong>
                    1) Presentation & layout of website is very important in this regard. <br />

                    2) Registration & login features should be provided on the website with necessary details.<br />

                    3) Discussion forums shall be provided on the website itself open to all users (visiting and registered users both).<br />

                    4) Assuming that the test papers will be uploaded weekly, there must be a provision to display the papers to interested users only. <br />
                    Example:- If a user has registered itself for Practice test in Verbal English then paper uploaded for the same must be displayed to him, not to other users.<br />

                    5) There must be a timer facility attached to each and every paper uploaded, which will trigger as user starts attempting the paper.<br />

                    6) Website must implement minimum of 5 different fields in which user can choose to attempt practice tests.<br />

                    7) There should be a facility to add new fields (in which he can attempt the tests) to the existing account of the user.  <br />

                    8) There must be a provision to display the performance statistics of the user, which will include overall performance statistics and individual paper (per paper basis) performance analysis of the user. <br />

                    9) There should be a moderator & administrator login id's to monitor the users using discussion forum. Some job's that should be included are:- <br />
                        a) To temporarily disable/enable the users. <br />
                        b) Ban a user if he/she is found breaking the rules.<br />
                        c) Delete flaming, abusive posts etc. <br />

                    10) There should be maximum security for Admin and the website should be safe against security threats like SQL injection etc.<br />

                    11) The designed website should be compatible with prominent web browsers like Internet Explorer 8, Mozilla Firefox, Google Chrome, Opera etc. <br />

                    12) This website is just to provide an in general platform for covering test papers in as much fields as u can.<br />

                    </p>
                    <p>
                    <strong>Rules:<br /></strong>
                    
                1) Bonus points shall be awarded if captcha is used during registration process.<br />

                2) Bonus points will also be provided on the basis of interactivity of site with the user. <br />

                3) Bonus Points for Advertisement Column.<br />

                4) Points will be deducted if papers or data on the website can be manipulated in an unfair  way.<br />

                5) All the above features shall be given special priority compared to those which developers wish to add as per their own will. <br />

                6) There is no language bar, although using LAMP principle shall fetch slightly more marks compared to using any other web technology. <br />
                    [LAMP is an acronym for a solution stack of free, open source software, originally coined from the first letters of Linux (operating system), Apache HTTP Server, MySQL (database software) and PHP/Perl/Python, principal components to build a viable general purpose web server.]<br />

                7) Its a team event and a team can comprise maximum of 3 members only.<br />
   
                8) Final judgment decision of judges will be final and binding to all.<br /> <br />
                
                <a href="pdf/webkriti/webkriti2012.pdf"  class="downloadlink" target="_blank">Click to download problem statement</a>
                     <br /><br />
                
                    <strong>FOR ANY QUERIES FEEL FREE TO CONTACT US<br />

                            ANKIT PANDEY +91-8765108524<br />
                            You may also mail at <mailto>webkriti@techsrijan.org</mailto><br /></strong>
                </p>
                    
                </div>
				<div class="box w-50 h-40 box-img-left box-b-r title-top">
					<div class="img-cont img-vhdl"></div>
					<h3>VHDL <span></span></h3>
					<p>Coagulate Boole's algebra and logic gates to design your logic circuits. 
                    We have all the stuff to make you scratch your head, but you've got even more to implement your ideas- the simulator. 
                    So let's design the future IC's in our own backyard. Here is a programming contest based on Hardware Description Language.</p>
                    <p>
                    <strong><u>Event Structure</u>:<br /></strong>
                    •	The event will be conducted in two rounds.<br />
                    •  Only single participants are allowed in this event<br/> 
                    <strong><br/> Preliminary Round:<br /></strong>
                    • The first round will be conducted on the first day of techSRIJAN.<br />
                    • This round would consist of 1 hour written test.<br/>
                    • Questions would be objective type, fill in the blanks, error detection and &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; correction, etc fully based on VHDL.<br/>
                    • No full coding problem would be asked.<br/>
                    • The qualifiers for the second round would be decided on merit.<br/>                     
                    <strong><br/>Final Round:<br /></strong>
                    •	This would be a 1 hour coding round to be performed on the simulator (ModelSIM).<br />
                    •  There would be 2 long coding questions (based on REAL LIFE ISSUES).<br /> 
                    •  In case the problem is not fully solved, sub-parts of the problem would be analysed for marking (based on the logic and accuracy).<br />
                    </p>
                    <p>
                    <strong>Contacts:<br /></strong>
                    Nikhil Kumar Chaurasia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91-9473664716<br />
                    Swaati&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91-8896106505<br />
                
                    </p>
   

				</div>
				
				<div class="box w-50 h-40 title-top">
					<h3>Catia, PRO-E & autoCAD <span></span></h3>
					<p>Bring out the 3-Dimensional view of the 2-Dimensional world. Here you have the opportunity to twist the edges and corners on your move and come up with the best of three dimensional models. You also have the opportunity to present new innovative models and design, originating in your mind.</p>
				</div>
			</div>

             <div class="f-page">
				<div class="f-title">
					<a href="home.aspx">Home</a>
					<h2>abhiGYAAN</h2>
					<a href="events.aspx?page=1">Back to INDEX</a>
				</div>
                
				<div class="box h-50 w-100 box-img-left">
					<div class="img-cont img-resnova"></div>
					<h3>resNOVA</h3>
<p><strong>Round I result<br /></strong> <a href="pdf/resnova/RES.pdf" class="downloadlink" target="_blank">Click here to view</a></p>
					<p style=" text-align:center; font-size:16px; font-style:italic;">&quot;As evolution starts another stanza,<br/>
                        As microdots of life form into seeds,<br/>
                        As human pandemonium surrounds energy,<br/>
                        Energy will fail to outlast human deeds&quot;<br/></p>

                        <p>resNOVA is a brand new event added to the spectrum of techSRIJAN this year. One of the major global issues of the present scenario is the depletion of energy resources throughout the globe, which poses a major threat to mankind. Hereby we bring you resNOVA an event which will stir the environmentalist within you and provoke you to apply your creative minds in the direction of conserving energy. This event will test your innovation and technical intellect as you are required to design an ENERGY SAVING DEVICE and explain it with the aid of a presentation. 
                        Our vision is to generate awareness and concern about global and national energy issues among the youth. Ultimately the aim is to ingrain the value and importance of energy in the public consciousness; to bring to people's notice the fact that energy is as indispensible as any of our amenities. So gear up and be ready to do your bit in conserving energy.......!!
                    </p>
                    <p>
                    <strong>Event Structure:<br /></strong>
                    •	The Event will be conducted in two rounds.<br />
                    •	In first round teams will have to submit an abstract based on the model they are going to make and on the type of energy they want to conserve like solar energy, wind energy or tidal energy, etc.<br />
                    •	The teams will be shortlisted on the basis of the ideas give in abstracts.<br />
                    •	In second round teams will create a working or non-working model as mentioned in their abstracts along with a presentation explaining the model, its design, working and merits.
                    </p>
                    <p>
                    <strong>Rules:<br /></strong>
                    •	A team consists of 2-3 members.<br />
                    •	The idea has to be technically viable.<br />
                    •	One participant can be a member of only one team.<br />
                    •	The last date for abstract submission is October 22, 2012.<br />
                    •	Mail the abstract at <b>resnova@techsrijan.org</b>.<br />
                    •	Judging will be done on the basis of innovation and freshness of the idea.<br />
                    •	Judging will be done separately for different categories.<br />
                    •	The presentation has to be simple and easily understandable.
                    </p>
                    <p>
                    <strong>Contacts:<br /></strong>
                    for any queries contact us at <b>resnova@techsrijan.org</b> or any of the coordinators.<br /><br />
                    Esha Srivastava&nbsp;&nbsp;&nbsp;&nbsp;+91 8765449980 <br  />
                    Srijan Gupta &nbsp;&nbsp;&nbsp;&nbsp; +91 7599294151
                    
                    </p>
                       
				</div>
				<div class="box h-50 w-100 box-img-left">
					<div class="img-cont img-manthan"></div>
					<h3>Manthan</h3>
<p><strong>Round I result<br /></strong> <a href="pdf/manthan/MNT.pdf" class="downloadlink" target="_blank">Click here to view</a></p>
					<p style=" text-align:center; font-size:16px; font-style:italic;">&quot;The clocks have turned to their awaited destiny,<br/>
                                                 For a bruised nation striving for panacea,<br/>
                                                 As metamorphosis beckons upon an empowered society,<br/>
                                                 Pensive minds will be a force to reckon with&quot;<br/></p>

                            <p> Does your heart conflagrate and brain writhes when you visage or hark the burning social issues around you?
                            The satanic corruption is deep-rooted in the nerves of every system. Nasty politics making hoax of destitute, creating 
                            abhorrence and provoking the young guns of the nation to come forward!
                             So here is your chance !! We present you "MANTHAN" in " techSRIJAN" for the first time; 
                              alluring the aware section of the youth to fulminate, putting up their notions for a better India.</p>
                    <p>
                    <strong>Event Structure:<br /></strong>
                    It is open presumption competition related to burning social issues, this is basically case study on given
                  ignited contentions. In which a case of few sentences or paragraphs will be provided on bellow given topics.<br />
                  The event will be conducted in two rounds.<br />
                    <strong>1.ABSTRACT SUBMISSION AND SELECTION:</strong> In this round you have to send the extract of your 
                            study of your selected case on or  before 25th October,2012.<br />
                            result of 1st round will be declared on 26th October,2012.<br />
                    <strong>2.FINAL ROUND:</strong> Final round will be held on 3rd November,2012 during techSRIJAN.
                            In this round you have to demonstrate your cogitation with the help of presentation or non-working model.
                            There will be query round at the end of presentation.
                    </p>
                    <p><strong>Note:</strong>
                    Cases have been uploaded.
                    </p>
                    <p>
                    <strong>Case  Topics:<br /></strong>
                       •	ENTREPRENEURSHIP<a href="pdf/manthan/Entrepreneurship.pdf" target="_blank" class="downloadlink">(Click to download)</a><br />
                       •	RESERVATION<a href="pdf/manthan/reservation.pdf" target="_blank" class="downloadlink">(Click to download)</a><br />
                       •	REGIME SYSTEM<a href="pdf/manthan/regime.pdf" target="_blank" class="downloadlink">(Click to download)</a><br />
                       •	FDI IN RETAIL<a href="pdf/manthan/fdi.pdf" target="_blank" class="downloadlink">(Click to download)</a>
                       
                    </p>
                    <p>
                    <strong>Rules:<br /></strong>
                    •	<b>Time duration for presentation will be 6 min. and query round will be of 2 mins.</b>.<br />
                    •	A team may consist of 2-3 members.<br />
                    •	one team must have to select only one case.<br />
                    •	The last date for abstract submission is October 25, 2012.<br />
                    •	The presentation has to be simple and easily understandable.<br />
                    •	there will be no language restriction but you have to follow one language strictly(Hindi/English).<br />
                    •	You have to submit the hard copy of study during presentation.<br />
                    •   Registration of the event will be on first day of &quot;techsrijan 2012&quot; at reception desk.
                    •	Candidates will be judged on following categories.<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ideas and Content<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Presentation Skills<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Language proficiency<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;and hardcopy
                    </p>
                    <p>
                    <strong>Guideline:<br /></strong>
                    •	You may use non-working model like chart paper to demonstrate your study.<br />
                    •	You may use statics from search  engine to prevail your points.<br />
                    •	All cases have been uploaded.<br />
                    </p>
                    <p>
                    <strong>DETAILS OF SUBMISSION:<br /></strong>
                    Extract must be send to manthan@techsrijan.org with subject 'TEAM NAME@manthan' on or  before 
                       25 October, 2012.
                       With following details:<br />
                       TEAM NAME:<br />
                       TEAM LEADER:<br />
                       TEAM MEMBERS NAME(email id and contacts of all members):<br />
                       COLLEGE/INSTITUTION NAME:
                    </p>
                    <p>
                    <strong>Opportunity:<br /></strong>
                    Case Study of the winning team will be published in local as well as National news papers along with the team members' name.
                    </p>
                    <p>
                    <strong>Contacts:<br /></strong>
                    for any queries contact us at <b>manthan@techsrijan.org</b> or any of the coordinators.<br /><br />
                    Prince Singh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91 9532854369<br />
                    Jyoti Dixit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +91 8909931153<br />
                    </p>
				</div>
                </div>

            <div class="f-page">
				<div class="f-title">
					<a href="home.aspx">Home</a>
					<h2>quiZZES</h2>
					<a href="events.aspx?page=1">Back to INDEX</a>
				</div>
                
				<div class="box h-50 w-100 box-img-left">
					<div class="img-cont img-bizgyan"></div>
					<h3>bizGYAN</h3>
					<p>The platform of exhibiting one’s knowledge, related to business & management is set again, albeit with new zing.
                        If you want to prove your worth, then this is your 'karmabhoomi'.
                        So gear yourself up and put all your biz knowledge to work.
                    </p>
                    <p>
                    <strong>Event Structure:<br /></strong>
                    <strong>Stage 1:<br /></strong>
                    •	Objective type Multiple Choice Question (Elimination Round)<br />
                    •	30 minutes of quiz with 50 questions of 3 marks each<br />
                    •	1 Negative Mark will be awarded for each wrong answer<br />
                    <strong>Stage 2:<br /></strong>
                    (for the selected candidates)<br />
                    •	Second round will be the rapid fire round (Elimination Round).<br />
                    •	Maximum Time for Each Group will be 2 Minute.<br />
                    •	No Negative Marks will be awarded.<br />
                    <strong>Stage 3:<br /></strong>
                    (for the selected candidates)<br />
                    •	Last round will be the multimedia round.
                    </p>
                    <p>
                    <strong>Rules:<br /></strong>
                    •	Each team would consist of 2 members.<br />
                    •	Registration of the event will be on spot.<br />
                    •	One participant can be a member of only one team .<br />
                    •	Electronic gadgets are prohibited.<br />
                    </p>
                    <p>
                    <strong>Contacts:<br /></strong>
                    Pankhuri Agrawal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91-8543016004<br />
                    Nidhi Narayan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91-8853606188<br />
                    Rashmi Kannaujia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91-9473768213<br />
                    Devesh Kumar Singh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91-9565911083<br />
                    </p>
                       
				</div>
				<div class="box h-50 w-100 box-img-left">
					<div class="img-cont img-quiz"></div>
					<h3>techNEETI</h3>
					<p>Techneeti is a technical quiz contest which gives space to prove your technocracy, 
                    where you can show that knowledge you have is not just bookish. 
                    So, just accept the challenge and feel the exhilaration of technology and victory. 
                    Accept the challenge to show to show your intellectual power to ahem the world.
                    </p>
                    <p>
                    <strong>Rules:<br /></strong>
                    •	The event will be conducted in 2 rounds.<br />
                    •	The first round will be preliminary round.It is a general round in which there will be questions related to science,general studies and current affairs.<br />
                    •	Top 6 teams of preliminary round will be qualified for the second round.<br />
                    •	The second round will be multimedia round.<br />
                    •	One participant can be a member of only one team .<br />
                    •	Use of mobiles, electronic gadgets is prohibited.
                    </p>
                    <p>
                    <strong>Contacts:<br /></strong>
                    Aditya Kumar Rai&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91-8765626716<br />
                    Urvashi Singh&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91-9792416563<br />
                    Garima Agarwal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91-8004604671<br />

                    </p>
				</div>
                </div>

                <div class="f-page">
				<div class="f-title">
					<a href="home.aspx">Home</a>
					<h2>inCOGNITO</h2>
					<a href="events.aspx?page=1">Back to INDEX</a>
				</div>
                
				<div class="box w-50 h-100 box-b-r ">
					<div class="img-cont img-informal"></div>
					<h3>Informals</h3>
					<p>Tired of brainstorming your head with tech savvy ideas? Need a little bredth from the exhaustive use of your grey matter?  Its time to take a break from all the technical bouts and step into a completely different episode of techSRIJAN’12 as it unfolds to you the most enthralling and exuberant part of its advent, the ‘Informals’. Informals 2k12 encompasses almost whole of the festive spirit of techSRIJAN bringing to you a plethora of informal events topped with loads of fun and enthusiasm to ease up the heat of the technical hustle and tussle of the fest. It is the must visit rejuvenation booth for all those who are going to be the part the three day odyssey of techSRIJAN 2k12. So, get ready to flaunt the fun edge of yours and be a part of the awesome high five-ing, yahooing and fist pumping energy and gear up to enjoy the frolic and electrifying excitement that sets the fest on roll.</p>
                       
				</div>
				<div class="box w-50 h-100 ">
					<div class="img-cont img-gaming"></div>
					<h3>Lan Gaming</h3>
					<p>&quot;The further you go into the technology, the further you go into gaming. That is the general rule.&quot;</p>
                    <p>TechSRIJAN invites you to have some fun and give you a break from technology to be a part of fun logy. 
                    Capture the carnival at its cradle and try to grab the excitement that is going to rock the fest. The event 
                    will comprise of  an exciting gaming zone. Who would say no to get too fast and furious their 
                    cars in NFS Most Wanted and their battling at Counter Strike-1.6. The thrill of Fifa, passion of tekken and showmanship of Pocket Tanks.So, unleash your skills, join the fun fair, as who dares, 
                    adorns the victory stand!
                    </p>
                    
				</div>
                </div>
				
                <div class="f-page">
				<div class="f-title">
					<a href="home.aspx">Home</a>
					<h2>techPRADARSHANI</h2>
					<a href="events.aspx?page=1">Back to INDEX</a>
				</div>
                
				<div class="box w-100 h-50 box-img-left">
					<div class="img-cont img-hardrachana"></div>
					<h3>hardRACHANA</h3>
					<p>Loads of studies, bundles of books and blunderbuss of chaos........feeling bussed off ?????
                        Then its time to outcast your own hallmark and set out new footprints on the dazotech floor this season. It’s time for you to be a lodestar and take a sporadic move in jolt of technorace...!!!! Move on with your techweb brains and beckon the unleashed spark of yours.....with something breaking board amendments by you....
                        Get set go the fire is set on the floor........!!!!
                        </p>
                    <p>
                        <strong>Problem statement:<br /></strong>
                        It's an open hardware contest in which you have to design a fully functional working model demonstrating or performing the task for which it has been made, exposing the solution to some existing day to day life problem or any new technical innovation. Any type of hardware based project can be exhibited in hardRACHNA.
                    </p>
                    <p>
                        <strong>Rules:<br /></strong>
                        A maximum of 5 members in a team can be registered for each model.<br /><br />
                        The teams must register themselves and mail the abstract at hardrachna@techsrijan.org. Last date of abstract submission is extended to October 22, 2012.<br /><br />
                        The participants have to inform the hardRACHNA team about all your requirements as soon as possible. Non availability of resources at the last time will not be entertained.<br /><br />
                        Judgements will be final and binding to all.<br /><br />
                        Each team will be provided with a table and a mains power supply of 220V, 50 Hz during the presentation<br /><br />
                        Teams have to manage for all the needed software on their own. Computers will be provided to the outstation teams if needed (teams from Gorakhpur have to bring their own PC and related accessories).<br /><br />
                        If you are using printed circuit board (PCB) then the PCB should be designed by yourself and you have to bring the lithe film (photo plots) of the circuit as a proof of originality.<br /><br />
                        You may use general purpose PCB.<br /><br />
                        The event coordinator retains exclusive authority to change any of the above mentioned rules or may put forward any further considerations related with the registered teams.<br /><br />
                    </p>  
                    <p>
                    <strong>Contacts:<br /></strong>
                    for any queries contact us at <b>hardrachana@techsrijan.org</b> or any of the coordinators.<br /><br />
                    Gagan Makhiza&nbsp;&nbsp;&nbsp;&nbsp; 7376583430<br />
                    Akanksha ojha&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9455070405<br />
                    Mamta Maurya&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8808026628<br />
                    </p> 
				</div>
				<div class="box w-100 h-50 box-b-l box-b-r box-img-left">
					<div class="img-cont img-softrachana"></div>
					<h3>softRACHANA</h3>
					<p>This is an open software contest, a platform to express your innovative ideas through coding. 
                    Any new software, technique or solution to an existing software problem/need of the industry is welcome.
                        All you have to do is to transform your ideas into workable codes and let your logic do the talking.
                    </p>
                    <p>
                    <strong>Event Details:<br /></strong>
                    •	The event will be held in two stages. In the prelims the team has to submit the abstract of the software to be presented. Based on the evaluation of submitted abstract, the team will be selected for the presentation.<br />
•	Participating team has to submit an abstract describing the project.<br />
•	The abstract should be in the .pdf format.<br />
•	The abstract should be mailed to softrachana@techsrijan.org<br />
•	Subject of the mail should be "Softrachna_Abstract_Your Team Name".<br />
•	The abstract should clearly mention the name of group members and contact information.<br />
•	The main event will be conducted during techSRIJAN-2012. Judgement will be based on evaluation by the judges' panel.<br />
•	All finalists will be individually informed and invited to the presentation.<br />
•	Each team has to bring two hardcopies and one softcopy of the project.<br />
•	techSRIJAN will provide PCs and Windows and Linux as the OS. Team should come with its own necessary software and hardware.<br />
•	Basis of evaluation:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.	Simplicity<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.	User friendliness<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.	Software utilization of resources.<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.	Usefulness<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.	Presentation<br />
                    </p>
                    <p>
                    <strong>Rules:<br /></strong>
                    •	Software presented should be your novel idea.<br />
•	A team may consist of a maximum of 3 members.<br />
•	No person can be a member of more than one team.<br />
•	Students from different streams & educational institutes can form a team.<br />
•	Last date of abstract submission: 24th Oct, 2012.<br />

                    </p>
                    <p>
                    <strong>Contacts:<br /></strong>
                    for any queries contact us at <b>softrachana@techsrijan.org</b> or any of the coordinators.<br /><br />
                    Ashvani Kumar Chaudhary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91 7388848536<br />
                    Poshika Gupta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91 8004654140<br />
                    Yasmeen Siddique&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91 8765086525
                    </p>
				</div>
                </div>

                <div class="f-page">
				<div class="f-title">
					<a href="home.aspx">Home</a>
					<h2>codZILLA</h2>
					<a href="events.aspx?page=1">Back to INDEX</a>
				</div>
                
				<div class="box w-100 h-100 box-img-left title-top">
					<div class="img-cont img-codzilla"></div>
					<h3>codZILLA</h3>
					<p>If you don't want to be replaced by a computer, do not act like one. Strictly for those whose mind is no less than a factory house of innovative codes ready to unleash the unraveled complicacies .Survival in codZILLA is sure to dig the savvier geek out of you. Gear up to strike every key and torment your brain because both will win the battle for you. <br /><br />
                    Chaos reigns within.<br /><br />
                    Reflect, repent, and reboot.
                    </p>
                    <p>
                    Codzilla round 2 has started.
                    </p>
                    <p>
                    <strong>Problem Statements(Round 2):<br /></strong>
                    <a href="pdf/codzilla/easy2.pdf" target="_blank" class="downloadlink">Click here to download Easy level</a><br />
                    <a href="pdf/codzilla/Medium2.pdf" target="_blank" class="downloadlink">Click here to download Medium level</a><br />
                    <a href="pdf/codzilla/hard2.pdf" target="_blank" class="downloadlink">Click here to download Hard level</a><br /><br />
                    Last date for submission of second round solutions' is 31th October.<br />
                    Mail your solutions at <b>codzilla@techsrijan.org</b>
                    </p>
                    <p>
                    <strong>Rules:<br /></strong>The team comprises of a single member only.<br />
                    There are two stages in the event:
                    <ul>
                        <li>code-a-thon</li>
                        <li>decoderon</li>
                    </ul>
                    </p>
                    <p>
                    <strong>Stage 1:code-a-thon:<br /></strong>
                    code-a-thon is the short listing stage, with 2 rounds each comprising of questions at three difficulty levels each:
                    <ul>
                        <li>Easy- 200</li>
                        <li>Medium- 400</li>
                        <li>Hard- 600</li>
                    </ul>
                    </p>
                    <p>
                    1)For each round participants can opt to solve any number of questions, the sole aim being to gather maximum points.<br />
                    2)Language permitted for submitting solutions are C,C++ and Java.<br />
                    3)Documentation comments should be mentioned at appropriate places in the soft code.<br />
                    4)Participants will be short listed based on their total score after the two rounds.<br />
                    5)Those who qualify shall be called for the on-campus event which will be held in the duration of techSRIJAN 2012.<br />
                    
                    </p>                      
                    <p>
                    <strong>Stage 2:decoderon:<br /></strong>1)decoderon   stage is the debugging round. The rules and problems will be declared at the time of the event. <br />
                    2)Problem statements and other details regarding the commencement of the event will be uploaded soon.<br />
                    </p>
                    <p>
                    <strong>Contacts:<br /></strong>
                    Ankit Pandey&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +91 8765108524<br />
                    Manish Agrahari&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +91 9696159163<br />
                    Neha Gupta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +91 8979473721 <br />
                    Poshika Gupta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +91 8004654140<br />
                    Rashmi Kannaujia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +91 9473768213<br />
                    </p>
				</div>
                </div>

                <div class="f-page">
				<div class="f-title">
					<a href="home.aspx">Home</a>
					<h2>venTURA</h2>
					<a href="events.aspx?page=1">Back to INDEX</a>
				</div>
                
				<div class="box w-100 h-100 box-img-left title-top">
                    
					<div class="img-cont img-ventura"></div>
					<h3>venTURA</h3>
					<p>&quot;All men can see the tactics whereby I conquer, but what none has seen is the strategy out of which victory has evolved&quot; 
                        -Sun Tzu</p>
                    <p>
                        All those who want to rake in the moolah and follow the footsteps of business world biggies Bill Gates, Narayan Murthy, Steve Jobs, Ventura is here to provide all the young Dexters a platform to showcase your strategies and tactics which can make or break an enterprise. We do not want you pouring out erudite volumes, we do not want complex gizmos pulling you obscurity, all you have to armed with is your mind. So, invoke your grey cells and turn yourself into mean business -minded strategists to rule this territory. 
                    </p>
                    <p>
                    <strong>Rules:<br /></strong>
                    Ventura comprises of two stages-
                    </p>                       
                    <p>
                    <strong>STAGE 1:<br /></strong>
                    Design a strategy for a product which is to be launched in the market taking into accounts the pros and cons, in accordance with the rules. The product must be one of the provided problem statements.
                    <ul>
                        <li><a href="pdf/ventura/mushroom.pdf" target="_blank">Mushroom Growing Kit</a></li>
                        <li><a href="pdf/ventura/wristcharger.pdf" target="_blank">Wrist Charger</a></li>
                        <li><a href="pdf/ventura/usbbrnr.pdf" target="_blank">USB Aromatherapy Oil Burner</a></li>
                    </ul>
                    </p>
                    <p>
                    <strong>STAGE 2:<br /></strong>
                    <b>This stage has two parts-:</b> In the first part participating teams have to make a poster which will appeal from the consumer regarding their product and must contain the basic features of the product. The next part is a presentation on the product in which the participating team have to describe their marketing strategy regarding the product and the strategy should be well drafted keeping in view the products advantages, disadvantages, consumer group etc.<br /><br />
                    One team may comprise of max. 3 members<br /><br />
                    One contestant can be a part of more than one team. But, you will have to register separately for each entry.<br /><br />
                    A team can choose only one product out of three provided for the first stage.<br /><br />
                    Strategy for stage 1 must contain the following in sequential order:
                    <ul>
                        <li>Logo</li>
                        <li>Punch line</li>
                        <li>Product Description</li>
                        <li>differentiation</li>
                        <li>Marketing Strategy</li>
                        <li>Demerit Handling</li>
                        <li>Cost Justification</li>
                        <li>Investment approximation for publicity etc.</li>
                    </ul>
                    </p>
                    <p>
                    Font size:14,12 (14 for titles and 12 for rest)<br /><br />
                    Teams for stage 2 will be shortlisted on the basis of stage 1 abstract.<br /><br />
                    Strategies for first stage should be given before October 22, 2012<br /><br />
                    The summaries must be sent to ventura@techsrijan.org in pdf format.<br /><br />
                    Entries submitted after the deadlines shall not be considered.<br /><br />
                    Entries for stage 1 should be to the point as per the rules. Superfluous language is to be avoided. Competition is open for students from non-technical fields as well.
                    </p>
                    <p>
                    <strong>Contacts:<br /></strong>
                     for any queries contact us at <b>ventura@techsrijan.org</b> or any of the coordinators.<br /><br />
                    Kamlesh Gupta&nbsp;&nbsp;&nbsp;&nbsp;+91 9044329490<br />
                    Umakant Khandekar&nbsp;&nbsp;&nbsp;&nbsp;+91 8960913254<br />   
                    Neha Sharma&nbsp;&nbsp;&nbsp;&nbsp;+91 8756539235<br />
                    Nishtha Suryavanshi&nbsp;&nbsp;&nbsp;&nbsp;+91 7376758648<br />
                    Swati Sharma&nbsp;&nbsp;&nbsp;&nbsp;+91 9411463323<br />
                    Devesh Kr. Singh&nbsp;&nbsp;&nbsp;&nbsp;+91 9565911083
                    </p>
				</div>
                </div>

                <div class="f-page">

                  <%------------------------techprastuti-----------------------------%>
				<div class="f-title">
					<a href="home.aspx">Home</a>
					<h2>techPRASTUTI</h2>
					<a href="events.aspx?page=1">Back to INDEX</a>
				</div>
                
				<div class="box w-100 h-50 box-img-left title-top">
					<div class="img-cont img-techprastuti"></div>
					<h3>techPRASTUTI</h3>
<p><strong>Round I result Category A<br /></strong> <a href="pdf/techprastuti/A.pdf" class="downloadlink" target="_blank">Click here to view</a></p>
<p><strong>Round I result Category B<br /></strong> <a href="pdf/techprastuti/B.pdf" class="downloadlink" target="_blank">Click here to view</a></p>
<p><strong>Round I result Category C<br /></strong> <a href="pdf/techprastuti/C.pdf" class="downloadlink" target="_blank">Click here to view</a></p>
					<p>The Technical Paper Presentation of radical, dynamic and novel IDEAZ.
                    The platform of creativity is set yet again. Step up and unleash your novel ideas which you think can revolutionize the world. 
                    Scan your prolific minds and pen down some path breaking, innovative papers. Confront our panel of experts and audience avid to 
                    capture your brilliance and be a paradigm of excellence.
                    </p>
                    <p>
                     <strong>RULES:<br /></strong>
<ul font style=" font-family: 'Open Sans Condensed'; font-size:18px">
<li> A team may comprise of a maximum of <b> <u> 3 members </u> </b>. </li>
<li>The last date for abstract submission is changed to <b> <u> October 22, 2012 </u> </b>. The abstracts should be mailed to <b><u>techprastuti@techsrijan.org </u></b> mentioning category, subcategory code, title, names of the team members, contact nos, email address and name of the institute. </li>
<li>The abstract should not contain more than 200 words and 2 images (if any) and should be in standard .PDF format. The abstract must be typed in Times New Roman & font size 12. </li>
<li>The short listed teams will have to present their paper in front of expert panel of judges with help of a power-point presentation.</li>
<li>Time allocations for presentation will be as follows:
<ul font size=18px font-family: 'Open Sans Condensed'> 
<li>Presentation & explanation - 10 min. </li>
<li>Queries - 2 min.</li></ul></li>
<li>The teams will be evaluated on the basis of their innovation, presentation, practical applications and viability of idea. </li>
<li> The decision of judges shall be final and binding to all.</li> </ul>
                     </p>
                     <p>
                     <i style="color:Red;">Switch to Categories by closing this page. </i>
                     </p>
                     <p>
                     <strong>Contacts:<br /></strong>
                     for any queries contact us at <b>techprastuti@techsrijan.org</b> or any of the coordinators.<br /><br />
<table style="width: 900px; height: 20px;" border="0" cellpadding="0" align="right">
<tbody><tr><td width="500">
<p> Ashvani Kumar Chaudhary</p>
</td>
<td width="400">
<p>+91-7388848536</p>
</td>
</tr><tr><td width="500">
<p>  Kamlesh Gupta</p>
</td>
<td width="400">
<p>+91-9044329490</p>
</td>
</tr>
<tr><td width="500">
<p> Umakant Khandekar</p>
</td>
<td width="400">
<p>+91-9621691669</p>
</td>
</tr><tr><td width="500">
<p> Garima Agrawal </p>
</td>
<td width="400">
<p>+91-8004604671</p>
</td>
</tr><tr><td width="500">
<p> Nainshree Pandey</p>
</td>
<td width="400">
<p>+91-8765521549</p>
</td>
</tr><tr><td width="500">
<p> Urvashi Singh </p>
</td>
<td width="400">
<p>+91-9792416563</p>
</td>
</tr></tbody></table>
                    

                     </p>
                     </div>
            <div class="box w-40 box-b-r h-50 title-top">
           <p><strong>CATEGORY:ENGINEERING<br /></strong>
               1. Chemical (Code: CHML)<br/><br/>

a) Process synthesis and design<br/>
b) Nano technology<br/>
c) Process control and advanced process control<br/>
d) Product plant design and simulation<br/<br/>
e) Energy engineering or Energy Management<br/>
f) Alternate Fuels or Non-Conventional Energy Sources<br/>
g) Petrochemical and refinery engineering<br/>
h) Biological and synthetic materials<br/>
i) Process intensification<br/>
j) Environment management system<br/>
k) Corrosion science and engineering<br/>
l) Food Technology<br/>
m) Polymer Technology<br/>
n) Enzyme and catalyst technology

</p>
<p>
2. Electrical, Electronics and Instrumentation (Code : EEI)<br/><br/>

a) Processor Architecture<br/>
b) RF circuits<br/>
c) VLSI & ULSI design<br/>
d) Micro/Nano Electronics<br/>
e) DNA computers<br/>
f) Data Acquisition<br/>
g) Electronics Smart Materials<br/>
h) Analog/Digital Instrumentation<br/>
i) Analysis and Control<br/>
j) Industrial Instrumentation<br/>
k) Analog/Digital communication<br/>
 &nbsp;&nbsp;    i) Telecommunication Networks<br/>
 &nbsp;&nbsp;    ii) Optical Networks<br/>
  &nbsp;&nbsp;   iii) Wireless sensor Network<br/>
 &nbsp;&nbsp;    iv) Wireless security<br/>
&nbsp;&nbsp;     v) Multiuser communication<br/>
l) Power<br/>
&nbsp;&nbsp;     i) Transmission and Distribution<br/>
&nbsp;&nbsp;     ii) Generation<br/>
 &nbsp;&nbsp;    iii) Electronics<br/>
   &nbsp;&nbsp;  iv) Machines<br/>
m) Neural Networks<br/>
&nbsp;&nbsp;     i) Adaptive signal processing<br/>
&nbsp;&nbsp;     ii) Array signal processing<br/>
n) Digital Signal Processing<br/>
&nbsp;&nbsp;     i) Image processing<br/>
 &nbsp;&nbsp;    ii) Speech processing<br/>
  &nbsp;&nbsp;   iii) Signal processing<br/>
o) Distributed Control Systems<br/>
p) Green Power: Alternate Energy System

</p>
<p>
3. Mechanical (Code: MECH)<br/><br/>

a) Mechatronics<br/>
b) Automobile Engineering and Design<br/>
c) Computational Fluid Dynamics & Finite Element Analysis<br/>
d) Computer Aided Design & Manufacturing<br/>
e) Flexible Manufacturing Systems<br/>
f) Microprocessor Based IC Engines/ Camless Engines<br/>
g) Total Quality Management<br/>
h) Genetic Algorithms in Machine Design<br/>
i) Aerodynamics<br/>
j) Plastic and Composite Manufacturing<br/>
k) Manufacturing Technology Management<br/>
l) Nano manufacturing<br/>
m) MEMS
</p>
<p>

4. Computer Science and Information technology (Code : CSIT)<br/><br/>

a) Artificial Intelligence, Neural networks, Fuzzy logic and Evolutionary computation<br/>
b) Database, Data mining and Data Warehousing<br/>
c) Wireless communication - Mobile communication, Wireless and Adhoc network P2P Network<br/>
d) Networking<br/>
&nbsp;&nbsp;   i) Computer Network<br/>
&nbsp;&nbsp;   ii) Network security and Cryptography<br/>
e) Operation systems - Real Time, Embedded, Distributed, Multi-core<br/>
f) High performance computing - Distributed, Parallel, Clustering, Cloud and Grid Computing<br/>
g) Web application<br/>
h) Algorithms - Analysis, Design and Optimization<br/>
i) Computational linguistics<br/>
j) Computer Vision - Computer Graphics, Multimedia, Image processing (Software) & Pattern recognition<br/>
k) Compilers, Programming Languages<br/>
l) Software Engineering & Software Architecture<br/>
m) Machine learning, Human computer Interaction, Pervasive computing and Wearable computing<br/>
n) Natural Language Processing<br/>
</p>
<p>
5. Civil Engineering(Code:CIV)<br />
a). Geo informatics<br />
b). Structural Engineering<br />
c). Geo technical Engineering<br />
d). Environmental Engineering<br />
e). Geomatics and Transportation Engineering<br />
f). Earthquake Engineering<br />
    &nbsp;&nbsp;i). Structural Dynamics<br />
    &nbsp;&nbsp;ii). Soil Dynamics<br />
    &nbsp;&nbsp;iii). Engineering Seismology<br />
g). Hydrology <br />
     &nbsp;&nbsp;i).Global changes in water resources today and tomorrow.<br />
     &nbsp;&nbsp;ii).Water and Energy
</p>

               </div>
            <div class="box w-30 box-b-r h-50 title-top">
                <p><strong>CATEGORY: SCIENCE<br /></strong>
1. Biology (Code : BIO)<br/><br/>

a) Genetics and Molecular biology<br/>
b) Bio Informatics<br/>
c) Bio electronics and instrumentation<br/>
d) Bio –medical<br/>
e) Bio-mimetics<br/>
f) Bio-Nano technology<br/>
g) Bio-sensors<br/>
h) Bio-photomics<br/>
i) Gene manipulation<br/>
j) Stem cell biology
</p>
<p>
2. Chemistry (Code : CHEM)<br/><br/>

a) Photochemistry<br/>
b) Determination of kinetics of chemical reaction in range of femto seconds<br/>
c) Determination of thermodynamic properties in single/multi component system<br/>
d) Smart materials<br/>
e) Nano particles and its applications in chemistry<br/>
f) Ionic liquids<br/>
g) Theoretical and computational chemistry, molecular modeling<br/>
h) Bio degradable polymers<br/>
i) Protein folding<br/>
j) Green chemistry
</p>
<p>
3. Mathematics (Code : MATHS)<br/><br/>

a) Set theory and logic<br/>
b) Algebra<br/>
c) Differential and Partial differential equations<br/>
d) Geometry and Topology<br/>
e) Discrete mathematics<br/>
f) Number theory<br/>
g) Cryptography<br/>
h) Applied mathematics<br/>
i) History of mathematics<br/>
j) Finite element method<br/>
k) Graph Theory
</p>
<p>
4. Physics (Code : PHY)<br/>
<br/>
a) Classical Mechanics<br/>
b) Electromagnetism<br/>
c) Computational Physics<br/>
d) Non Linear Dynamics<br/>
e) Nuclear Physics<br/>
f) Optics / Optoelectronics / Photonics<br/>
g) Particle Physics<br/>
h) Quantum Computation<br/>
i) Quantum Mechanics<br/>
j) Relativity and Gravitation<br/>
k) Condensed state physics<br/>
l) Statistical Physics<br/>
m) Astronomy and Astrophysics</p>
        </div>
        <div class="box w-30 h-50 title-top">

                <p><strong>CATEGORY: ECONOMICS & HUMANITIES<br /></strong>
               1. Arts, Literature and General (Code : ART)<br/><br/>

a) Journalism<br/>
b) Teenage Psychology<br/>
c) Intelligence Quotient, Emotional Quotient, Social Quotient, Spiritual Quotient, Happiness Quotient<br/>
d) How Arts & Literature imitate nature<br/>
e) International and cross cultural studies<br/>
f)  Ethics – Professional vs. Personal, Law Ethics, Intellectual Property<br/>
g) Management systems from Renaissance – Literature, Values and Leadership

</p>
<p>
2. Economics & Management (Code : ECO)<br/><br/>

a) Indian Economy - History, Development and Future<br/>
b) Industrial Economics<br/>
c) Internet Economics<br/>
d) Finance<br/>
e) Marketing & Advertisement<br/>
f) Supply chain management<br/>
g) Strategy planning<br/>
h) Social Entrepreneurship<br/>
i) Mergers & Acquisitions</p>
   
        </div>
        			</div>
                


                <div class="f-page">
				<div class="f-title">
					<a href="home.aspx">Home</a>
					<h2>Pixels</h2>
					<a href="events.aspx?page=1">Back to INDEX</a>
				</div>
                
				<div class="box w-100 h-100 box-img-left title-top">
					<div class="img-cont img-pixels"></div>
					<h3>Pixels</h3>
                    <p style=" text-align:center; font-style:italic;">“The camera is an instrument that teaches people how to see without a camera.”<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;-Dorothea Lange</p>
					<p>If you love clicking…if you have ability to speak through photographs louder, than with words....if pictures sparks epitome of imagination into yourself... <br />
                            techSRIJAN 2012 presents you,Pixels,a photography event,a mega platform to unleash your creativity and show your world of imagination through your camera.
                            </p>    
                    <a href="http://goo.gl/dQybC"><p>Click Here To see full details.</p></a>
				</div>
                </div>

               
			
			<div class="f-page f-cover-back">
				<div id="codrops-ad-wrapper">
					
				</div>
			</div>
		</div>
	
		<script type="text/javascript" src="eventstyle/js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript">

		    var $container = $('#flip'),
				$pages = $container.children().hide();

		    Modernizr.load({
		        test: Modernizr.csstransforms3d && Modernizr.csstransitions,
		        yep: ['eventstyle/js/jquery.tmpl.min.js', 'eventstyle/js/jquery.history.js', 'eventstyle/js/core.string.js', 'eventstyle/js/jquery.touchSwipe-1.2.5.js', 'eventstyle/js/jquery.flips.js'],
		        nope: 'eventstyle/css/fallback.css',
		        callback: function (url, result, key) {

		            if (url === 'eventstyle/css/fallback.css') {
		                $pages.show();
		            }
		            else if (url === 'eventstyle/js/jquery.flips.js') {
		                $container.flips();
		            }

		        }
		    });
				
		</script>
    </body>
</html>
