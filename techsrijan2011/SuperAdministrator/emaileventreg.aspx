<%@ Page Language="VB" MasterPageFile="~/SuperAdministrator/shashank.master" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Net.Mail" %>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        sqldatasource1.SelectParameters.Item("sent").DefaultValue = "0"
    End Sub
    Protected Sub gridview1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim eventname As String = gridview1.SelectedRow.Cells(0).Text
        Dim teamname As String = gridview1.SelectedRow.Cells(1).Text
        Dim leadermail As String = gridview1.SelectedRow.Cells(2).Text
        Dim partner1mail As String = gridview1.SelectedRow.Cells(3).Text
        Dim partner2mail As String = gridview1.SelectedRow.Cells(4).Text
        Dim partner3mail As String = gridview1.SelectedRow.Cells(5).Text
        Dim partner4mail As String = gridview1.SelectedRow.Cells(6).Text
        Dim sqlstring As String = ""
        Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        Dim myconnection As New SqlConnection(connectionstring)
        Dim cmd As New SqlCommand(sqlstring, myconnection)
        If (partner1mail Is "na") Then
            sqlstring = "UPDATE roboKRITI SET [Sent]='1' WHERE [EventName]=(@event) AND [TeamLeaderEmail]=(@email)"
            myconnection.Open()
            cmd.Parameters.AddWithValue("@event", eventname)
            cmd.Parameters.AddWithValue("@email", leadermail)
            cmd.ExecuteNonQuery()
            myconnection.Close()
            gridview1.DataBind()
        ElseIf (partner2mail Is "na") Then
            sqlstring = "UPDATE roboKRITI SET [Sent]='1' WHERE [EventName]=(@event) AND [TeamLeaderEmail]=(@email) AND [Partner1Email]=(@email1)"
            myconnection.Open()
            cmd.Parameters.AddWithValue("@event", eventname)
            cmd.Parameters.AddWithValue("@email", leadermail)
            cmd.Parameters.AddWithValue("@email1", partner1mail)
            cmd.ExecuteNonQuery()
            myconnection.Close()
            gridview1.DataBind()
        ElseIf (partner3mail Is "na") Then
            
            sqlstring = "UPDATE roboKRITI SET [Sent]='1' WHERE [EventName]=(@event) AND [TeamLeaderEmail]=(@email) AND [Partner1Email]=(@email1) AND [Partner2Email]=(@email2)"
            myconnection.Open()
            cmd.Parameters.AddWithValue("@event", eventname)
            cmd.Parameters.AddWithValue("@email", leadermail)
            cmd.Parameters.AddWithValue("@email1", partner1mail)
            cmd.Parameters.AddWithValue("@email2", partner2mail)
            cmd.ExecuteNonQuery()
            myconnection.Close()
            gridview1.DataBind()
        ElseIf (partner4mail Is "na") Then
            
            sqlstring = "UPDATE roboKRITI SET [Sent]='1' WHERE [EventName]=(@event) AND [TeamLeaderEmail]=(@email) AND [Partner1Email]=(@email1) AND [Partner2Email]=(@email2) AND [Partner3Email]=(@email3)"
            myconnection.Open()
            cmd.Parameters.AddWithValue("@event", eventname)
            cmd.Parameters.AddWithValue("@email", leadermail)
            cmd.Parameters.AddWithValue("@email1", partner1mail)
            cmd.Parameters.AddWithValue("@email2", partner2mail)
            cmd.Parameters.AddWithValue("@email3", partner3mail)
            cmd.ExecuteNonQuery()
            myconnection.Close()
            gridview1.DataBind()
        ElseIf (partner4mail IsNot "na") Then
            sqlstring = "UPDATE roboKRITI SET [Sent]='1' WHERE [EventName]=(@event) AND [TeamLeaderEmail]=(@email) AND [Partner1Email]=(@email1) AND [Partner2Email]=(@email2) AND [Partner3Email]=(@email3) AND [Partner4Email]=(@email4)"
            myconnection.Open()
            cmd.Parameters.AddWithValue("@event", eventname)
            cmd.Parameters.AddWithValue("@email", leadermail)
            cmd.Parameters.AddWithValue("@email1", partner1mail)
            cmd.Parameters.AddWithValue("@email2", partner2mail)
            cmd.Parameters.AddWithValue("@email3", partner3mail)
            cmd.Parameters.AddWithValue("@email4", partner4mail)
            cmd.ExecuteNonQuery()
            myconnection.Close()
            gridview1.DataBind()
        End If
        
    End Sub
    
    Protected Sub gridview1_RowCreated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs)
        If (e.Row.RowType = DataControlRowType.DataRow) Then
            Dim btn As LinkButton = CType(e.Row.Cells(8).FindControl("btn"), LinkButton)
            btn.CommandArgument = e.Row.RowIndex.ToString
        End If
    End Sub
    Protected Sub gridview1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs)
        If (e.CommandName = "send") Then
            Dim index As Integer = CType(e.CommandArgument, Integer)
            Dim lblemail As Label = gridview1.Rows(index).FindControl("lblemail")
            Dim leadermail As String = lblemail.Text
            Dim eventname As String = gridview1.Rows(index).Cells(0).Text
            Dim teamname As String = gridview1.Rows(index).Cells(1).Text
            Dim partner1mail As String = gridview1.Rows(index).Cells(3).Text.Trim
            Dim partner2mail As String = gridview1.Rows(index).Cells(4).Text.Trim
            Dim partner3mail As String = gridview1.Rows(index).Cells(5).Text.Trim
            Dim partner4mail As String = gridview1.Rows(index).Cells(6).Text.Trim
            sendemail(eventname, teamname, leadermail, partner1mail, partner2mail, partner3mail, partner4mail)
        End If
    End Sub
    Protected Sub sendemail(ByVal eventname As String, ByVal teamname As String, ByVal leadermail As String, ByVal partner1mail As String, ByVal partner2mail As String, ByVal partner3mail As String, ByVal partner4mail As String)
        
        Dim objMM As New MailMessage()
        Dim fromAddress As New MailAddress("admin@techsrijan.com")
        Dim toAddress As New MailAddress(leadermail)
        objMM.IsBodyHtml = "true"
        objMM.From = fromAddress
        objMM.To.Add(New System.Net.Mail.MailAddress("rohitdewaker@gmail.com"))
        If (partner1mail Is "na") Then
            
            objMM.To.Add(toAddress)
            objMM.Body += "Hi Thanks for registering in" + eventname + " <br/> Team Name:" + teamname + "<br/> Team Members:" + leadermail + ""
            
        ElseIf (partner2mail Is "na") Then
            Dim toaddress1 As New MailAddress(partner1mail)
            
            
            objMM.To.Add(toaddress1)
            
            objMM.Body += "Hi! Thanks for registering in" + eventname + " " & vbCrLf & vbCrLf & "Team Name:" + teamname + "" & vbCrLf & "Team Members:" + leadermail
            objMM.Body += "" & vbCrLf & "Team Members:" + leadermail + "" & vbCrLf & "" + partner1mail + ""
        ElseIf (partner3mail Is "na") Then
            Dim toaddress1 As New MailAddress(partner1mail)
            Dim toaddress2 As New MailAddress(partner2mail)
            objMM.To.Add(toaddress1)
            objMM.To.Add(toaddress2)
            objMM.Body += "Hi!" & vbCrLf & vbCrLf & "Thanks for registering in" + eventname + " " & vbCrLf & vbCrLf & "Team Name:" + teamname + "" & vbCrLf & "Team Members:" + leadermail
            objMM.Body += "" & vbCrLf & "Team Members:" + leadermail + "" & vbCrLf & "" + partner1mail + "" & vbCrLf & "" + partner2mail + ""
        ElseIf (partner4mail Is "na") Then
            Dim toaddress1 As New MailAddress(partner1mail)
            Dim toaddress2 As New MailAddress(partner2mail)
            objMM.To.Add(toaddress1)
            objMM.To.Add(toaddress2)
            Dim toaddress3 As New MailAddress(partner3mail)
            objMM.To.Add(toaddress3)
            objMM.Body += "Hi!" & vbCrLf & vbCrLf & "Thanks for registering in" + eventname + " " & vbCrLf & vbCrLf & "Team Name:" + teamname + "" & vbCrLf & "Team Members:" + leadermail
            objMM.Body += "" & vbCrLf & "Team Members:" + leadermail + "" & vbCrLf & "" + partner1mail + "" & vbCrLf & "" + partner2mail + "" & vbCrLf & "" + partner3mail + ""
        Else
            Dim toaddress1 As New MailAddress(partner1mail)
            Dim toaddress2 As New MailAddress(partner2mail)
            objMM.To.Add(toaddress1)
            objMM.To.Add(toaddress2)
            Dim toaddress3 As New MailAddress(partner3mail)
            objMM.To.Add(toaddress3)
            Dim toaddress4 As New MailAddress(partner4mail)
            objMM.To.Add(toaddress4)
            objMM.Body += "Hi!" & vbCrLf & vbCrLf & "Thanks for registering in" + eventname + " " & vbCrLf & vbCrLf & "Team Name:" + teamname + "" & vbCrLf & "Team Members:" + leadermail
            objMM.Body += "" & vbCrLf & "Team Members:" + leadermail + "" & vbCrLf & "" + partner1mail + "" & vbCrLf & "" + partner2mail + "" & vbCrLf & "" + partner3mail + "" & vbCrLf & "" + partner4mail + ""
        End If
        
        objMM.Priority = MailPriority.High
        objMM.Subject = "techSRIJAN " + eventname + " Registration"
        
        Dim smtpClient1 As New SmtpClient()
        smtpClient1.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis
        smtpClient1.Host = "mmmec.net"
        smtpClient1.Port = "25"
        smtpClient1.Credentials = New System.Net.NetworkCredential("admin", "shanky3221")

        
        Try
            smtpClient1.Send(objMM)
        Catch ex As Exception
            'Dim query As String = "INSERT INTO Errors([InnerException],[InnerString]) VALUES(@exception,@message) "
            'Dim connectionString1 As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            'Dim myconnection1 As New SqlConnection(connectionString1)
            'Dim cmd1 As New SqlCommand(query, myconnection1)
            'myconnection1.Open()
            'cmd1.Parameters.AddWithValue("@exception", ex.InnerException.Message.ToString)
            'cmd1.Parameters.AddWithValue("@message", ex.Message.ToString)
            'cmd1.ExecuteNonQuery()
            'myconnection1.Close()
        End Try
             
        

    End Sub

    Protected Sub gridview1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs)
        For Each row As GridViewRow In gridview1.Rows
            Dim username As String = row.Cells(9).Text
            Dim usr As MembershipUser = Membership.GetUser(username)
            Dim lblemail As Label = CType(row.FindControl("lblemail"), Label)
            lblemail.Text = usr.Email
            
        Next
    End Sub

    Protected Sub gridview1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs)
       
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="superadminhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="superadminmaster" Runat="Server">
<div style="position:relative;top:70px;left:10px;">
<asp:GridView runat="server" ID="gridview1" AutoGenerateColumns="false"  AllowPaging="true" AllowSorting="true"   DataSourceID="sqldatasource1"  OnSelectedIndexChanged="gridview1_SelectedIndexChanged"    OnRowCreated="gridview1_RowCreated" OnRowCommand="gridview1_RowCommand" OnDataBound="gridview1_DataBound" OnRowDataBound="gridview1_RowDataBound">
 <Columns >
 <asp:BoundField DataField="EventName" HeaderText="Eventname" />
 <asp:BoundField DataField="TeamName" HeaderText="Teamname" />
    <asp:TemplateField  HeaderText="Leader email">
    <ItemTemplate>
    <asp:Label runat="server" ID="lblemail" Text=""></asp:Label>
    
    </ItemTemplate>
    </asp:TemplateField>
    <asp:BoundField DataField="Partner1Email" HeaderText="Partner1Email"  />
   <asp:BoundField DataField="Partner2Email" HeaderText="Partner2Email" />
    <asp:BoundField DataField="Partner3Email" HeaderText="Partner3Email"/>
    <asp:BoundField DataField="Partner4Email" HeaderText="Partner4Email"/>
     <asp:ButtonField ButtonType="Button" CommandName="Select"  Text="Update" />
     <asp:TemplateField >
     <ItemTemplate >
     <asp:linkButton runat="server" ID="btn" Text="send"   CommandName="send" />
     </ItemTemplate>
     </asp:TemplateField>
     <asp:BoundField DataField="TeamLeaderUserName" HeaderText="Leader's username" />
    
 </Columns>
</asp:GridView>
<asp:SqlDataSource runat="server"  id="sqldatasource1" ConnectionString="<%$ Connectionstrings:techsrijanConnectionString %>" 
 SelectCommand="SELECT * FROM roboKRITI WHERE [Sent]=(@sent)">
 <SelectParameters >
 <asp:Parameter Type="string" Name="sent" />
 
 </SelectParameters>
 </asp:SqlDataSource>
</div> 
</asp:Content>

