<%@ Page Language="VB" MasterPageFile="~/Administrator/adminmaster.master" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">

Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim email As String =User.Identity.Name 
        Dim sqlstring As String = "SELECT COUNT(*) AS rows FROM inbox WHERE [SendTo]=(@sendto) AND [check]=(@check)"
        Dim connectionstring As String = ConfigurationManager.ConnectionStrings("techsrijanConnectionString").ConnectionString
        Dim myconnection As New SqlConnection(connectionstring)
        Dim cmd As New SqlCommand(sqlstring, myconnection)
        myconnection.Open()
        cmd.Parameters.AddWithValue("@sendto", email)
        cmd.Parameters.AddWithValue("@check", "0")
        Dim mydatareader As SqlDataReader
        mydatareader = cmd.ExecuteReader
        Dim cnt As Integer = 0
        While (mydatareader.Read)
            
            cnt = CType(mydatareader("rows"), Integer)
        End While
        lblno.Text = cnt
End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="adminhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masteradmin" Runat="Server">
 <div style="position:relative;top:45px;left:30px;font-weight:bold;font-size:14px;">Welcome <asp:LoginName ID="LoginName1" runat="server" Font-Bold="true" Font-Size="14px" />
    <br />
    <br />
    You have <asp:Label runat="server" ID="lblno" ></asp:Label> new messages</div> 
  <br />
  
</asp:Content>

