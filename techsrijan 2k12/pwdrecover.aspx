<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true" CodeFile="pwdrecover.aspx.cs" Inherits="pwdrecover" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
    <style type="text/css" runat="server">
        #Label1 { font-family:Calibri; font-size:15px;}
        .btn_submit { margin:0px; border-radius:3px; border-color:#00AFDB;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="heading">
     <div id="hdiv"><h1 class="htitle"><strong>Recover your Password</strong></h1></div>
   
    <div style=" height:500px; margin-top:100px;"> 
    <div class="recoverDiv">
        <div><p>Enter the Email Id from which you have registered.</p></div>
        <div class="controls">
            <asp:Label ID="Label1" runat="server" Text="Enter your Email Id:"></asp:Label>
            <asp:TextBox ID="Text_email" runat="server" AutoPostBack="False"></asp:TextBox>
        </div>
        <div class="controls">
            <asp:Button ID="pwd_send" CssClass="btn_submit" runat="server" Text="Register" 
                    onclick="pwd_send_Click" BackColor="#00AFDB" BorderStyle=Outset 
                    ForeColor="White" Height="30px" Width="100px" />
            
        </div >
        <div class="controls">
            <asp:Label ID="message" runat="server" Text="label" Visible="false"></asp:Label>
            <br />
            
        </div>
    </div>
    </div>
    </div>
</asp:Content>

