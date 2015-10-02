<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" Title="Register" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Net.Mail"%>
<script runat="server">
    
    Protected Sub btnclick_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim createStatus As MembershipCreateStatus
        Dim newUser As MembershipUser = Membership.CreateUser(UserName.Text, Password.Text, Email.Text, Question.SelectedValue.ToString, Answer.Text, True, createStatus)
        Select Case createStatus
            
        
            Case MembershipCreateStatus.Success
                CreateAccountResults.Text = "The user account was successfully created!"
                Dim newUsr As MembershipUser = Membership.GetUser(UserName.Text)
                Dim newUserid As Guid = CType(newUser.ProviderUserKey, Guid)
                Dim connectionString As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
                Dim insertSql As String = "INSERT INTO Registrationdata(UserId,UserName,FullName,CollegeName,CityName,YearName,BranchName,ContactNo,Sent) VALUES(@UserId,@Username,@Fullname,@College,@City,@Year,@Branch,@Mobile,@Sent)"
                
                Dim myConnection As New SqlConnection(connectionString)
                myConnection.Open()
                Dim myCommand As New SqlCommand(insertSql, myConnection)
                myCommand.Parameters.AddWithValue("@UserId", newUserid)
                myCommand.Parameters.AddWithValue("@Username", Username.Text.Trim())
                myCommand.Parameters.AddWithValue("@College", College.Text.Trim)
                myCommand.Parameters.AddWithValue("@City", Cityname.Text.Trim)
                myCommand.Parameters.AddWithValue("@Year", Yearname.SelectedValue)
                myCommand.Parameters.AddWithValue("@Branch", Branch.Text.Trim)
                myCommand.Parameters.AddWithValue("@Mobile", Contactno.Text.Trim)
                myCommand.Parameters.AddWithValue("@Fullname", FullName.Text.Trim)
                myCommand.Parameters.AddWithValue("@Sent", "0")
                myCommand.ExecuteNonQuery()
                myConnection.Close()
                Roles.AddUserToRole(UserName.Text, "Normal")
                Dim sql1 As String = "UPDATE roboKRITI SET [TeamLeaderName]=(@name) WHERE [TeamLeaderEmail]=(@email)"
                Dim myconnection1 As New SqlConnection(connectionString)
                Dim cmd1 As New SqlCommand(sql1, myconnection1)
                myconnection1.Open()
                cmd1.Parameters.AddWithValue("@name", FullName.Text)
                cmd1.Parameters.AddWithValue("@email", Email.Text)
                cmd1.ExecuteNonQuery()
                myconnection1.Close()
                Dim sql2 As String = "UPDATE roboKRITI SET [Partner1Name]=(@name) WHERE [Partner1Email]=(@email)"
                Dim myconnection2 As New SqlConnection(connectionString)
                Dim cmd2 As New SqlCommand(sql2, myconnection2 )
                myconnection2.Open()
                cmd2.Parameters.AddWithValue("@name", FullName.Text)
                cmd2.Parameters.AddWithValue("@email", Email.Text)
                cmd2.ExecuteNonQuery()
                myconnection2.Close()
                Dim sql3 As String = "UPDATE roboKRITI SET [Partner2Name]=(@name) WHERE [Partner2Email]=(@email)"
                Dim myconnection3 As New SqlConnection(connectionString)
                Dim cmd3 As New SqlCommand(sql3, myconnection3)
                myconnection3.Open()
                cmd3.Parameters.AddWithValue("@name", FullName.Text)
                cmd3.Parameters.AddWithValue("@email", Email.Text)
                cmd3.ExecuteNonQuery()
                myconnection3.Close()
                Dim sql4 As String = "UPDATE roboKRITI SET [Partner3Name]=(@name) WHERE [Partner3Email]=(@email)"
                Dim myconnection4 As New SqlConnection(connectionString)
                Dim cmd4 As New SqlCommand(sql4, myconnection4)
                myconnection4.Open()
                cmd4.Parameters.AddWithValue("@name", FullName.Text)
                cmd4.Parameters.AddWithValue("@email", Email.Text)
                cmd4.ExecuteNonQuery()
                myconnection4.Close()
                Dim sql5 As String = "UPDATE roboKRITI SET [Partner4Name]=(@name) WHERE [Partner4Email]=(@email)"
                Dim myconnection5 As New SqlConnection(connectionString)
                Dim cmd5 As New SqlCommand(sql5, myconnection5)
                myconnection5.Open()
                cmd5.Parameters.AddWithValue("@name", FullName.Text)
                cmd5.Parameters.AddWithValue("@email", Email.Text)
                cmd5.ExecuteNonQuery()
                myconnection5.Close()
                
                FullName.Text = String.Empty
                College.Text = String.Empty
                YearName.SelectedValue = "0"
                Branch.Text = String.Empty
                Question.SelectedValue = "0"
                CityName.Text = String.Empty
                Answer.Text = String.Empty
                ConfirmPassword.Text = String.Empty
                'sendemail(Email.Text)
                Dim username1 As String = UserName.Text
                If Membership.ValidateUser(UserName.Text, Password.Text) Then
                    UserName.Text = String.Empty
                    Password.Text = String.Empty
                    
                    FormsAuthentication.RedirectFromLoginPage(username1, True)
                End If
                Response.Redirect("~/MyAccount/Home.aspx")
                
            Case MembershipCreateStatus.DuplicateUserName
                CreateAccountResults.Text = "There already exists a user with this username."
            Case MembershipCreateStatus.DuplicateEmail
                CreateAccountResults.Text = "There already exists a user with this email address."
            Case MembershipCreateStatus.InvalidEmail
                
                CreateAccountResults.Text = "There email address you provided in invalid."
            Case MembershipCreateStatus.InvalidAnswer
                CreateAccountResults.Text = "There security answer was invalid."
            Case MembershipCreateStatus.InvalidPassword
                CreateAccountResults.Text = "The password you provided is invalid. It must be seven characters long and have at least one non-alphanumeric character."
            Case Else
                CreateAccountResults.Text = "There was an unknown error; the user account was NOT created."
        End Select
        
        
    End Sub
    Protected Sub sendemail(ByVal email As String)
    

        Dim objMM As New MailMessage()
        
        Dim fromAddress As New MailAddress("admin@techsrijan.com")
        Dim toAddress As New MailAddress(email)
        objMM.From = fromAddress
        objMM.To.Add(toAddress)
        objMM.To.Add(New System.Net.Mail.MailAddress("rohitdewaker@gmail.com"))
        objMM.Priority = MailPriority.High
        objMM.Subject = "techSRIJAN Registration"
        objMM.IsBodyHtml = "true"
        objMM.Body = "Hi! <br/><br/> Thanks for registering in techsrijan <br/> techSRIJAN 2011 team"
        Dim smtpClient1 As New SmtpClient()
        smtpClient1.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis 
        smtpClient1.Host = "mail.techsrijan.com"
        smtpClient1.Port = "25"
        smtpClient1.Credentials = New System.Net.NetworkCredential("admin", "shanky3221")
        Try
            smtpClient1.Send(objMM)
        Catch ex As Exception
            'Dim query As String = "INSERT INTO Errors([InnerException],[InnerString],[Date]) VALUES(@exception,@message,@date) "
            'Dim connectionString As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            'Dim myconnection As New SqlConnection(connectionString)
            'Dim cmd As New SqlCommand(query, myconnection)
            'myconnection.Open()
            'cmd.Parameters.AddWithValue("@exception", ex.InnerException.Message.ToString)
            'cmd.Parameters.AddWithValue("@message", ex.Message.ToString)
            'cmd.Parameters.AddWithValue("@date", DateTime.Now.ToString)
            'cmd.ExecuteNonQuery()
            'myconnection.Close()
        End Try
    End Sub
