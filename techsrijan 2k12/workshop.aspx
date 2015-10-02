<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true" CodeFile="workshop.aspx.cs" Inherits="workshop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
  #workpage { margin-top:20px; margin-left:4%; margin-right:4%; margin-bottom:20px; float:left; width:92%;}
  .workshopdiv { float:left; width:100%; margin-top:20px; height:200px; overflow:hidden; background-color:#eeeeee;}
  .workshopdiv h1 { margin:20px; font-size:22px; font-weight:bold; font-family:Segoe UI, Calibri; text-align:left;}
  .workshopdiv p { font-size:16px; font-family:Segoe UI, Calibri; text-align:justify; margin:20px;}
  .workshopdiv:hover { background-color:#bbbbbb;}
  
 </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="heading">
<div id="hdiv"><h1 class="htitle"><strong>Workshops</strong></h1></div>
<div id="workpage">
    
<div class="workshopdiv">
<a href="work_ethical.aspx">
<h1>Ethical Hacking & Cyber Security</h1>
<p>Ethical hacking is an important tool in many national security agencies and even companies. An Ethical Hacker is usually employed with the organization and can be trusted to undertake an attempt to penetrate networks and/or computer systems using the same methods as a Hacker. The goal of the ethical hacker is to help the organization take pre-emptive measures against malicious attacks by attacking the system himself; all the while staying within legal limits. In order to become an Ethical Hacker or Security Expert, one must think out of the box with the mentality that in order to catch a thief.</p></a>
</div>
<div class="workshopdiv">
<a href="work_cloud.aspx"><h1>Cloud Computing</h1>
<p>Cloud computing workshop has been formed to promote research and development activities focused on enabling and scaling scientific applications using distributed computing paradigms, such as cluster, Grid, and Cloud Computing. With the rapid emergence of software systems and their applicability, the volume of users is growing exponentially. User requirements are getting more and more complex. Existing computing infrastructure, software system designs, and use cases will have to take into account the enormity in volume of requests, size of data, computing load, locality and type of users, and so forth.</p></a>
</div>
<div class="workshopdiv">
<a href="work_motion.aspx">
<h1>Motion Sensing Technology(Gesture Computing)</h1>
<p>It is one of the latest technologies on which Microsoft, Apple and Intel all are working. In it rather than interacting with computer with help of any interface like mouse or keypad we interact directly with computer which is also known as Natural User Interfacing. At the end of this WORKSHOP students will be able to make their own multi touch pad. So lets the computing begin in a completely new way and step forward into a completely new era of Motion Sensing & Gesture Computing.</p></a>
</div>
</div>
</div>
</asp:Content>

