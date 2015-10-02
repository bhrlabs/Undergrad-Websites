<%@ Page Title="roboKRITI" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="roboKRITI.aspx.vb" Inherits="roboKRITI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-family: Cambria;
        }
        .style8
        {
            font-family: Cambria;
            font-size: 17px;
        }
        .style10
        {
           
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><p style="color: #FFFFFF; margin-left: 40px; width: 150px;">
           <span style="color: #FFFFFF; font-family: Cambria; font-size:17px;"> 
        <a href="http://www.tcs.com"><img src="images/s-tcs.jpg" /></a></span><br />
           Presents</span><br />
<br />
    </p></center>
<center>
        <b style="color: white; font-size: 27px" class="style5">roboKRITI</b></center>
    <br />
<br />
    <div id="Events">
         <center>
         <table>
            <tr>
            
                <td style="width:200px"><center><a style="text-decoration:none" href="belligerent.aspx" onmouseout="document.images['example1'].src=img09.src";
onmouseover="document.images['example1'].src=img099.src">
                    <img src="images/belligerent.png" name="example1" width="120px" height="120px" style="border: 0" ></a></center></td>
                     <td style="width:200px"><center><a style="text-decoration:none" href="imbroglio.aspx" onmouseout="document.images['example2'].src=img010.src";
onmouseover="document.images['example2'].src=img01010.src">
                    <img src="images/imbroglio.png" name="example2" width="120px" height="120px" style="border: 0"></a></center></td>
                               </tr> 
                                <tr>
                <td style="width:200px" class="style8"><center><a href="belligerent.aspx" style="color:White; text-decoration: none">belliGERENT</a></center></td>
                <td style="width:200px"><center class="style8"><a href="imbroglio.aspx" style="color:White; text-decoration: none" >imbROGLIO</a></center></td>
                </tr>
              
                         <tr style="height:20px"></tr>
                
                
                <tr>
                <td style="width:200px" colspan="2"><center><a style="text-decoration:none" href="embot.aspx" onmouseout="document.images['example3'].src=img011.src";
onmouseover="document.images['example3'].src=img01111.src">
 <img src="images/embot.png" name="example3" width="120px" height="120px" style="border: 0" ></a></center></td>
                </tr>
                <tr>
                <td style="width:200px"  colspan="2" class="style8"><center><a href="embot.aspx" style="color:White; text-decoration: none">emBOT</a></center></td>
                </tr>
                        </table> 
                        </center>
        <br /><br />    <br /><br />    <br /><br />    <br /><br />
    </div>
 
    </span></asp:Content>

