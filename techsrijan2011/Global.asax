<%@ Application Language="VB" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application startup
    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        'Dim ex As Exception = Server.GetLastError

        'Dim query As String = "INSERT INTO Errors([InnerException],[InnerString],[Date]) VALUES(@exception,@message,@date) "
        'Dim connectionString As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        'Dim myconnection As New SqlConnection(connectionString)
        'Dim cmd As New SqlCommand(query, myconnection)
        'myconnection.Open()
        'cmd.Parameters.AddWithValue("@exception", ex.InnerException.Message.ToString)
        'cmd.Parameters.AddWithValue("@message", ex.Message.ToString)
        'cmd.Parameters.AddWithValue("@date",DateTime.Now.ToString )
        'cmd.ExecuteNonQuery()
        'myconnection.Close()
        'Response.Redirect("\techsrijan\Errors\Error.aspx")
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a new session is started
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.
    End Sub
       
</script>