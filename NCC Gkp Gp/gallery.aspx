<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="style5">
        <center>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/a1.jpg" Height="200px" Width="200px" />
                    &nbsp;
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/a2.jpg" Height="200px" Width="200px" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/a3.jpg" Height="200px" Width="200px" />
                    &nbsp;
                </td>
                <td>
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/a4.jpg" Height="200px" Width="200px" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/a5.jpg" Height="200px" Width="200px" />
                    &nbsp;
                </td>
                <td>
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/a6.jpg" Height="200px" Width="200px" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/a7.jpg" Height="200px" Width="200px" />
                    &nbsp;
                </td>
                <td>
                    <asp:Image ID="Image9" runat="server" ImageUrl="~/Images/a8.jpg" Height="200px" Width="200px" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/a9.jpg" Height="200px" Width="200px" />
                    &nbsp;
                </td>
                <td>
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/a10.jpg" Height="200px"
                        Width="200px" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/a11.jpg" Height="200px"
                        Width="200px" />
                    &nbsp;
                </td>
                <td>
                    <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/a12.jpg" Height="200px"
                        Width="200px" />
                    &nbsp;
                </td>
            </tr>
        </center>
    </table>
</asp:Content>
