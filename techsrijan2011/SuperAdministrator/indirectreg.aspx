<%@ Page Language="VB" MasterPageFile="~/SuperAdministrator/shashank.master" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Net.Mail" %>
<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        sqldatasource1.SelectParameters.Item("sent").DefaultValue = "0"
    End Sub

 

    Protected Sub gridview1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim id As String = gridview1.SelectedRow.Cells(1).Text
        Dim sqlstring As String = "UPDATE Emaildata  SET [Joined]='1' WHERE [EmailId]=(@id)"
        Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        Dim myconnection As New SqlConnection(connectionstring)
        Dim cmd As New SqlCommand(sqlstring, myconnection)
        myconnection.Open()
        cmd.Parameters.AddWithValue("@id", ID)
        cmd.ExecuteNonQuery()
        myconnection.Close()
         gridview1.DataBind 
    End Sub
   

Protected Sub gridview1_RowCreated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs)
If (e.Row.RowType = DataControlRowType.DataRow) Then
            Dim btn As LinkButton = CType(e.Row.Cells(3).FindControl("btn"), LinkButton)
            btn.CommandArgument = e.Row.RowIndex.ToString
        End If
End Sub

Protected Sub gridview1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs)
 If (e.CommandName = "send") Then
            Dim index As Integer = CType(e.CommandArgument, Integer)
            Dim email As String=gridview1.Rows(index).Cells(1).Text 
            sendmail(email)
        End If
End Sub
    Protected Sub sendmail(ByVal email As String)
   
        Dim objMM As New MailMessage()
        
        Dim fromAddress As New MailAddress("techsrijan@mmmec.net")
        Dim toAddress As New MailAddress(email)
        objMM.From = fromAddress
        objMM.To.Add(toAddress)
        objMM.To.Add(New System.Net.Mail.MailAddress("techsrijan2k9@gmail.com"))
        objMM.Priority = MailPriority.High
        objMM.IsBodyHtml="true"
        objMM.Subject = "techSRIJAN Registration"
        objMM.Body = "Hi! <br/> Thanks for registering in techsrijan <br/> techSRIJAN 2K9 team"
        Dim smtpClient1 As New SmtpClient()
         smtpClient1.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis
        smtpClient1.Host = "mmmec.net"
        smtpClient1.Port = "25"
        smtpClient1.Credentials = New System.Net.NetworkCredential("tsrijan", "im.ieee")
        Try
            smtpClient1.Send(objMM)
        Catch ex As Exception
            'Dim query As String = "INSERT INTO Errors([InnerException],[InnerString]) VALUES(@exception,@message) "
            'Dim connectionString As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
            'Dim myconnection As New SqlConnection(connectionString)
            'Dim cmd As New SqlCommand(query, myconnection)
            'myconnection.Open()
            'cmd.Parameters.AddWithValue("@exception", ex.InnerException.Message.ToString)
            'cmd.Parameters.AddWithValue("@message", ex.Message.ToString)
            'cmd.ExecuteNonQuery()
            'myconnection.Close()
        End Try
            
    End Sub

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="superadminhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="superadminmaster" Runat="Server">
<div style="position:relative;width:600px;overflow:scroll;top:70px;left:30px;">
<asp:GridView runat="server" ID="gridview1" AllowPaging="true" AllowSorting="true" DataSourceID="sqldatasource1"  OnSelectedIndexChanged="gridview1_SelectedIndexChanged" OnRowCreated="gridview1_RowCreated" OnRowCommand="gridview1_RowCommand">
 <Columns >
 
  <asp:BoundField DataField="FullName" HeaderText="Name" />
  <asp:BoundField DataField="EmailId" HeaderText="Email" />
     <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Update" />
     <asp:TemplateField >
     <ItemTemplate >
     <asp:linkButton runat="server" ID="btn" Text="send"   CommandName="send" />
     </ItemTemplate>
     </asp:TemplateField>
 </Columns>
</asp:GridView>
<asp:SqlDataSource runat="server"  id="sqldatasource1" ConnectionString="<%$ Connectionstrings:techsrijanConnectionString %>" 
 SelectCommand="SELECT * FROM Emaildata WHERE [Joined]=(@sent)">
 <SelectParameters >
 <asp:Parameter Type="string" Name="sent" />
 
 </SelectParameters>
 </asp:SqlDataSource>
</div> 
</asp:Content>

