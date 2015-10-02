<%@ Page Title="Hospitality | techSRIJAN  2012" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true" CodeFile="hospitality.aspx.cs" Inherits="hospitality" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .grey { padding:5px; text-align:left; margin:5px; font-family:Segoe UI, Calibri; font-size:16px;}
        .field { padding:5px; width:200px; margin:5px; background-color:#f7f7f7; color:Black;}
        .dropdownfield{ margin:5px; color:Black; border-color:Gray;}
        #regtable { margin-top:50px; margin-bottom:30px;}
        #regtable td { width:160px; height:auto;}
        .btn_submit { margin:5px; border-radius:3px; border-color:#00AFDB;}
        .errors { font-style:italic; color:Red;}
        .date { width:30px; text-align:center;}
        .year { width:50px; text-align:center;}
        .content .details { float:left; margin-top:40px; margin-left:40px; background-color:Silver; width:98%;}
        .details h2 { text-align:left; padding:5px; margin:10px; font-family:Segoe UI, Calibri; font-size:18px;}
        .table { float:left; width:98%; margin-left:40px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="heading">
     <div id="hdiv"><h1 class="htitle"><strong>Hospitality</strong></h1></div>
    <div class="content">
    <div class="details">
        <h2>Central Registration  - Rs. 250 only</h2>
        <h2>Accomodation an Fooding - Rs. 400 only</h2>
        </div>
        <div class="table">
        <table id="regtable">
        <tr>
            <td><asp:Label ID="Label1" CssClass="grey" runat="server" Text="First Name:*"></asp:Label></td>
            <td><asp:TextBox ID="t1" CssClass="field" runat="server" TextMode="SingleLine"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator CssClass="errors" ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="t1" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" CssClass="grey" runat="server" Text="Last Name:"></asp:Label></td>
            <td><asp:TextBox ID="t2" CssClass="field" runat="server" TextMode="SingleLine"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label3" class="grey" runat="server" Text="Email:*"></asp:Label></td>
            <td><asp:TextBox ID="t3" class="field" runat="server" TextMode="SingleLine"></asp:TextBox></td>
            <td>
                <asp:RegularExpressionValidator CssClass="errors" 
                    ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="t3" ErrorMessage="Enter valid email id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" CssClass="grey" runat="server" Text="College*"></asp:Label></td>
            <td><asp:TextBox ID="t4" CssClass="field" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label5" CssClass="grey" runat="server" Text="Arrival Date:"></asp:Label></td>
            <td>
                <asp:TextBox ID="t5d" CssClass="field date" runat="server" MaxLength="2"></asp:TextBox>/
                <asp:TextBox ID="t5m" CssClass="field date" runat="server" MaxLength="2"></asp:TextBox>/
                <asp:TextBox ID="t5y" CssClass="field year" runat="server"></asp:TextBox></td>

            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label ID="Label8" class="grey" runat="server" Text="Travelling via:"></asp:Label></td>
            <td><asp:DropDownList ID="DropDownList1" CssClass="dropdownfield" runat="server" BackColor="#f7f7f7" 
                                            ForeColor="Black" Width="212px" Height="24px" 
                    AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Value="1">Bus</asp:ListItem>
                            <asp:ListItem Value="2">Train</asp:ListItem>
                            <asp:ListItem Value="3">Self</asp:ListItem>
                    </asp:DropDownList></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label11" CssClass="grey" runat="server" Text="Train No. " Visible="false"></asp:Label></td>
            <td><asp:TextBox ID="t6" CssClass="field" runat="server" TextMode="SingleLine" Visible="false"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label6" CssClass="grey" runat="server" Text="PNR No. " Visible="false"></asp:Label></td>
            <td><asp:TextBox ID="t7" CssClass="field" runat="server" TextMode="SingleLine" Visible="false"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label7" CssClass="grey" runat="server" Text="Boarding Date:" Visible="false"></asp:Label></td>
            <td><asp:Panel ID="panel1" runat="server" Visible="false">
                <asp:TextBox ID="t8d" CssClass="field date" runat="server" TextMode="SingleLine" MaxLength="2"></asp:TextBox>/
                <asp:TextBox ID="t8m" CssClass="field date" runat="server" TextMode="SingleLine" MaxLength="2"></asp:TextBox>/
                <asp:TextBox ID="t8y" CssClass="field year" runat="server" TextMode="SingleLine"></asp:TextBox></asp:Panel></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label12" CssClass="grey" runat="server" Text="Departure Date:"></asp:Label></td>
            <td><asp:TextBox ID="t9d" CssClass="field date" runat="server" MaxLength="2"></asp:TextBox>/
                <asp:TextBox ID="t9m" CssClass="field date" runat="server" MaxLength="2"></asp:TextBox>/
                <asp:TextBox ID="t9y" CssClass="field year" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label10" CssClass="grey" runat="server" Text="Phone Number:"></asp:Label></td>
            <td><asp:TextBox ID="t10" CssClass="field" runat="server" TextMode="SingleLine"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
        <td></td>
            <td>
                <asp:Button ID="Button1" CssClass="btn_submit" runat="server" Text="Submit" 
                    onclick="Button1_Click" BackColor="#00AFDB" BorderStyle=Outset 
                    ForeColor="White" Height="30px" Width="100px" /></td>
                <td>
                    </td>
        </tr>
        <tr><td colspan="3"><asp:Label ID="Lbl_msg" CssClass="grey errors" runat="server" Text="" Visible="false"></asp:Label></td></tr>
        </table> 
        </div>
    </div>
    </div>

</asp:Content>

