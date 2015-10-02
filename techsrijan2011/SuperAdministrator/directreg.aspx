<%@ Page Language="VB" MasterPageFile="~/SuperAdministrator/shashank.master" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Net.Mail" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        sqldatasource1.SelectParameters.Item("sent").DefaultValue = "0"
    End Sub
    Protected Sub gridview1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        
        Dim username As String = gridview1.SelectedRow.Cells(0).Text
        Dim sqlstring As String = "UPDATE Registrationdata SET [Sent]='1' WHERE [UserName]=(@username)"
        Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        Dim myconnection As New SqlConnection(connectionstring)
        Dim cmd As New SqlCommand(sqlstring, myconnection)
        myconnection.Open()
        cmd.Parameters.AddWithValue("@username", username)
        cmd.ExecuteNonQuery()
        myconnection.Close()
        gridview1.DataBind()
        
    End Sub
   

    



    Protected Sub gridview1_RowCreated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs)
        If (e.Row.RowType = DataControlRowType.DataRow) Then
            Dim btn As LinkButton = CType(e.Row.Cells(4).FindControl("btn"), LinkButton)
            btn.CommandArgument = e.Row.RowIndex.ToString
        End If
    End Sub

    Protected Sub gridview1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs)
        If (e.CommandName = "send") Then
            Dim index As Integer = CType(e.CommandArgument, Integer)
            Dim lblemail As Label = CType(gridview1.Rows(index).Cells(4).FindControl("lblemail"), Label)
            sendmail(lblemail.Text)
        End If
    End Sub
    
    Protected Sub sendmail(ByVal email As String)
   
        Dim objMM As New MailMessage()
        
        Dim fromAddress As New MailAddress("admin@techsrijan.com")
        Dim toAddress As New MailAddress(email)
        objMM.From = fromAddress
        objMM.To.Add(toAddress)
        objMM.To.Add(New System.Net.Mail.MailAddress("rohitdewaker@gmail.com"))
        objMM.Priority = MailPriority.High
        objMM.IsBodyHtml = "true"
        objMM.Subject = "techSRIJAN Registration"
        objMM.Body = "Hi! <br/> Thanks for registering in techsrijan <br/> techSRIJAN 2011 team"
        Dim smtpClient1 As New SmtpClient()
        smtpClient1.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis
        smtpClient1.Host = "mail.techsrijan.com"
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
             
        Dim sqlstring As String = "UPDATE Emaildata SET [Joined]='1' WHERE [EmailId]=(@email)"
        Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        Dim myconnection As New SqlConnection(connectionstring)
        Dim cmd As New SqlCommand(sqlstring, myconnection)
        myconnection.Open()
        cmd.Parameters.AddWithValue("@email", email)
        cmd.ExecuteNonQuery()
        myconnection.Close()
    
    End Sub
   
    Protected Sub gridview1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs)
        For Each row As GridViewRow In gridview1.Rows
            Dim username As String = row.Cells(0).Text
            Dim usr As MembershipUser = Membership.GetUser(username)
            Dim lblemail As Label = CType(row.FindControl("lblemail"), Label)
            lblemail.Text = usr.Email
            
        Next
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="superadminhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="superadminmaster" Runat="Server">
<div style="position:relative;top:70px;left:10px;">
<asp:GridView runat="server" ID="gridview1" AutoGenerateColumns="false"  AllowPaging="true" AllowSorting="true"  DataKeyNames="UserName" DataSourceID="sqldatasource1" OnSelectedIndexChanged="gridview1_SelectedIndexChanged"    OnRowCreated="gridview1_RowCreated" OnRowCommand="gridview1_RowCommand" OnDataBound="gridview1_DataBound">
 <Columns >
 <asp:BoundField DataField="UserName" HeaderText="Username" />
  <asp:BoundField DataField="FullName" HeaderText="Name" />
   <asp:BoundField DataField="CollegeName" HeaderText="College" />
    <asp:BoundField DataField="ContactNo" HeaderText="Mobile" />
    <asp:TemplateField >
    <ItemTemplate>
    <asp:Label runat="server" ID="lblemail" Text=""></asp:Label>
    <asp:linkButton runat="server" ID="btn" Text="send"   CommandName="send" />
    </ItemTemplate>
    </asp:TemplateField>
     <asp:ButtonField ButtonType="Button" CommandName="Select"  Text="Update" />
 </Columns>
</asp:GridView>
<asp:SqlDataSource runat="server"  id="sqldatasource1" ConnectionString="<%$ Connectionstrings:techsrijanConnectionString %>" 
 SelectCommand="SELECT * FROM Registrationdata WHERE [Sent]=(@sent)">
 <SelectParameters >
 <asp:Parameter Type="string" Name="sent" />
 
 </SelectParameters>
 </asp:SqlDataSource>
</div> 
</asp:Content>


