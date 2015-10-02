<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" Title="ts2K9-guruCOOL" %>

<script runat="server">

    Protected Sub imgworkshop_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("~/others/Workshops.aspx")
    End Sub

    Protected Sub lnkworkshop_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/others/Workshops.aspx")
    End Sub

    Protected Sub imglecture_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("~/others/Lectures.aspx")
    End Sub

    Protected Sub lnklecture_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/others/Lectures.aspx")
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:relative;font-weight:normal;font-family:Verdana;font-size:14px;left:30px;top:30px;padding-right:40px;text-align:justify;">
<div style="position:relative;font-style:italic;color:#4C7D7E;font-weight:bold;left:-10px;text-align:center;">I see I forget, I do I remember, I do I understand</div>
 <div style="position:relative;font-style:italic;color:#4C7D7E;font-weight:bold;left:-20px;top:5px;text-align:right;"> - Chinese Proverb</div>
 <br />

<br />
To learn all there is to learn, not by pure mental perception but physical phenomenon that adds evidence and evidence is triviality , for the workshops will add loads of spice and technical flavour. 

 The workshops aim to provide a technical platform for the young technical minds so as to smoothen their technical journey.Learn from pioneers of their fields, as they provide hands on experience to those, raring to break away from crowd...

Besides, lectures from the who's who of the technical front will deliver their knowledge in the nutshell. There is enough in store for those receptive enough.
<div style="position:relative;top:120px;">
<div style="position:relative;left:20px"><asp:ImageButton runat="server" ID="imgworkshop"  ImageUrl="~/images/workshop1.jpg"  OnClick="imgworkshop_Click" /></div>
<div style="position:relative;left:170px;top:-110px;"><asp:LinkButton runat="server" ID="lnkworkshop"  ForeColor="#488AC7" font-size="20px"   Text="workSHOPS"  Font-Underline="false"  OnClick="lnkworkshop_Click"></asp:LinkButton></div> 
</div>
<div style="position:relative;top:200px;">
<div style="position:relative;left:430px;top:-100px" ><asp:ImageButton runat="server" ID="imglecture" ImageUrl="~/images/lecture1.jpg"  OnClick="imglecture_Click" /></div>
<div style="position:relative;left:260px;top:-190px;"><asp:LinkButton runat="server" ID="lnklecture" ForeColor="#488AC7" Font-Size="20px" text="guestLECTURES" Font-Underline="false" OnClick="lnklecture_Click"></asp:LinkButton></div>
<br /><br /><br />
</div>
</div>
</asp:Content>

