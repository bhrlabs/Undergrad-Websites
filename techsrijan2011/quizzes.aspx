<%@ Page Title="Quizzes" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="quizzes.aspx.vb" Inherits="quizzes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-family: Cambria;
        }
        .style7
        {
            font-family: Cambria;
            font-size: 16px;
        }
        .style8
        {
            font-family: Cambria;
            font-size: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript" src="extras/hover.js"></script>
<br />
<br />
<center>
        <b style="color: white; font-size: 27px" class="style5">QUIZZES</b></center>
    <br />
<br />
    <div id="Events">
         <center>
         <table>
            <tr>
            
                <td style="width:200px"><center><a style="text-decoration: none" href="techneeti.aspx" onmouseout="document.images['example1'].src=img07.src";
onmouseover="document.images['example1'].src=img077.src">
                    <img src="images/techneeti.png" name="example1" width="120px" height="120px" style="border: 0"></a></center></td>
                     <td style="width:200px"><center><a style="text-decoration: none" href="bizgyan.aspx" onmouseout="document.images['example2'].src=img08.src";
onmouseover="document.images['example2'].src=img088.src">
                    <img src="images/bizgyan.png" name="example2" width="120px" height="120px" style="border: 0"></a></center></td>
                               </tr> 
                                <tr>
                <td style="width:200px" class="style7"><center class="style8"><a href="techneeti.aspx" style="color:White; text-decoration: none">techNEETI</a></center></td>
                <td style="width:200px"><center class="style8"><a href="bizgyan.aspx" style="color:White; text-decoration: none" >bizGYAN</a></center></td>
                </tr>
                        </table> 
                        </center>
        <br /><br /><br /><br /> <br /><br /> <br /><br />
    </div>



</asp:Content>

