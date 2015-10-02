<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
    #video { margin-top:40px; margin-left:auto; margin-right:auto;}
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="video">
<video controls="controls" autoplay="autoplay" >
        <%--<source src="video/ts12teaser_VP8.webm" type="video/webm" />--%>
        <source src="ts12teaser_libtheora.ogv" type="video/ogg" />
        <%--<source src="video/ts12teaser.mp4" type="video/mp4" />--%>
        
      </video>
      </div>
</asp:Content>

