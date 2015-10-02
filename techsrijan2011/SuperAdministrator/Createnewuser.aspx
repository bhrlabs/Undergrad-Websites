<%@ Page Language="VB" MasterPageFile="~/SuperAdministrator/shashank.master" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Net.Mail" %>
 

<script runat="server">
    Protected Sub CreateUserWizard1_CreatedUser(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard1.CreatedUser
        CreateUserWizard1.ActiveStepIndex = +1
    End Sub

    Protected Sub CreateUserWizard1_FinishButtonClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.WizardNavigationEventArgs) Handles CreateUserWizard1.FinishButtonClick
        If (TextBox1.Text IsNot "") Then
            Roles.AddUserToRole(CreateUserWizard1.UserName, TextBox1.Text)
        End If
    End Sub

    Protected Sub checkbox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles checkbox1.CheckedChanged
        If checkbox1.Checked = True Then
            TextBox1.Visible = True
        ElseIf checkbox1.Checked = False Then
            TextBox1.Visible = False
            TextBox1.Text = ""
        End If
    End Sub
    
    Protected Sub newevent_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles newevent.Click
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        Dim sqlString As String = "INSERT INTO [EVENTS]([EventName],[NoOfMembers]) VALUES ((@eventname), (@eventno))"
        Dim myConnection As New SqlConnection(connectionString)
        Dim cmd As New SqlCommand(sqlString, myConnection)
        myConnection.Open()
        cmd.Parameters.AddWithValue("@eventname", eventname.Text.ToString)
        cmd.Parameters.AddWithValue("@eventno", Convert.ToInt32(eventmember.Text))
        Dim myreader As SqlDataReader
        myreader = cmd.ExecuteReader()
        myConnection.Close()
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="superadminhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="superadminmaster" runat="Server">
    <div style="position: relative; top: 70px; font-weight: bold; font-size: 14px;">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" LoginCreatedUser="false"
            ContinueDestinationPageUrl="~/SuperAdministrator/SuperAdmin.aspx">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    <ContentTemplate>
                        <table border="0">
                            <tr>
                                <td align="center" colspan="2">
                                    Sign Up for Your New Account
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User 
                                Name:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                                        ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required."
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                        ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security 
                                Question:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question"
                                        ErrorMessage="Security question is required." ToolTip="Security question is required."
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security 
                                Answer:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                                        ErrorMessage="Security answer is required." ToolTip="Security answer is required."
                                        ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                        ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                        ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: Red;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:WizardStep runat="server" ID="wizard1" AllowReturn="true">
                    <asp:CheckBox runat="server" ID="checkbox1" Text="Do you want to add role" AutoPostBack="true" />
                    <asp:TextBox runat="server" ID="TextBox1" Text="" Visible="false"></asp:TextBox>
                </asp:WizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
        
        <asp:TextBox runat="server" Text="enter event name" ID="eventname"></asp:TextBox>
        <asp:TextBox runat="server" Text="enter member number" ID="eventmember"></asp:TextBox>
        <asp:Button runat="server" ID="newevent" Text="add event" />
    </div>
</asp:Content>
