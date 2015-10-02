<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true" CodeFile="registeredevents.aspx.cs" Inherits="registeredevents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="heading">
        <div id="hdiv"><h1 class="htitle"><strong>Registration</strong></h1></div>
        <div>
        
        <div class="eventregmenu">
         <ul>
            
            <li><a href="#" class="lb_reg">My Profile</a>
                <%--<asp:LinkButton ID="LinkButton1" CssClass="lb_reg" runat="server">My Profile</asp:LinkButton>--%></li>
            <li><a href="registration.aspx" class="lb_reg">Event Registration</a>
                <%--<asp:LinkButton ID="LinkButton2" CssClass="lb_reg" runat="server" onclick="LinkButton2_Click">Events Registration</asp:LinkButton>--%></li>
            <li><a href="#" class="lb_reg">Registered Events</a>
                <%--<asp:LinkButton ID="LinkButton3" CssClass="lb_reg" runat="server">Registered Events</asp:LinkButton>--%></li>
            <li><a href="changepassword.aspx" class="lb_reg">Change Password</a>
                <%--<asp:LinkButton ID="LinkButton4" CssClass="lb_reg" runat="server">Change Password</asp:LinkButton>--%></li>
            <li>
                <asp:LinkButton ID="LinkButton5" CssClass="lb_reg" runat="server" 
                    onclick="LinkButton5_Click">Logout</asp:LinkButton></li>
         </ul>
        </div>
       
        <div class="eventreg" style=" float:left;">
        
            <table>
                <tr>
                    <td><asp:Label ID="Label2" CssClass="lbl_event" runat="server" Text="Old Password:"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" CssClass="txt_event" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Enter password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" CssClass="lbl_event" runat="server" Text="New Password:"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" CssClass="txt_event" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" CssClass="lbl_event" runat="server" Text="Retype Password:"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" CssClass="txt_event" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox3" ControlToValidate="TextBox2" 
                            ErrorMessage="Password do not match"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="Button1" CssClass="btn_submit" runat="server" Text="Register" 
                    onclick="Button1_Click" BackColor="#00AFDB" BorderStyle=Outset 
                    ForeColor="White" Height="30px" Width="100px" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3"><asp:Label ID="Label4" CssClass="lbl_event lbl_msg" runat="server" Text="Label" Visible="false"></asp:Label></td>
                </tr>
            </table>
        
        </div>
       
       
        </div>
    </div>
</asp:Content>

