<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" Title="ts2011-Signin" %>

<script runat="server">
    Protected Sub Login1_LoggingIn(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.LoginCancelEventArgs)
        Dim login1 As Login = CType(loginview1.FindControl("Login1"), Login)

        If Membership.ValidateUser(login1.UserName, login1.Password) Then
            FormsAuthentication.RedirectFromLoginPage(login1.UserName, login1.RememberMeSet)
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not User.Identity.IsAuthenticated Then
            loginstatus1.Visible = "false"
        End If
      

        If Request.QueryString("ReturnURL") IsNot Nothing Then
            Response.Redirect("/techsrijan/~/home.aspx")

        End If
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:relative;top:70px;left:20px;">

<asp:LoginView ID="loginview1" runat="server"    >
    <LoggedInTemplate >
    Welcome <asp:LoginName id="loginname1" runat="server" />
    </LoggedInTemplate>
    <AnonymousTemplate >
    <asp:Login ID="Login1" runat="server" 
        HelpPageText="Contact administrator for help" HelpPageUrl="~/Help.aspx" 
        PasswordRecoveryText="Forgot Password" 
        PasswordRecoveryUrl="~/Passwordrecovery.aspx" onloggingin="Login1_LoggingIn">
        <LayoutTemplate>
            <table border="0" cellpadding="1" cellspacing="0" 
                style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table border="0" cellpadding="0">
                            <tr>
                                <td align="center" colspan="3" style="font-weight:bold; font-size:medium;">
                                    Log In</td>
                            </tr>
                            <tr><td colspan="2"></td></tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Font-Bold="true"  >User 
                                    Name:</asp:Label>
                                </td>
                                <td style="width:20px;"></td>
                                <td align="left" >
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                   </td><td style="min-width:70px;"> <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="ctl01$Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" Font-Bold="true" >Password:</asp:Label>
                                </td>
                                <td style="width:20px;"></td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                        ControlToValidate="Password" ErrorMessage="Password is required." 
                                        ToolTip="Password is required." ValidationGroup="ctl01$Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time."  Font-Bold="true" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="3">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                                        ValidationGroup="ctl01$Login1" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:HyperLink ID="PasswordRecoveryLink" runat="server" 
                                        NavigateUrl="~/Passwordrecovery.aspx">Forgot Password</asp:HyperLink>
                                    <br />
                                    <asp:HyperLink ID="HelpLink" runat="server" NavigateUrl="~/Help.aspx">Contact 
                                    administrator for help</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:Login>
    </AnonymousTemplate>
    </asp:LoginView>
    <br />
    <asp:LoginStatus id="loginstatus1" runat="server" />
</div>
</asp:Content>

