<%@ Page Title="Gallery" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="gallery.aspx.vb" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript" src="extras/jquery-1.6.1.min.js"></script>

    <script type="text/javascript" src="extras/jquery.nivo.slider.pack.js"></script>

    <link rel="stylesheet" type="text/css" href="extras/nivo-slider.css" />
    <link rel="stylesheet" type="text/css" href="extras/default.css" />
    <link rel="stylesheet" type="text/css" href="extras/nivo-style.css" />
    <center>
        <div id="wrapper" style="width:590px">
            <div class="slider-wrapper theme-default" style="width: 590px">
                <div class="ribbon">
                </div>
                <div id="slider" class="nivoSlider">
                    <img src="images/gallery (1).jpg" alt="" />
                    <img src="images/gallery (2).jpg" alt="" />
                    <img src="images/gallery (3).jpg" alt="" />
                    <img src="images/gallery (4).jpg" alt="" />
                    <img src="images/gallery (5).jpg" alt="" />
                    <img src="images/gallery (6).jpg" alt="" />
                    <img src="images/gallery (7).jpg" alt="" />
                    <img src="images/gallery (8).jpg" alt="" />
                    <img src="images/gallery (9).jpg" alt="" />
                    <img src="images/gallery (10).jpg" alt="" />
                </div>
            </div>
        </div>

        <script type="text/javascript" src="extras/jquery-1.6.1.min.js"></script>

        <script type="text/javascript" src="extras/jquery.nivo.slider.pack.js"></script>

        <script type="text/javascript">
            $(window).load(function () {
                $('#slider').nivoSlider();
            });
        </script>

    </center>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
