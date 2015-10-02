<%@ Page Title="" Language="C#" MasterPageFile="~/userMaster.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .eventregmenu { float:left; width:20%; }
        .eventreg { float:left; width:79%; border-left:1px solid Gray;}
       
        .eventreg table { margin:50px; margin-bottom:200px;}
        .eventreg table td { font-family:Segoe UI, Calibri; font-size:16px; text-align:left; width:200px; }
        .txt_event { width:200px; padding:5px; margin:5px; color:Black;}
        .lbl_event { padding:5px; padding-left:40px; margin:5px;}
        .ddl { width:212px; height:30px; margin:5px;}
        .btn_submit { margin:5px; border-radius:3px; border-color:#00AFDB;}
        .lbl_msg { font-style:italic; color:Red; font-weight:500;}
        .eventregmenu ul{ margin-top:50px; }
        .eventregmenu ul li {  background-color:#00afdb; text-align:left; margin:5px; font-size:18px; font-weight:600; font-family:Segoe UI, Calibri; padding:10px; margin-left:10px; margin-right:10px;}
        .lb_reg { color:White;}
        .eventregmenu ul li:hover,.lb_reg:hover { background-color:#00627b; color:Silver; }
        .validation { float:left; font-size:14px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="heading">
        <div id="hdiv"><h1 class="htitle"><strong>Event Registration</strong></h1></div>
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
                        <asp:Label ID="Label1" CssClass="lbl_event" runat="server" Text="Event Name"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" CssClass="ddl" runat="server" AutoPostBack="true" 
                            ontextchanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Value="Abinitio">Abinitio</asp:ListItem>
                            <asp:ListItem Value="Bridgekriti">Bridgekriti</asp:ListItem>
                            <asp:ListItem Value="Sanscarburant">Sanscarburant</asp:ListItem>
                            <asp:ListItem Value="Junkyardwars">Junkyardwars</asp:ListItem>
                            <asp:ListItem Value="Resnova">Resnova</asp:ListItem>
                            <asp:ListItem Value="Manthan">Manthan</asp:ListItem>
                            <asp:ListItem Value="Bizgyan">Bizgyan</asp:ListItem>
                            <asp:ListItem Value="Techneeti">Techneeti</asp:ListItem>
                            <asp:ListItem Value="Hardrachana">Hardrachana</asp:ListItem>
                            <asp:ListItem Value="Softrachana">Softrachana</asp:ListItem>
                            <asp:ListItem Value="Codzilla">Codzilla</asp:ListItem>
                            <asp:ListItem Value="Techprastuti">Techprastuti</asp:ListItem>
                            <asp:ListItem Value="Ventura">Ventura</asp:ListItem>
                            <asp:ListItem Value="Robotix(wired)">Robotix(wired)</asp:ListItem>
                            <asp:ListItem Value="Robotix(wireless)">Robotix(wireless)</asp:ListItem>
                            <asp:ListItem Value="Robotix(autonomous)">Robotix(autonomous)</asp:ListItem>
                            <asp:ListItem Value="(workshop)Motion Sensing">(workshop)Motion Sensing</asp:ListItem>
                            <asp:ListItem Value="(workshop)Cloud Computing">(workshop)Cloud Computing</asp:ListItem>
                            <asp:ListItem Value="(workshop)Ethical Hacking">(workshop)Ethical Hacking</asp:ListItem>
                            

                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" CssClass="lbl_event" runat="server" Text="Your Name"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox1" CssClass="txt_event" runat="server" ReadOnly="true"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" CssClass="lbl_event" runat="server" Text="Contact No"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox2" CssClass="txt_event" runat="server"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" CssClass="lbl_event" runat="server" Text="Team Name"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox3" CssClass="txt_event" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="Team name required" 
                            CssClass="validation" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" CssClass="lbl_event" runat="server" Text="No. of Members"></asp:Label></td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" CssClass="ddl" runat="server" AutoPostBack="true"
                                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_member1_name" CssClass="lbl_event" runat="server" Text="2nd Member Name" Visible="false"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_member1_name" CssClass="txt_event" runat="server" Visible="false"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txt_member1_name" ErrorMessage="Enter Name" 
                            Visible="False" CssClass="validation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_member1_email" CssClass="lbl_event" runat="server" Text="2nd Member Email" Visible="false"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_member1_email" CssClass="txt_event" runat="server" Visible="false"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txt_member1_email" ErrorMessage="Invalid email address" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            Visible="False" CssClass="validation"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_email1" runat="server" 
                            ControlToValidate="txt_member1_email" CssClass="validation" 
                            ErrorMessage="Enter email" Visible="False"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_member2_name" CssClass="lbl_event" runat="server" Text="3rd Member Name" Visible="false"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_member2_name" CssClass="txt_event" runat="server" Visible="false"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txt_member2_name" ErrorMessage="Enter name" 
                            Visible="False" CssClass="validation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_member2_email" runat="server" CssClass="lbl_event" Text="3rd Member Email" Visible="false"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_member2_email" CssClass="txt_event" runat="server" Visible="false"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txt_member2_email" ErrorMessage="Invalid email address" 
                            Visible="False" CssClass="validation"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_email2" runat="server" 
                            ControlToValidate="txt_member2_email" CssClass="validation" 
                            ErrorMessage="Enter email" Visible="False"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_member3_name" runat="server" Text="4th Member Name" CssClass="lbl_event" Visible="false"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_member3_name" CssClass="txt_event" runat="server" Visible="false"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txt_member3_name" ErrorMessage="Enter name" 
                            Visible="False" CssClass="validation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_member3_email" CssClass="lbl_event" runat="server" Text="4th Member Email" Visible="false"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_member3_email" CssClass="txt_event" runat="server" Visible="false"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txt_member3_email" ErrorMessage="Invalid email address" 
                            Visible="False" CssClass="validation"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_email3" runat="server" 
                            ControlToValidate="txt_member3_email" CssClass="validation" 
                            ErrorMessage="Enter email" Visible="False"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_member4_name" CssClass="lbl_event" runat="server" Text="5th Member Name" Visible="false"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_member4_name" CssClass="txt_event" runat="server" Visible="false"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txt_member4_name" ErrorMessage="Enter name" 
                            Visible="False" CssClass="validation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_member4_email" CssClass="lbl_event" runat="server" Text="5th Member Email" Visible="false"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_member4_email" CssClass="txt_event" runat="server" Visible="false"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="txt_member4_email" ErrorMessage="Invalid email address" 
                            Visible="False" CssClass="validation"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_email4" runat="server" 
                            ControlToValidate="txt_member4_email" CssClass="validation" 
                            ErrorMessage="Enter  email" Visible="False"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_member5_name" CssClass="lbl_event" runat="server" Text="6th Member Name" Visible="false"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_member5_name" CssClass="txt_event" runat="server" Visible="false"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txt_member5_name" ErrorMessage="Enter name" 
                            Visible="False" CssClass="validation"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_member5_email" CssClass="lbl_event" runat="server" Text="6th Member Email" Visible="false"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txt_member5_email" CssClass="txt_event" runat="server" Visible="false"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="txt_member5_email" ErrorMessage="Invalid email address" 
                            Visible="False" CssClass="validation"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_email5" runat="server" 
                            ControlToValidate="txt_member5_email" CssClass="validation" 
                            ErrorMessage="Enter email" Visible="False"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" CssClass="btn_submit" runat="server" Text="Register" 
                    onclick="Button1_Click" BackColor="#00AFDB" BorderStyle=Outset 
                    ForeColor="White" Height="30px" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label6" CssClass="lbl_event lbl_msg" runat="server" Text="Label" Visible="false"></asp:Label></td>
                </tr>
            </table>
        
        </div>
       
       
        </div>
    </div>

</asp:Content>

