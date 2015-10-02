<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true" CodeFile="teaser.aspx.cs" Inherits="teaser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #teaser { width:480px; height:270px; margin-left:auto; margin-right:auto; margin-top:30px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="teaser">
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    
    </div>
</asp:Content>

