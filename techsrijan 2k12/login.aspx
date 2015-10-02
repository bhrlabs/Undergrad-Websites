<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #loginbox { width:600px; margin-left:auto; margin-right:auto; margin-top:100px; margin-bottom:200px; height:auto; border:1px solid gray;}
        #loginbox .sec1 { margin-bottom:0px; margin-left:20px; margin-right:20px; margin-top:20px; height:100px; border-bottom:2px solid Gray; }
        #loginbox .sec2 { margin-bottom:20px; margin-left:20px; margin-right:20px; margin-top:0px; height:160px; }
        #loginbox .sec2 table { margin-top:20px;}
        #loginbox .sec2 table td { margin:5px; padding:5px; text-align:left; vertical-align:text-bottom; font-family:Segoe UI, Calibri;}
        .btn_submit { margin:0px; border-radius:3px; border-color:#00AFDB;}
        .sec1 p { padding-left:50px; padding-right:50px; padding-top:5px; font-family:Segoe UI,  Calibri; font-size:14px; text-align:left;}
        .sec1 h3 { padding-left:50px; padding-top:15px; font-family:Segoe UI,  Calibri; font-size:14px; text-decoration:underline; color:#00AFDB; text-align:left;}
        #loginbox .sec2 table td a { font-style:italic; text-decoration:underline;}
        #loginbox .sec2 table td a:hover { color:#00afdb;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="heading">
        <div id="hdiv"><h1 class="htitle"><strong>Login</strong></h1></div>
        <div style=" float:left; width:100%;">
        <div id="loginbox">
        <div class="sec1">
            <p>Welcome to techsrijan 2012. Enter your email-id and password to login.</p>
            <a href="pwdrecover.aspx"><h3>Not registered yet?</h3></a>
            
        </div>
        <div class="sec2">
        <asp:Panel ID="panel1" runat="server" Visible="true">
        <table>
            <tr>
                <td> 
                    <asp:Label ID="Label1" runat="server" Text="Email Address:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td></tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" CssClass="btn_submit" runat="server" Text="Login" 
                    onclick="Button1_Click" BackColor="#00AFDB"  
                    ForeColor="White" Height="30px" Width="60px" />
                    <a href="pwdrecover.aspx"><asp:Label ID="Label3" runat="server" Text="forgot your password"></asp:Label></a></td></tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="false"></asp:Label></td></tr>
        </table>
        </asp:Panel>
        <asp:Panel ID="panel2" runat="server" Visible="false">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="You are already logged in"></asp:Label></td>
                <td>
                    <asp:Button ID="Button2" CssClass="btn_submit" runat="server" Text="Logout" 
                    onclick="Button2_Click" BackColor="#00AFDB"  
                    ForeColor="White" Height="30px" Width="60px" /></td>
            </tr>
            
        </table>
        </asp:Panel>
        </div>
        </div>
        </div>
    </div>
</asp:Content>

