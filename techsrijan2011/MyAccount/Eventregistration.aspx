<%@ Page Language="VB" MasterPageFile="~/MyAccount/Masteraccount.master" Title="Event Registration" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Net.Mail" %>
<script runat="server">
    Protected Sub Image_Click(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.CommandEventArgs) Handles techprastuti.Command, lnkprastuti.Command
        If e.CommandName = "ImageClick" Or e.CommandName = "OnClick" Then
            multiview1.ActiveViewIndex = 1
            ddlevent.DataBind()
            ddlevent.Items.FindByText(e.CommandArgument).Selected = True
            details_event_members()
        End If

    End Sub

    Protected Sub ddlevents_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlevent.SelectedIndexChanged
        details_event_members()
        hidedetails()
    End Sub

    
   
    Protected Sub details_event_members()
        Dim chk As Integer
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        Dim sqlString As String = "SELECT [NoOfMembers] FROM [EVENTS] WHERE [EventName]=(@event)"
        Dim myConnection As New SqlConnection(connectionString)
        Dim cmd As New SqlCommand(sqlString, myConnection)
        myConnection.Open()
        cmd.Parameters.AddWithValue("@event", ddlevent.SelectedValue)
        Dim myreader As SqlDataReader
        myreader = cmd.ExecuteReader()
        While (myreader.Read)
            chk = CType(myreader("NoOfMembers"), Integer)

        End While
        myConnection.Close()
        
        ddlTeamMates.Items.Clear()
        Select Case chk
            Case 1
                ddlTeamMates.Items.Add(New ListItem("1", 1))
            Case 2
                ddlTeamMates.Items.Add(New ListItem("1", 1))
                ddlTeamMates.Items.Add(New ListItem("2", 2))
            Case 3
                ddlTeamMates.Items.Add(New ListItem("1", 1))
                ddlTeamMates.Items.Add(New ListItem("2", 2))
                ddlTeamMates.Items.Add(New ListItem("3", 3))
            Case 4
                ddlTeamMates.Items.Add(New ListItem("1", 1))
                ddlTeamMates.Items.Add(New ListItem("2", 2))
                ddlTeamMates.Items.Add(New ListItem("3", 3))
                ddlTeamMates.Items.Add(New ListItem("4", 4))
            Case 5
                ddlTeamMates.Items.Add(New ListItem("1", 1))
                ddlTeamMates.Items.Add(New ListItem("2", 2))
                ddlTeamMates.Items.Add(New ListItem("3", 3))
                ddlTeamMates.Items.Add(New ListItem("4", 4))
                ddlTeamMates.Items.Add(New ListItem("5", 5))

        End Select
        ddlTeamMates.SelectedValue = "1"
    End Sub

    Protected Sub click_me_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles click_me.Click
        Dim usr As MembershipUser = Membership.GetUser()
        Dim email As String = usr.Email.ToString
        Dim sqlstring As String
        sqlstring = ""
        sqlstring += "INSERT INTO [roboKRITI]"
        sqlstring += "([EventName],[TeamLeaderUserName],[TeamLeaderName],[TeamLeaderMobile],[TeamName],"
        sqlstring += "[TeamLeaderEmail],[CollegeName],[Partner1Name],[Partner1Email],[Partner2Name],[Partner2Email],[Partner3Name],"
        sqlstring += "[Partner3Email],[Partner4Name],[Partner4Email],[Sent]) "
        sqlstring += "VALUES(@eventname,@teamleaderusername,@teamleadername,@teamleadermobile,@teamname,@teamleaderemail,@collegename,"
        sqlstring += "@partner1name,@partner1email,@partner2name,@partner2email,@partner3name,@partner3email,"
        sqlstring += "@partner4name,@partner4email,@sent)"

        
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        Dim myconnection1 As New SqlConnection(connectionString)
        Dim cmd As New SqlCommand(sqlstring, myconnection1)
        myconnection1.Open()

        cmd.Parameters.AddWithValue("@eventname", ddlevent.SelectedValue.ToString)
        cmd.Parameters.AddWithValue("@teamleaderusername", Page.User.Identity.Name)
        cmd.Parameters.AddWithValue("@teamleadername", txtTeamLeaderName.Text.ToString)
        cmd.Parameters.AddWithValue("@teamleadermobile", txtTeamLeaderMobile.Text.ToString)
        cmd.Parameters.AddWithValue("@teamleaderemail", email)
        cmd.Parameters.AddWithValue("@collegename", txtCollegeName.Text.ToString)
        cmd.Parameters.AddWithValue("@teamname", txtTeamName.Text.ToString)
        cmd.Parameters.AddWithValue("@partner1name", txtPartner1Name.Text.ToString)
        cmd.Parameters.AddWithValue("@partner1email", txtPartner1Email.Text.ToString)
        cmd.Parameters.AddWithValue("@partner2name", txtPartner2Name.Text.ToString)
        cmd.Parameters.AddWithValue("@partner2email", txtPartner2Email.Text.ToString)
        cmd.Parameters.AddWithValue("@partner3name", txtPartner3Name.Text.ToString)
        cmd.Parameters.AddWithValue("@partner3email", txtPartner3Email.Text.ToString)
        cmd.Parameters.AddWithValue("@partner4name", txtPartner4Name.Text.ToString)
        cmd.Parameters.AddWithValue("@partner4email", txtPartner4Email.Text.ToString)
        cmd.Parameters.AddWithValue("@sent", "0")
        cmd.ExecuteNonQuery()
        myconnection1.Close()
        sqlstring = "SELECT UserName FROM Registrationdata"
        Dim myconnection3 As New SqlConnection(connectionString)
        Dim cmd3 As New SqlCommand(sqlstring, myconnection3)
        myconnection3.Open()
        Dim mydatareader As SqlDataReader
        mydatareader = cmd3.ExecuteReader
        Dim target1 As Integer = 0
        Dim target2 As Integer = 0
        Dim target3 As Integer = 0
        Dim target4 As Integer = 0
        Dim user As String
        Dim mail1 As String
        Dim usrr As MembershipUser
        While (mydatareader.Read)
            user = mydatareader("UserName")
            usrr = Membership.GetUser(user)
            mail1 = usrr.Email
            
            If (txtPartner1Email.Text Is mail1) Then
                
                target1 = 1
            End If
            If (txtPartner2Email.Text Is mail1) Then
                target2 = 2
            End If
            If (txtPartner3Email.Text Is mail1) Then
                target3 = 3
            End If
            If (txtPartner4Email.Text Is mail1) Then
                target4 = 4
            End If
        End While
        
        myconnection3.Close()
        sqlstring = "INSERT INTO [Emaildata]([FullName],[EmailId],[Joined]) VALUES(@name,@emailid,@joined)"
        Dim myconnection4 As New SqlConnection(connectionString)
        Dim cmd4 As New SqlCommand(sqlstring, myconnection4)
        Dim myconnection5 As New SqlConnection(connectionString)
        Dim cmd5 As New SqlCommand(sqlstring, myconnection5)
        Dim myconnection6 As New SqlConnection(connectionString)
        Dim cmd6 As New SqlCommand(sqlstring, myconnection6)
        Dim myconnection7 As New SqlConnection(connectionString)
        Dim cmd7 As New SqlCommand(sqlstring, myconnection7)
        If (txtPartner1Email.Text.Trim.ToString IsNot String.Empty) Then
            If (target1 = 0) Then
            
            
                myconnection4.Open()
                cmd4.Parameters.AddWithValue("@name", txtPartner1Name.Text)
                cmd4.Parameters.AddWithValue("@emailid", txtPartner1Email.Text)
                cmd4.Parameters.AddWithValue("@joined", 0)
                cmd4.ExecuteNonQuery()
                myconnection4.Close()
                Dim objMM9 As New MailMessage()
        
                Dim fromAddress9 As New MailAddress("admin@techsrijan.com")
                Dim toAddress9 As New MailAddress(txtPartner1Email.Text)
                objMM9.From = fromAddress9
                objMM9.To.Add(toAddress9)
                objMM9.To.Add(New System.Net.Mail.MailAddress("admin@techsrijan.com"))
                objMM9.Priority = MailPriority.High
                objMM9.IsBodyHtml = "true"
                objMM9.Subject = "techSRIJAN Registration"
                objMM9.Body = "Hi! <br/> You have not yet registered in techsrijan <br/> techSRIJAN 2011 team"
                Dim smtpClient9 As New SmtpClient("mail.TECHSRIJAN.COM")
                smtpClient9.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis
                smtpClient9.Host = "mail.TECHSRIJAN.COM"
                smtpClient9.Port = "25"
                smtpClient9.Credentials = New System.Net.NetworkCredential("admin", "shanky3221")
                Try
                    smtpClient9.Send(objMM9)
                Catch ex9 As Exception
                    'Dim query As String = "INSERT INTO Errors([InnerException],[InnerString],[Date]) VALUES(@exception,@message,@date) "
                    'Dim connectionString9 As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
                    'Dim myconnection9 As New SqlConnection(connectionString9)
                    'Dim cmd9 As New SqlCommand(query, myconnection9)
                    'myconnection9.Open()
                    'cmd9.Parameters.AddWithValue("@exception", ex9.InnerException.Message.ToString)
                    'cmd9.Parameters.AddWithValue("@message", ex9.Message.ToString)
                    'cmd9.Parameters.AddWithValue("@date", DateTime.Now.ToString)
                    'cmd9.ExecuteNonQuery()
                    'myconnection9.Close()
                End Try
            End If
        End If
        If (txtPartner2Email.Text.Trim.ToString IsNot String.Empty) Then
            If (target2 = 0) Then
                      
                myconnection5.Open()
                cmd5.Parameters.AddWithValue("@name", txtPartner2Name.Text)
                cmd5.Parameters.AddWithValue("@emailid", txtPartner2Email.Text)
                cmd5.Parameters.AddWithValue("@joined", 0)
                cmd5.ExecuteNonQuery()
                myconnection5.Close()
                Dim objMM10 As New MailMessage()
        
                Dim fromAddress10 As New MailAddress("admin@techsrijan.com")
                Dim toAddress10 As New MailAddress(txtPartner2Email.Text)
                objMM10.From = fromAddress10
                objMM10.To.Add(toAddress10)
                objMM10.To.Add(New System.Net.Mail.MailAddress("rohitdewaker@gmail.com"))
                objMM10.Priority = MailPriority.High
                objMM10.IsBodyHtml = "true"
                objMM10.Subject = "techSRIJAN Registration"
                objMM10.Body = "Hi! <br/> You have not yet registered in techsrijan <br/> techSRIJAN 2011 team"
                
                Dim smtpClient10 As New SmtpClient("mail.techsrijan.com")
                smtpClient10.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis
                smtpClient10.Host = "mail.techsrijan.com"
                smtpClient10.Port = "25"
                smtpClient10.Credentials = New System.Net.NetworkCredential("admin", "shanky3221")
                Try
                    smtpClient10.Send(objMM10)
                Catch ex10 As Exception
                    'Dim query10 As String = "INSERT INTO Errors([InnerException],[InnerString],[Date]) VALUES(@exception,@message),(@date) "
                    'Dim connectionString10 As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
                    'Dim myconnection10 As New SqlConnection(connectionString10)
                    'Dim cmd10 As New SqlCommand(query10, myconnection10)
                    'myconnection10.Open()
                    'cmd10.Parameters.AddWithValue("@exception", ex10.InnerException.Message.ToString)
                    'cmd10.Parameters.AddWithValue("@message", ex10.Message.ToString)
                    'cmd10.Parameters.AddWithValue("@date", DateTime.Now.ToString)
                    'cmd10.ExecuteNonQuery()
                    'myconnection10.Close()
                End Try
            End If
        End If
        If (txtPartner3Email.Text.Trim.ToString IsNot String.Empty) Then
            If (target3 = 0) Then
           
            
                myconnection6.Open()
                cmd6.Parameters.AddWithValue("@name", txtPartner3Name.Text)
                cmd6.Parameters.AddWithValue("@emailid", txtPartner3Email.Text)
                cmd6.Parameters.AddWithValue("@joined", 0)
                cmd6.ExecuteNonQuery()
                myconnection6.Close()
                Dim objMM11 As New MailMessage()
        
                Dim fromAddress11 As New MailAddress("admin@techsrijan.com")
                Dim toAddress11 As New MailAddress(txtPartner3Email.Text)
                objMM11.From = fromAddress11
                objMM11.To.Add(toAddress11)
                objMM11.To.Add(New System.Net.Mail.MailAddress("rohitdewaker@gmail.com"))
                objMM11.Priority = MailPriority.High
                objMM11.IsBodyHtml = "true"
                objMM11.Subject = "techSRIJAN Registration"
                objMM11.Body = "Hi! <br/> You have not yet registered in techsrijan <br/> techSRIJAN 2011 team"
                Dim smtpClient11 As New SmtpClient("mail.techsrijan.com")
                smtpClient11.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis
                smtpClient11.Host = "mail.techsrijan.com"
                smtpClient11.Port = "25"
                smtpClient11.Credentials = New System.Net.NetworkCredential("admin", "shanky3221")
                Try
                    smtpClient11.Send(objMM11)
                Catch ex11 As Exception
                    'Dim query11 As String = "INSERT INTO Errors([InnerException],[InnerString],[Date]) VALUES(@exception,@message,@date) "
                    'Dim connectionString11 As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
                    'Dim myconnection11 As New SqlConnection(connectionString11)
                    'Dim cmd11 As New SqlCommand(query11, myconnection11)
                    'myconnection11.Open()
                    'cmd11.Parameters.AddWithValue("@exception", ex11.InnerException.Message.ToString)
                    'cmd11.Parameters.AddWithValue("@message", ex11.Message.ToString)
                    'cmd11.Parameters.AddWithValue("@date", DateTime.Now.ToString)
                    'cmd11.ExecuteNonQuery()
                    'myconnection11.Close()
                End Try
            End If
        End If
        If (txtPartner4Email.Text.Trim.ToString IsNot String.Empty) Then
            If (target4 = 0) Then
           
                myconnection7.Open()
                cmd7.Parameters.AddWithValue("@name", txtPartner4Name.Text)
                cmd7.Parameters.AddWithValue("@emailid", txtPartner4Email.Text)
                cmd7.Parameters.AddWithValue("@joined", 0)
                cmd7.ExecuteNonQuery()
                myconnection7.Close()
                Dim objMM12 As New MailMessage()
        
                Dim fromAddress12 As New MailAddress("admin@techsrijan.com")
                Dim toAddress12 As New MailAddress(txtPartner4Email.Text)
                objMM12.From = fromAddress12
                objMM12.To.Add(toAddress12)
                objMM12.To.Add(New System.Net.Mail.MailAddress("rohitdewaker@gmail.com"))
                objMM12.Priority = MailPriority.High
                objMM12.IsBodyHtml = "true"
                objMM12.Subject = "techSRIJAN Registration"
                objMM12.Body = "Hi! <br/> You have not yet registered in techsrijan <br/> techSRIJAN 2011 team"
                Dim smtpClient12 As New SmtpClient("mail.techsrijan.com")
                smtpClient12.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis
                smtpClient12.Host = "mail.techsrijan.com"
                smtpClient12.Port = "25"
                smtpClient12.Credentials = New System.Net.NetworkCredential("admin", "shanky3221")
                Try
                    smtpClient12.Send(objMM12)
                Catch ex12 As Exception
                    'Dim query12 As String = "INSERT INTO Errors([InnerException],[InnerString],[Date]) VALUES(@exception,@message,@date) "
                    'Dim connectionString12 As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
                    'Dim myconnection12 As New SqlConnection(connectionString12)
                    'Dim cmd12 As New SqlCommand(query12, myconnection12)
                    'myconnection12.Open()
                    'cmd12.Parameters.AddWithValue("@exception", ex12.InnerException.Message.ToString)
                    'cmd12.Parameters.AddWithValue("@message", ex12.Message.ToString)
                    'cmd12.Parameters.AddWithValue("@date", DateTime.Now.ToString)
                    'cmd12.ExecuteNonQuery()
                    'myconnection12.Close()
                End Try
            End If
        End If
        multiview1.ActiveViewIndex = 2
        sendemail(ddlevent.SelectedValue.ToString, txtTeamName.Text.Trim.ToString, email, txtPartner1Email.Text.Trim.ToString, txtPartner2Email.Text.Trim.ToString, txtPartner3Email.Text.Trim.ToString, txtPartner4Email.Text.Trim.ToString)
        Response.Redirect("Home.aspx")
       
    End Sub
    Protected Sub sendemail(ByVal eventname As String, ByVal teamname As String, ByVal leadermail As String, ByVal partner1mail As String, ByVal partner2mail As String, ByVal partner3mail As String, ByVal partner4mail As String)
        
        Dim objMM As New MailMessage()
        Dim fromAddress As New MailAddress("admin@techsrijan.com")
        Dim toAddress As New MailAddress(leadermail)
       
       
        
       
        objMM.From = fromAddress
        objMM.To.Add(toAddress)
       
        If (partner1mail IsNot String.Empty) Then
            Dim toaddress1 As New MailAddress(partner1mail)
            objMM.To.Add(toaddress1)
        End If
        If (partner2mail IsNot String.Empty) Then
            Dim toaddress2 As New MailAddress(partner2mail)
            objMM.To.Add(toaddress2)
            
        End If
        If (partner3mail IsNot String.Empty) Then
            Dim toaddress3 As New MailAddress(partner3mail)
            objMM.To.Add(toaddress3)
        End If
        If (partner4mail IsNot String.Empty) Then
            Dim toaddress4 As New MailAddress(partner4mail)
            objMM.To.Add(toaddress4)
        End If
        objMM.Priority = MailPriority.High
        objMM.Subject = "techSRIJAN " + eventname + " Registration"
        objMM.IsBodyHtml = "true"
        objMM.Body = "Hi! <br/> <br/> Thanks for registering in" + eventname + " <br/><br/> Team Name:" + teamname + ""
        objMM.Body += "<br/><br/> Team Members:" + leadermail + "<br/>" + partner1mail + "<br/>" + partner2mail + "<br/>" + partner3mail + "<br/>" + partner4mail + ""
        Dim smtpClient1 As New SmtpClient()
        smtpClient1.Host = "mail.techsrijan.com"
        smtpClient1.Port = "25"
        smtpClient1.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis
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
            'cmd.Parameters.AddWithValue("@date", ex.Message.ToString)
            'cmd.ExecuteNonQuery()
            'myconnection.Close()
        End Try
        
    End Sub
    Protected Sub multiview1_ActiveViewChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles multiview1.ActiveViewChanged
        If (multiview1.ActiveViewIndex = 1) Then
            
        
            Dim usr As String = User.Identity.Name
            Dim sqlstring As String
            sqlstring = "SELECT FullName,CollegeName,ContactNo FROM [Registrationdata] WHERE [UserName]=(@usr)"
            Dim connectionString As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            Dim myConnection1 As New SqlConnection(connectionString)
            Dim cmd1 As New SqlCommand(sqlstring, myConnection1)
            myConnection1.Open()
            Dim myreader1 As SqlDataReader
            cmd1.Parameters.AddWithValue("@usr", usr)
            myreader1 = cmd1.ExecuteReader()
            While (myreader1.Read)
                txtCollegeName.Text = myreader1("CollegeName")
                txtCollegeName.ReadOnly = "true"
                txtTeamLeaderName.Text = myreader1("FullName")
                txtTeamLeaderName.ReadOnly = "true"
                txtTeamLeaderMobile.Text = myreader1("ContactNo")
                txtTeamLeaderMobile.ReadOnly = "true"
            End While
            myConnection1.Close()
        End If
    End Sub

    Protected Sub ddlTeamMates_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlTeamMates.SelectedIndexChanged
        hidedetails()
    End Sub
    Protected Sub hidedetails()
        
        Select Case ddlTeamMates.SelectedValue
            Case 1
                txtPartner1Email.Visible = "false"
                txtPartner1Email.ReadOnly = "true"
                txtPartner1Email.Text = ""
                txtPartner1Name.Visible = "false"
                txtPartner1Name.ReadOnly = "true"
                txtPartner1Name.Text = ""
                txtPartner2Name.Text = ""
                txtPartner2Email.Visible = "false"
                txtPartner2Email.ReadOnly = "true"
                txtPartner2Email.Text = ""
                txtPartner2Name.Visible = "false"
                txtPartner2Name.ReadOnly = "true"
                txtPartner2Name.Text = ""
                txtPartner3Email.Visible = "false"
                txtPartner3Email.ReadOnly = "true"
                txtPartner3Email.Text = ""
                txtPartner3Name.Visible = "false"
                txtPartner3Name.ReadOnly = "true"
                txtPartner3Name.Text = ""
                txtPartner4Email.Visible = "false"
                txtPartner4Email.ReadOnly = "true"
                txtPartner4Email.Text = ""
                txtPartner4Name.Visible = "false"
                txtPartner4Name.ReadOnly = "true"
                txtPartner4Name.Text = ""
                lblPartner1Email.Visible = "false"
                lblPartner1Name.Visible = "false"
                lblPartner2Name.Visible = "false"
                lblPartner2Email.Visible = "false"
                lblPartner3Email.Visible = "false"
                lblPartner3Name.Visible = "false"
                lblPartner4Email.Visible = "false"
                lblPartner4Name.Visible = "false"
                RequiredFieldValidator2.Visible = "false"
                RequiredFieldValidator6.Visible = "false"
                Regularexpressionvalidator1.Visible = "false"
                RequiredFieldValidator3.Visible = "false"
                RequiredFieldValidator7.Visible = "false"
                Regularexpressionvalidator2.Visible = "false"
                RequiredFieldValidator4.Visible = "false"
                RequiredFieldValidator8.Visible = "false"
                Regularexpressionvalidator3.Visible = "false"
                RequiredFieldValidator5.Visible = "false"
                RequiredFieldValidator9.Visible = "false"
                Regularexpressionvalidator4.Visible = "false"

            Case 2
                txtPartner1Email.Visible = "true"
                txtPartner1Email.ReadOnly = "false"
                txtPartner1Email.Text = ""
                txtPartner1Name.Visible = "true"
                txtPartner1Name.ReadOnly = "false"
                txtPartner1Name.Text = ""
                txtPartner2Name.Text = ""
                txtPartner2Email.Visible = "false"
                txtPartner2Email.ReadOnly = "true"
                txtPartner2Email.Text = ""
                txtPartner2Name.Visible = "false"
                txtPartner2Name.ReadOnly = "true"
                txtPartner2Name.Text = ""
                txtPartner3Email.Visible = "false"
                txtPartner3Email.ReadOnly = "true"
                txtPartner3Email.Text = ""
                txtPartner3Name.Visible = "false"
                txtPartner3Name.ReadOnly = "true"
                txtPartner3Name.Text = ""
                txtPartner4Email.Visible = "false"
                txtPartner4Email.ReadOnly = "true"
                txtPartner4Email.Text = ""
                txtPartner4Name.Visible = "false"
                txtPartner4Name.ReadOnly = "true"
                txtPartner4Name.Text = ""
                lblPartner1Email.Visible = "true"
                lblPartner1Name.Visible = "true"
                lblPartner2Name.Visible = "false"
                lblPartner2Email.Visible = "false"
                lblPartner3Email.Visible = "false"
                lblPartner3Name.Visible = "false"
                lblPartner4Email.Visible = "false"
                lblPartner4Name.Visible = "false"
                RequiredFieldValidator2.Visible = "true"
                RequiredFieldValidator6.Visible = "true"
                Regularexpressionvalidator1.Visible = "true"
                RequiredFieldValidator3.Visible = "false"
                RequiredFieldValidator7.Visible = "false"
                Regularexpressionvalidator2.Visible = "false"
                RequiredFieldValidator4.Visible = "false"
                RequiredFieldValidator8.Visible = "false"
                Regularexpressionvalidator3.Visible = "false"
                RequiredFieldValidator5.Visible = "false"
                RequiredFieldValidator9.Visible = "false"
                Regularexpressionvalidator4.Visible = "false"
            Case 3
                txtPartner1Email.Visible = "true"
                txtPartner1Email.ReadOnly = "false"
                txtPartner1Email.Text = ""
                txtPartner1Name.Visible = "true"
                txtPartner1Name.ReadOnly = "false"
                txtPartner1Name.Text = ""
                txtPartner2Name.Text = ""
                txtPartner2Email.Visible = "true"
                txtPartner2Email.ReadOnly = "false"
                txtPartner2Email.Text = ""
                txtPartner2Name.Visible = "true"
                txtPartner2Name.ReadOnly = "false"
                txtPartner2Name.Text = ""
                txtPartner3Email.Visible = "false"
                txtPartner3Email.ReadOnly = "true"
                txtPartner3Email.Text = ""
                txtPartner3Name.Visible = "false"
                txtPartner3Name.ReadOnly = "true"
                txtPartner3Name.Text = ""
                txtPartner4Email.Visible = "false"
                txtPartner4Email.ReadOnly = "true"
                txtPartner4Email.Text = ""
                txtPartner4Name.Visible = "false"
                txtPartner4Name.ReadOnly = "true"
                txtPartner4Name.Text = ""
                lblPartner1Email.Visible = "true"
                lblPartner1Name.Visible = "true"
                lblPartner2Name.Visible = "true"
                lblPartner2Email.Visible = "true"
                lblPartner3Email.Visible = "false"
                lblPartner3Name.Visible = "false"
                lblPartner4Email.Visible = "false"
                lblPartner4Name.Visible = "false"
                RequiredFieldValidator2.Visible = "true"
                RequiredFieldValidator6.Visible = "true"
                Regularexpressionvalidator1.Visible = "true"
                RequiredFieldValidator3.Visible = "true"
                RequiredFieldValidator7.Visible = "true"
                Regularexpressionvalidator2.Visible = "true"
                RequiredFieldValidator4.Visible = "false"
                RequiredFieldValidator8.Visible = "false"
                Regularexpressionvalidator3.Visible = "false"
                RequiredFieldValidator5.Visible = "false"
                RequiredFieldValidator9.Visible = "false"
                Regularexpressionvalidator4.Visible = "false"
            Case 4
                
                txtPartner1Email.Visible = "true"
                txtPartner1Email.ReadOnly = "false"
                txtPartner1Email.Text = ""
                txtPartner1Name.Visible = "true"
                txtPartner1Name.ReadOnly = "false"
                txtPartner1Name.Text = ""
                txtPartner2Name.Text = ""
                txtPartner2Email.Visible = "true"
                txtPartner2Email.ReadOnly = "false"
                txtPartner2Email.Text = ""
                txtPartner2Name.Visible = "true"
                txtPartner2Name.ReadOnly = "false"
                txtPartner2Name.Text = ""
                txtPartner3Email.Visible = "true"
                txtPartner3Email.ReadOnly = "false"
                txtPartner3Email.Text = ""
                txtPartner3Name.Visible = "true"
                txtPartner3Name.ReadOnly = "false"
                txtPartner3Name.Text = ""
                txtPartner4Email.Visible = "false"
                txtPartner4Email.ReadOnly = "true"
                txtPartner4Email.Text = ""
                txtPartner4Name.Visible = "false"
                txtPartner4Name.ReadOnly = "true"
                txtPartner4Name.Text = ""
                lblPartner1Email.Visible = "true"
                lblPartner1Name.Visible = "true"
                lblPartner2Name.Visible = "true"
                lblPartner2Email.Visible = "true"
                lblPartner3Email.Visible = "true"
                lblPartner3Name.Visible = "true"
                lblPartner4Email.Visible = "false"
                lblPartner4Name.Visible = "false"
                RequiredFieldValidator2.Visible = "true"
                RequiredFieldValidator6.Visible = "true"
                Regularexpressionvalidator1.Visible = "true"
                RequiredFieldValidator3.Visible = "true"
                RequiredFieldValidator7.Visible = "true"
                Regularexpressionvalidator2.Visible = "true"
                RequiredFieldValidator4.Visible = "true"
                RequiredFieldValidator8.Visible = "true"
                Regularexpressionvalidator3.Visible = "true"
                RequiredFieldValidator5.Visible = "false"
                RequiredFieldValidator9.Visible = "false"
                Regularexpressionvalidator4.Visible = "false"
            Case 5
                txtPartner1Email.Visible = "true"
                txtPartner1Email.ReadOnly = "false"
                txtPartner1Email.Text = ""
                txtPartner1Name.Visible = "true"
                txtPartner1Name.ReadOnly = "false"
                txtPartner1Name.Text = ""
                txtPartner2Name.Text = ""
                txtPartner2Email.Visible = "true"
                txtPartner2Email.ReadOnly = "false"
                txtPartner2Email.Text = ""
                txtPartner2Name.Visible = "true"
                txtPartner2Name.ReadOnly = "false"
                txtPartner2Name.Text = ""
                txtPartner3Email.Visible = "true"
                txtPartner3Email.ReadOnly = "false"
                txtPartner3Email.Text = ""
                txtPartner3Name.Visible = "true"
                txtPartner3Name.ReadOnly = "false"
                txtPartner3Name.Text = ""
                txtPartner4Email.Visible = "true"
                txtPartner4Email.ReadOnly = "false"
                txtPartner4Email.Text = ""
                txtPartner4Name.Visible = "true"
                txtPartner4Name.ReadOnly = "false"
                txtPartner4Name.Text = ""
                lblPartner1Email.Visible = "true"
                lblPartner1Name.Visible = "true"
                lblPartner2Name.Visible = "true"
                lblPartner2Email.Visible = "true"
                lblPartner3Email.Visible = "true"
                lblPartner3Name.Visible = "true"
                lblPartner4Email.Visible = "true"
                lblPartner4Name.Visible = "true"
                RequiredFieldValidator2.Visible = "true"
                RequiredFieldValidator6.Visible = "true"
                Regularexpressionvalidator1.Visible = "true"
                RequiredFieldValidator3.Visible = "true"
                RequiredFieldValidator7.Visible = "true"
                Regularexpressionvalidator2.Visible = "true"
                RequiredFieldValidator4.Visible = "true"
                RequiredFieldValidator8.Visible = "true"
                Regularexpressionvalidator3.Visible = "true"
                RequiredFieldValidator5.Visible = "true"
                RequiredFieldValidator9.Visible = "true"
                Regularexpressionvalidator4.Visible = "true"
        End Select
    End Sub
    
