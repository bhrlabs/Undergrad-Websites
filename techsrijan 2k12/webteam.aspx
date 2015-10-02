<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true" CodeFile="webteam.aspx.cs" Inherits="webteam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="heading">
     <div id="hdiv"><h1 class="htitle"><strong>Web Team</strong></h1></div>
    
    <div class="category">
        <h2>Web Developer</h2>
        <div class="webt float-l">
        <a href="https://www.facebook.com/ashvani.chaudhary" target="_blank"><h3>Ashvani Kumar Chaudhary</h3></a>
        <h2>+91-7388848536</h2>
        <h2>ashvani@techsrijan.org</h2>
        </div>

        <div class="webt float-l">
        <a href="https://www.facebook.com/ankitspreadinglove" target="_blank"><h3>Ankit Pandey</h3></a>
        <h2>+91-8765108524</h2>
        <h2>ankit@techsrijan.org</h2>
        </div>

        <div class="webt float-l">
        <a href="https://www.facebook.com/profile.php?id=1819047905" target="_blank"><h3>Abhishek Pandey</h3></a>
        <h2>+91-9451192072</h2>
        <h2>abhishek@techsrijan.org</h2>
        </div>
    </div>

    <div class="category marg-bot">
        <h2>Graphical Designer</h2>
        <div class="webt float-l">
        <a href="https://www.facebook.com/rdbhaskar" target="_blank"><h3>Ratandeep Bhaskar</h3></a>
        <h2>+91-9559794369</h2>
        <h2>ratandeep@techsrijan.org</h2>
        </div>
    </div>

    </div>
</asp:Content>

