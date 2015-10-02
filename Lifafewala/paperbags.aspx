<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="paperbags.aspx.cs" Inherits="paperbags" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Paper Bags</title>

<script type="text/javascript" src="../giftbox/swfobject/swfobject.js"></script>
<style type="text/css" media="screen"> 
      html, body, body.sidebars { width:100%; height:100%; margin:0; padding:0;}
	  object { outline:none; }
</style>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="slider">
 <object width="800" height="300">
<param name="movie" value="gallery.swf">
<embed src="../giftbox/gallery.swf" width="1300" height="700">
</embed>
</object>

</div>
</asp:Content>