</script>
<%--<asp:Content ContentPlaceHolderID="accounthead" runat="server" >
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="masteraccount1" runat="Server">
    <asp:MultiView ID="multiview1" runat="server" ActiveViewIndex="0">
        <asp:View runat="server" ID="view1">
            <div style="position; top: 70px; left: 10px; overflow: auto;">
                <span style="position: relative; font-size: 20px; font-weight: bold; color: #4c7d7e;
                    font-style: italic;"></span>
                <table style="width: 403px">
                    <thead>
                        <tr>
                            <th style="position: relative; font-size: 14px; padding-left: 70px;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="techprastuti" runat="server" CommandArgument="techPRASTUTI"
                                    CommandName="ImageClick" ImageUrl="~/images/loading2.gif" Height="100px" />
                            </th>
                            <%--<th style="position: relative; font-size: 14px; padding-left: 150px;">
                                <asp:ImageButton ID="codzilla" runat="server" CommandArgument="codZILLA" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/codzilla.jpg" />
                            </th>--%>
                        </tr>
                    </thead>
                    <tr>
                        <td style="position: relative; padding-left: 130px; text-align: center; top: 106px; left: 2px;">
                           <center> <asp:LinkButton runat="server" ID="lnkprastuti" CommandArgument="techPRASTUTI" ForeColor="#FFFFFF"
                                Font-Bold="true" Font-Underline="false" CommandName="OnClick" Text="IF NOT REDIRECTED, CLICK HERE"
                                Font-Size="14px" style="text-align: center"></asp:LinkButton></center>
                        </td>
                        <%--<td style="position: relative; padding-left: 150px;">
                            <asp:LinkButton runat="server" ID="lnkcodzilla" CommandArgument="codZILLA" ForeColor="#FFFFFF"
                                Font-Bold="true" Font-Underline="false" CommandName="OnClick" Text="codZILLA"
                                Font-Size="14px"></asp:LinkButton>
                        </td>--%>
                    </tr>
                </table>
               <%--<br />
                <br />
                <br />
                <span style="position: relative; font-size: 20px; font-weight: bold; color: #4c7d7e;
                    font-style: italic;"></span>
                <br />
                <br />
                <br />
                <span style="position: relative; font-size: 20px; font-weight: bold; color: #FFFFFF;
                    font-style: italic;">nirMAAN</span>
                <table>
                    <thead>
                        <tr>
                            <th style="position: relative; font-size: 14px; padding-right: 70px;">
                                <asp:ImageButton ID="junkyardWARS" runat="server" CommandArgument="junkyardWARS"
                                    CommandName="ImageClick" ImageUrl="~/MyAccount/images/junkyard.jpg" />
                            </th>
                            <th style="position: relative; font-size: 14px; padding-right: 70px;">
                                <asp:ImageButton ID="abiNITIO" runat="server" CommandArgument="abINITIO" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/rube.jpg" />
                            </th>
                            <th style="position: relative; font-size: 14px; padding-right: 30px;">
                                <asp:ImageButton ID="bridgeKRITI" runat="server" CommandArgument="bridgeKRITI" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/bridgekriti.jpg" />
                            </th>
                        </tr>
                    </thead>
                    <tr>
                        <td style="position: relative; padding-left: 50px;">
                            <asp:LinkButton ID="lnkjunkyardWARS" runat="server" CommandArgument="junkyardWARS"
                                ForeColor="#FFFFFF" Font-Bold="true" Font-Underline="false" CommandName="OnClick"
                                Text="junkyardWARS" Font-Size="14px"></asp:LinkButton>
                        </td>
                        <td style="position: relative; padding-left: 70px;">
                            <asp:LinkButton ID="lnkabiNITIO" runat="server" CommandArgument="abINITIO" ForeColor="#FFFFFF"
                                Font-Bold="true" Font-Underline="false" CommandName="OnClick" Text="abINITIO"
                                Font-Size="14px"></asp:LinkButton>
                        </td>
                        <td style="position: relative; padding-left: 50px;">
                            <asp:LinkButton ID="lnkbridgeKRITI" runat="server" CommandArgument="bridgeKRITI"
                                ForeColor="#FFFFFF" Font-Bold="true" Font-Underline="false" CommandName="OnClick"
                                Text="bridgeKRITI" Font-Size="14PX"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <span style="position: relative; font-size: 20px; font-weight: bold; color: #FFFFFF;
                    font-style: italic;">roboKRITI</span>
                <table>
                    <thead>
                        <tr>
                            <th style="position: relative; font-size: 14px; padding-right: 70px;">
                                <asp:ImageButton ID="wired" runat="server" CommandArgument="roboKRITI(wired)" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/wired.jpg" />
                            </th>
                            <th style="position: relative; font-size: 14px; padding-right: 70px;">
                                <asp:ImageButton ID="wireless" runat="server" CommandArgument="roboKRITI(wireless)"
                                    CommandName="ImageClick" ImageUrl="~/MyAccount/images/wireless.jpg" />
                            </th>
                        </tr>
                    </thead>
                    <tr>
                        <td style="position: relative; padding-left: 30px;">
                            <asp:LinkButton runat="server" ID="lnkwired" CommandArgument="roboKRITI(wired)" ForeColor="#FFFFFF"
                                Font-Bold="true" Font-Underline="false" CommandName="OnClick" Text="Empire Strikes back"
                                Font-Size="14px"></asp:LinkButton>
                        </td>
                        <td style="position: relative; padding-left: 70px;">
                            <asp:LinkButton runat="server" ID="lnkwireless" CommandArgument="roboKRITI(wireless)"
                                ForeColor="#FFFFFF" Font-Bold="true" Font-Underline="false" CommandName="OnClick"
                                Text="Wireless" Font-Size="14px"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <span style="position: relative; font-size: 20px; font-weight: bold; color: #FFFFFF;
                    font-style: italic;">techPRADARSHINI</span>
                <table>
                    <thead>
                        <tr>
                            <th style="position: relative; font-size: 14px; padding-left: 100px;">
                                <asp:ImageButton ID="softrachana" runat="server" CommandArgument="softRACHANA" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/softrachana.jpg" />
                            </th>
                            <th style="position: relative; font-size: 14px; padding-left: 120px;">
                                <asp:ImageButton ID="hardrachana" runat="server" CommandArgument="hardRACHANA" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/hardrachana.jpg" />
                            </th>
                        </tr>
                    </thead>
                    <tr>
                        <td style="position: relative; padding-left: 130px;">
                            <asp:LinkButton runat="server" ID="lnksoftrachana" CommandArgument="softRACHANA"
                                ForeColor="#FFFFFF" Font-Bold="true" Font-Underline="false" CommandName="OnClick"
                                Text="softRACHANA" Font-Size="14px"></asp:LinkButton>
                        </td>
                        <td style="position: relative; padding-left: 140px;">
                            <asp:LinkButton runat="server" ID="lnkhardrachana" CommandArgument="hardRACHANA"
                                ForeColor="#FFFFFF" Font-Bold="true" Font-Underline="false" CommandName="OnClick"
                                Text="hardRACHANA" Font-Size="14px"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <span style="position: relative; font-size: 20px; font-weight: bold; color: #FFFFFF;
                    font-style: italic;">techSHILP</span>
                <table>
                    <thead>
                        <tr>
                            <th style="position: relative; font-size: 14px; padding-left: 100px;">
                                <asp:ImageButton ID="vhdl" runat="server" CommandArgument="vhDL" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/vhdl.jpg" />
                            </th>
                            <th style="position: relative; font-size: 14px; padding-left: 120px;">
                                <asp:ImageButton ID="embeddrix" runat="server" CommandArgument="emBEDDRIX" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/embedded.jpg" />
                            </th>
                        </tr>
                    </thead>
                    <tr>
                        <td style="position: relative; padding-left: 130px;">
                            <asp:LinkButton runat="server" ID="lnkvhdl" CommandArgument="vhDL" ForeColor="#FFFFFF"
                                Font-Bold="true" Font-Underline="false" CommandName="OnClick" Text="vhDL" Font-Size="14px"></asp:LinkButton>
                        </td>
                        <td style="position: relative; padding-left: 140px;">
                            <asp:LinkButton runat="server" ID="lnkembeddrix" CommandArgument="emBEDDRIX" ForeColor="#FFFFFF"
                                Font-Bold="true" Font-Underline="false" CommandName="OnClick" Text="emBEDDIRX"
                                Font-Size="14px"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <table>
                    <thead>
                        <tr>
                            <th style="position: relative; font-size: 14px; padding-left: 100px;">
                                <asp:ImageButton ID="website" runat="server" CommandArgument="webSITE" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/website.jpg" />
                            </th>
                            <th style="position: relative; font-size: 14px; padding-left: 120px;">
                                <asp:ImageButton ID="catia" runat="server" CommandArgument="caTIA" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/catia.jpg" />
                            </th>
                        </tr>
                    </thead>
                    <tr>
                        <td style="position: relative; padding-left: 130px;">
                            <asp:LinkButton runat="server" ID="lnkwebsite" CommandArgument="webSITE" ForeColor="#FFFFFF"
                                Font-Bold="true" Font-Underline="false" CommandName="OnClick" Text="webSITE"
                                Font-Size="14px"></asp:LinkButton>
                        </td>
                        <td style="position: relative; padding-left: 140px;">
                            <asp:LinkButton runat="server" ID="lnkcatia" CommandArgument="caTIA" ForeColor="#FFFFFF"
                                Font-Bold="true" Font-Underline="false" CommandName="OnClick" Text="caTIA" Font-Size="14px"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <span style="position: relative; font-size: 20px; font-weight: bold; color: #FFFFFF;
                    font-style: italic;">quIZ</span>
                <table>
                    <thead>
                        <tr>
                            <th style="position: relative; font-size: 14px; padding-left: 60px;">
                                <asp:ImageButton ID="techneeti" runat="server" CommandArgument="techNEETI" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/techneeti.jpeg" />
                            </th>
                            <th style="position: relative; font-size: 14px; padding-left: 60px;">
                                <asp:ImageButton ID="bizgyan" runat="server" CommandArgument="bizGYAN" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/bizgyan.jpg" />
                            </th>
                            <th style="position: relative; font-size: 14px; padding-left: 60px;">
                                <asp:ImageButton ID="tantraMEDHA" runat="server" CommandArgument="tantraMEDHA" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/tantramedha.jpg" />
                            </th>
                        </tr>
                    </thead>
                    <tr>
                        <td style="position: relative; padding-left: 70px;">
                            <asp:LinkButton runat="server" ID="lnktechneeti" CommandArgument="techNEETI" ForeColor="#FFFFFF"
                                Font-Bold="true" Font-Underline="false" CommandName="OnClick" Text="techNEETI"
                                Font-Size="14px"></asp:LinkButton>
                        </td>
                        <td style="position: relative; padding-left: 70px;">
                            <asp:LinkButton runat="server" ID="lnkbizgyan" CommandArgument="bizGYAN" ForeColor="#FFFFFF"
                                Font-Bold="true" Font-Underline="false" CommandName="OnClick" Text="bizGYAN"
                                Font-Size="14px"></asp:LinkButton>
                        </td>
                        <td style="position: relative; padding-left: 60px;">
                            <asp:LinkButton runat="server" ID="lnktantramedha" CommandArgument="tantraMEDHA"
                                ForeColor="#FFFFFF" Font-Bold="true" Font-Underline="false" CommandName="OnClick"
                                Text="tantraMEDHA" Font-Size="14px"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <span style="position: relative; font-size: 20px; font-weight: bold; color: #FFFFFF;
                    font-style: italic;">managementEVENTS</span>
                <table>
                    <thead>
                        <tr>
                            <th style="position: relative; font-size: 14px; padding-left: 100px;">
                                <asp:ImageButton ID="ventura" runat="server" CommandArgument="ventura" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/bizbuzz.jpeg" />
                            </th>
                            <th style="position: relative; font-size: 14px; padding-left: 120px;">
                                <asp:ImageButton ID="whirlpool" runat="server" CommandArgument="whirlPOOL" CommandName="ImageClick"
                                    ImageUrl="~/MyAccount/images/whirlpool.jpg" />
                            </th>
                        </tr>
                    </thead>
                    <tr>
                        <td style="position: relative; padding-left: 130px;">
                            <asp:LinkButton runat="server" ID="lnkventura" CommandArgument="ventura" ForeColor="#FFFFFF"
                                Font-Bold="true" Font-Underline="false" CommandName="OnClick" Text="ventura"
                                Font-Size="14px"></asp:LinkButton>
                        </td>
                        <td style="position: relative; padding-left: 140px;">
                            <asp:LinkButton runat="server" ID="lnkwhirlpool" CommandArgument="whirlPOOL" ForeColor="#FFFFFF"
                                Font-Bold="true" Font-Underline="false" CommandName="OnClick" Text="whirlPOOL"
                                Font-Size="14px"></asp:LinkButton>
                        </td>
                    </tr>--%>
                <%--</table>--%>
                <br />
                <br />
                <br />
            </div>
        </asp:View>
        <asp:View runat="server" ID="view2">
            <div style="position: relative; top: 70px; left: 20px;">
                <table style="position: relative; max-width: 560px;">
                    <tr>
                        <td align="center">
                            <asp:Label runat="server" ID="lblTeamLeaderName" Font-Bold="true" AssociatedControlID="txtTeamLeaderName"
                                Style="color: white">Team Leader:</asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox runat="server" ID="txtTeamLeaderName" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label runat="server" ID="lblevent" AssociatedControlID="ddlevent" Font-Bold="true"
                                Style="color: white" ForeColor="#0033CC">Select a event</asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlevent" runat="server" DataSourceID="sqldatasource1" DataTextField="EventName"
                                DataValueField="EventName" AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblCollegeName" runat="server" AssociatedControlID="txtCollegeName"
                                Font-Bold="true" Style="color: white">College Name</asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox runat="server" ID="txtCollegeName" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblTeamLeaderMobile" runat="server" Font-Bold="true" AssociatedControlID="txtTeamLeaderMobile"
                                Style="color: white">Mobile No:</asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox runat="server" ID="txtTeamLeaderMobile" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblTeamName" runat="server" Font-Bold="true" AssociatedControlID="txtTeamName"
                                Style="color: white">Team Name:</asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox runat="server" ID="txtTeamName"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTeamName"
                                Text="Teamname required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label runat="server" ID="lblTeamMates" Font-Bold="true" AssociatedControlID="ddlTeamMates"
                                Style="color: white">No. of TeamMates:</asp:Label>
                        </td>
                        <td align="right">
                            <asp:DropDownList ID="ddlTeamMates" runat="server" AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label runat="server" ID="lblPartner1Name" Font-Bold="true" AssociatedControlID="txtPartner1Name"
                                Visible="false" Style="color: white">Team-Mate 1 Name:</asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtPartner1Name" runat="server" Visible="false" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPartner1Name"
                                Text="Partner1name required" Visible="false"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label runat="server" ID="lblPartner1Email" Font-Bold="true" AssociatedControlID="txtPartner1Email"
                                Visible="false" Style="color: white">Team-Mate 1 Email:</asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtPartner1Email" runat="server" ReadOnly="true" Visible="false"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPartner1Email"
                                Text="Partner1email required" Visible="false"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" ID="Regularexpressionvalidator1" ControlToValidate="txtPartner1Email"
                                ErrorMessage="correct email format required" Visible="false" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label runat="server" ID="lblPartner2Name" Font-Bold="true" AssociatedControlID="txtPartner2Name"
                                Visible="false" Style="color: white">Team-Mate 2 Name:</asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtPartner2Name" runat="server" Visible="false" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Visible="false"
                                ControlToValidate="txtPartner2Name" Text="Partner2name required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label runat="server" ID="lblPartner2Email" Font-Bold="true" AssociatedControlID="txtPartner2Email"
                                Visible="false" Style="color: white">Team-Mate 2 Email:</asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtPartner2Email" runat="server" Visible="false" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Visible="false"
                                ControlToValidate="txtPartner2Email" Text="Partner2email required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" ID="Regularexpressionvalidator2" Visible="false"
                                ControlToValidate="txtPartner2Email" ErrorMessage="correct email format required"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label runat="server" ID="lblPartner3Name" Font-Bold="true" AssociatedControlID="txtPartner3Name"
                                Visible="false" Style="color: white">Team-Mate 3 Name:</asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtPartner3Name" runat="server" Visible="false" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Visible="false" runat="server"
                                ControlToValidate="txtPartner3Name" Text="Partner3name required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label runat="server" ID="lblPartner3Email" Font-Bold="true" AssociatedControlID="txtPartner3Email"
                                Visible="false" Style="color: white">Team-Mate 3 Email:</asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtPartner3Email" runat="server" Visible="false" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Visible="false"
                                ControlToValidate="txtPartner3Email" Text="Partner3email required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" ID="Regularexpressionvalidator3" Visible="false"
                                ControlToValidate="txtPartner3Email" ErrorMessage="correct email format required"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label runat="server" ID="lblPartner4Name" Font-Bold="true" AssociatedControlID="txtPartner4Name"
                                Visible="false" Style="color: white">Team-Mate 4 Name:</asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtPartner4Name" runat="server" Visible="false" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Visible="false" runat="server"
                                ControlToValidate="txtPartner4Name" Text="Partner4name required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label runat="server" ID="lblPartner4Email" Font-Bold="true" AssociatedControlID="txtPartner4Email"
                                Visible="false" Style="color: white">Team-Mate 4 Email:</asp:Label>
                        </td>
                        <td align="right">
                            <asp:TextBox ID="txtPartner4Email" runat="server" Visible="false" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Visible="false"
                                ControlToValidate="txtPartner4Email" Text="Partner4email required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" ID="Regularexpressionvalidator4" Visible="false"
                                ControlToValidate="txtPartner4Email" ErrorMessage="correct email format required"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="click_me" runat="server" Text="Submit" />
                        </td>
                    </tr>
                </table>
            </div>
        </asp:View>
        <asp:View runat="server" ID="view3">
            <div style="position: relative; top: 70px; left: 20px; font-weight: bold; font-size: 14px;">
                Registration complete.thanks
            </div>
        </asp:View>
    </asp:MultiView>
    <asp:SqlDataSource ID="sqldatasource1" runat="server" ConnectionString="<%$ ConnectionStrings:techsrijanConnectionString %>"
        SelectCommand="SELECT * FROM [Events]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
