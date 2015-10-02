<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" Title="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center><br /><br /><br />
    <h2> NCC Authorized Login</h2>
    <br /><br />
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="TextBox1"
            runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Password" ></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp<asp:TextBox ID="TextBox2"
            runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Log In" onclick="Button1_Click" 
            style="height: 26px" />


    </center><br /><br /><br /><br /><br />
</asp:Content>