</script>
  
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style7
        {
            color: #FFFFFF;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative;top:20px;height:auto; font-weight:bold;font-size:15px;">
   <table border="0">
                        <tr>
                            <td align="right" colspan="2"  
                                style="font-weight:bold;font-size:20px; color:White;">
                                Sign Up for Your New Account</td>
                        </tr>
                        <tr>
                        <td></td></tr>
                        <tr><td ></td></tr>
                        <tr>
                            <td align="left" style="position:relative;width:150px;">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" 
                                    ForeColor="White" >UserName:</asp:Label>
                            </td>
                            <td align="left" style="position:relative;width:150px;">
                                <asp:TextBox ID="UserName" runat="server" ></asp:TextBox></td><td align="right" >
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" 
                                    ToolTip="User Name is required." ValidationGroup="CreateUserWizard1" >User 
                                Name is required.</asp:RequiredFieldValidator>
                                   </td><td> <asp:RegularExpressionValidator ID="regexp1" runat="server" ControlToValidate="UserName"  ValidationExpression="^[\s\S]{0,8}$"   ValidationGroup="CreateUserWizard1">Username 
                                should not be more than 8 letters</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" 
                                    ForeColor="#FFFFFF" >Password:</asp:Label>
                            </td>
                            <td align="left" >
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox></td>
                                <td align="right" >
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password"  
                                    ToolTip="Password is required." ValidationGroup="CreateUserWizard1">Password is 
                                    required</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword" Font-Bold="True" 
                                    ForeColor="#FFFFFF" >Confirm Password:</asp:Label>
                            </td>
                            <td align="left" >
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox></td><td>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" 
                                     
                                    ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1" >Confirm 
                                password is required</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" 
                                    Font-Bold="True" ForeColor="#FFFFFF" >E-mail:</asp:Label>
                            </td>
                            <td align="left" >
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox></td><td>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="Email" 
                                    ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">Email is 
                                required</asp:RequiredFieldValidator></td> 
                                <td align="left">
                                
                                    <asp:RegularExpressionValidator ID="Regularexpressionvalidator1" runat="server"  ControlToValidate="Email"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Correct 
                                    email format required</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                          <tr>
                            <td align="left">
                                <asp:Label ID="FullNameLabel" runat="server" font-bold="True" 
                                    AssociatedControlID="FullName" ForeColor="#FFFFFF">FullName:</asp:Label>
                            </td>
                            <td align="left" >
                                <asp:TextBox ID="FullName" runat="server" ></asp:TextBox></td><td>
                                <asp:RequiredFieldValidator ID="FullNameRequired" runat="server" 
                                    ControlToValidate="FullName" 
                                    ToolTip="Full Name is required." ValidationGroup="CreateUserWizard1" >Full 
                                  name is required</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                        <td align="left" >
                        <asp:Label ID="CollegeLabel" font-bold="True" runat="server" 
                                AssociatedControlID ="College" Text="College Name:" ForeColor="#FFFFFF"></asp:Label>
                        </td>
                        <td align="left" >
                         <asp:TextBox ID="College" runat="server" ></asp:TextBox> </td><td>
                         <asp:RequiredFieldValidator ID="CollegeRequired" runat="server" ControlToValidate="College" ValidationGroup="CreateUserWizard1">College 
                                is required</asp:RequiredFieldValidator>
                        </td>
                        </tr>
                        <tr>
                        <td align="left" >
                        <asp:Label ID="Label1" font-bold="True" runat="server" 
                                AssociatedControlID ="Branch" Text="Branch Name:" ForeColor="#FFFFFF"></asp:Label>
                        </td>
                        <td align="left" >
                         <asp:TextBox ID="Branch" runat="server" ></asp:TextBox> </td><td>
                         <asp:RequiredFieldValidator ID="BranchRequired" runat="server" ControlToValidate="Branch" ValidationGroup="CreateUserWizard1" >Branch 
                                is required</asp:RequiredFieldValidator>
                        </td>
                        </tr>
                        <tr>
                        <td align="left" >
                        <asp:label font-bold="True" ID="YearNameLabel" runat="server" 
                                Text="Enter your year:" ForeColor="#FFFFFF"></asp:label>
                        </td>
                        <td align="left" >
                        <asp:DropDownList ID="YearName" runat="server" >
                            <asp:ListItem Value="0" Selected ="True" >Select a year:</asp:ListItem>
                            <asp:ListItem>first</asp:ListItem>
                            <asp:ListItem>second</asp:ListItem>
                            <asp:ListItem>third</asp:ListItem>
                            <asp:ListItem>fourth</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            </asp:DropDownList></td><td>
                        <asp:RequiredFieldValidator ID="YearNameRequired" runat="server" ControlToValidate ="YearName" InitialValue ="0"  ToolTip="Year is required." validationgroup="CreateUserWizard1">Year 
                                is required</asp:RequiredFieldValidator>
                        </td>
                        </tr>
                        <tr>
                        <td align="left" >
                        <asp:label font-bold="True" ID="CityNameLabel" runat="server" 
                                Text="College's city:" ForeColor="#FFFFFF" CssClass="style7"></asp:label>
                        </td>
                        <td align="left" >
                        <asp:TextBox runat="server" ID="CityName"></asp:TextBox></td><td>
                        <asp:RequiredFieldValidator ID="CityNameRequired" runat="server" ControlToValidate ="CityName"  ToolTip="City Name is required." validationgroup="CreateUserWizard1">City 
                                name is required</asp:RequiredFieldValidator>
                        </td>
                        <td><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="CityName"  ValidationExpression="^[\s\S]{0,25}$"   ValidationGroup="CreateUserWizard1">city 
                            name should not cross 25 letters</asp:RegularExpressionValidator></td>
                        </tr>
                         <tr>
                        <td align="left"  >
                        <asp:label font-bold="True" ID="ContactNoLabel" runat="server" 
                                Text="Enter your contact number:" ForeColor="#FFFFFF" CssClass="style7"></asp:label>
                        </td>
                        <td align="left" >
                        <asp:TextBox runat="server" ID="Contactno"></asp:TextBox></td><td>
                        <asp:RequiredFieldValidator ID="ConactnoRequired" runat="server" ControlToValidate ="Contactno"  ToolTip="Contact no is required." validationgroup="CreateUserWizard1">Contact 
                                 no is required</asp:RequiredFieldValidator>
                        
                        </td>
                        <td><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Contactno"  ValidationExpression="^[\d]{0,13}$"   ValidationGroup="CreateUserWizard1">It 
                            should all be digits and not more than 13 digits</asp:RegularExpressionValidator></td>
                        </tr>
                         <tr>
                            <td align="left">
                                <asp:Label font-bold="True" ID="QuestionLabel" runat="server" 
                                    AssociatedControlID="Question" ForeColor="#FFFFFF" CssClass="style7">Security Question:</asp:Label>
                            </td>
                                                       
                            <td align="left" >
                           
                                <asp:DropDownList ID="Question" runat ="server" >
                                <asp:ListItem Value ="0" Text ="Choose a security question" Selected ="true"></asp:ListItem>
                                <asp:ListItem >What is your favourite colour</asp:ListItem>
                                <asp:ListItem >What is your favourite animal</asp:ListItem>
                                <asp:ListItem >What is your favourtie sport</asp:ListItem>
                                <asp:ListItem >What is your favourite car</asp:ListItem>
                                <asp:ListItem >What is your favourite accessory</asp:ListItem>
                                <asp:ListItem >When&#39;s your birthday</asp:ListItem>
                                </asp:DropDownList></td><td>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                    ControlToValidate="Question" 
                                    ToolTip="Security question is required." initialvalue="0" ValidationGroup="CreateUserWizard1">Security 
                                 question is required</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label font-bold="True" ID="AnswerLabel" runat="server" 
                                    AssociatedControlID="Answer" ForeColor="#FFFFFF" CssClass="style7">Security Answer:</asp:Label>
                            </td>
                            <td align="left" >
                                <asp:TextBox ID="Answer" runat="server" TextMode="Password" ></asp:TextBox></td><td>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                    ControlToValidate="Answer"  
                                    ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">Security 
                                Answer is required</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="The Password and Confirmation Password must match." 
                                    ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                                               <tr>
                        <td align="left">
                        <asp:Label runat="server" ID="CreateAccountResults"  Font-Bold="True" 
                                Font-Size="15px" ForeColor="#FFFFFF" style="color: #FFFFFF"></asp:Label></td></tr>
                     <tr><td colspan="2" align="right" ><asp:Button runat="server" ID="btnclick" 
                             Text="Create user"  OnClick="btnclick_Click" CausesValidation="true" ValidationGroup="CreateUserWizard1"  /></td></tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    
                    <br /><br />
              <br />
    </div> 
</asp:Content>

