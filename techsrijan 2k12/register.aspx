<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .grey { padding:5px; text-align:left; margin:5px; font-family:Segoe UI, Calibri; font-size:16px;}
        .field { padding:5px; width:200px; margin:5px; background-color:#f7f7f7;}
        .dropdownfield{ margin:5px;}
        #regtable { margin-top:30px; margin-bottom:30px;}
        #regtable td { width:160px; height:auto;}
        .btn_submit { margin:5px; border-radius:3px; border-color:#00AFDB;}
        .errors { font-style:italic; color:Red;}
        
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="heading">
     <div id="hdiv"><h1 class="htitle"><strong>Registration</strong></h1></div>
    <div class="content">
        

        <table id="regtable">
        <tr>
            <td><asp:Label ID="Label1" CssClass="grey" runat="server" Text="First Name:*"></asp:Label></td>
            <td><asp:TextBox ID="Textfname" CssClass="field" runat="server" TextMode="SingleLine"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator CssClass="errors" ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Textfname" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" CssClass="grey" runat="server" Text="Last Name:"></asp:Label></td>
            <td><asp:TextBox ID="Textlname" CssClass="field" runat="server" TextMode="SingleLine"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label3" class="grey" runat="server" Text="Email:*"></asp:Label></td>
            <td><asp:TextBox ID="Textemail" class="field" runat="server" TextMode="SingleLine"></asp:TextBox></td>
            <td>
                <asp:RegularExpressionValidator CssClass="errors" ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="Textemail" ErrorMessage="Enter valid email id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" CssClass="grey" runat="server" Text="Password:*"></asp:Label></td>
            <td><asp:TextBox ID="Textregpass" CssClass="field" runat="server" TextMode="Password"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label5" CssClass="grey" runat="server" Text="Confirm Password:"></asp:Label></td>
            <td><asp:TextBox ID="Textcnfregpass" CssClass="field" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:CompareValidator CssClass="errors" ID="CompareValidator1" runat="server" 
                    ControlToCompare="Textcnfregpass" ControlToValidate="Textregpass" 
                    ErrorMessage="Password mismatch"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label6" CssClass="grey" runat="server" Text="College:"></asp:Label></td>
            <td><asp:TextBox ID="Textclg" CssClass="field" runat="server" TextMode="SingleLine"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label7" CssClass="grey" runat="server" Text="Branch:"></asp:Label></td>
            <td><asp:TextBox ID="Textbranch" CssClass="field" runat="server" TextMode="SingleLine"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label8" class="grey" runat="server" Text="Year:"></asp:Label></td>
            <td><asp:DropDownList ID="DropDownListyear" CssClass="dropdownfield" runat="server" BackColor="#f7f7f7" 
                                            ForeColor="GrayText" Width="212px" Height="24px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label9" CssClass="grey" runat="server" Text="City:"></asp:Label></td>
            <td><asp:TextBox ID="Textcity" CssClass="field" runat="server" TextMode="SingleLine"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label10" CssClass="grey" runat="server" Text="Phone Number:"></asp:Label></td>
            <td><asp:TextBox ID="Textphn" CssClass="field" runat="server" TextMode="SingleLine"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
        <td></td>
            <td>
                <asp:Button ID="Button1" CssClass="btn_submit" runat="server" Text="Register" 
                    onclick="Button1_Click" BackColor="#00AFDB" BorderStyle=Outset 
                    ForeColor="White" Height="30px" Width="100px" /></td>
                <td>
                    </td>
        </tr>
        <tr><td colspan="3"><asp:Label ID="Lbl_msg" CssClass="grey errors" runat="server" Text="" Visible="false"></asp:Label></td></tr>
        </table> 
    </div>
    </div>

</asp:Content>

