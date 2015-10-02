<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="heading">
        <div id="hdiv"><h1 class="htitle"><strong>My Profile</strong></h1></div>
        <div>
        
        <div class="eventregmenu">
         <ul>
            
            <li><a href="myprofile.aspx" class="lb_reg">My Profile</a>
                <%--<asp:LinkButton ID="LinkButton1" CssClass="lb_reg" runat="server">My Profile</asp:LinkButton>--%></li>
            <li><a href="registration.aspx" class="lb_reg">Event Registration</a>
                <%--<asp:LinkButton ID="LinkButton2" CssClass="lb_reg" runat="server" onclick="LinkButton2_Click">Events Registration</asp:LinkButton>--%></li>
            
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
                    <td>
                        <asp:Label ID="Label1" CssClass="lbl_event" runat="server" Text="Name"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox1" CssClass="txt_event" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" CssClass="txt_event" runat="server"></asp:TextBox></td>
               </tr>
               <tr>
                    <td>
                        <asp:Label ID="Label2" CssClass="lbl_event" runat="server" Text="College"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox3" CssClass="txt_event" runat="server"></asp:TextBox></td>
               </tr>
               <tr>
                    <td>
                        <asp:Label ID="Label3" CssClass="lbl_event" runat="server" Text="Branch"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox4" CssClass="txt_event" runat="server"></asp:TextBox></td>
               </tr>
               <tr>
                    <td>
                        <asp:Label ID="Label4" CssClass="lbl_event" runat="server" Text="Year"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox5" CssClass="txt_event" runat="server"></asp:TextBox></td>
               </tr>
               <tr>
                    <td>
                        <asp:Label ID="Label5" CssClass="lbl_event" runat="server" Text="City"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox6" CssClass="txt_event" runat="server"></asp:TextBox></td>
               </tr>
               <tr>
                    <td>
                        <asp:Label ID="Label6" CssClass="lbl_event" runat="server" Text="Phone Number"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox7" CssClass="txt_event" runat="server"></asp:TextBox></td>
               </tr>
              
               <tr>
                    <td></td>
                    <td><asp:Button ID="Button1" CssClass="btn_submit" runat="server" Text="Edit" 
                    onclick="Button1_Click" BackColor="#00AFDB" BorderStyle=Outset 
                    ForeColor="White" Height="30px" Width="100px" />
                    <asp:Button ID="Button2" CssClass="btn_submit" runat="server" Text="Update" 
                    onclick="Button2_Click" BackColor="#00AFDB" BorderStyle=Outset 
                    ForeColor="White" Height="30px" Width="100px" />
                    </td>
               </tr>
               <tr>
                <td colspan="2">
                    <asp:Label ID="Label7" CssClass="lbl_event lbl_msg" runat="server" Text="Label" Visible="false"></asp:Label></td>
               </tr>
            </table>
        
        </div>
       
       
        </div>
    </div>

</asp:Content>

