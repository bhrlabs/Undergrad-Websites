<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><h2>Contact Us</h2><br />

    
        <table class="style5">
            <tr>
                <td><center>
                    <asp:Image ID="Image1" runat="server" Height="150px" 
                        ImageUrl="~/Images/ncc.jpg" /></center>
                </td>
            </tr>
            <tr>
                <td><center>
                    <asp:Image ID="Image2" runat="server" BorderWidth="2px" 
                        ImageUrl="~/Images/Contacts.jpg" /></center>
                </td>
            </tr>
        </table>

    
    </center>

</asp:Content>

