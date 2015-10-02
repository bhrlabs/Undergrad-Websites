<%@ Page Language="VB" MasterPageFile="~/MyAccount/Masteraccount.master" Title="MyAccount" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim usr As MembershipUser = Membership.GetUser
        Dim email As String = usr.Email
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
        Dim username As String = User.Identity.Name
        If (Roles.IsUserInRole(username, "Administrator")) Then
            Administrator.Visible = "True"
            
        End If
        If (Roles.IsUserInRole(username, "SuperAdministrator")) Then
            
            SuperAdministrator.Visible = "True"
            
        End If
        
    End Sub

    Protected Sub Administrator_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim username As String = User.Identity.Name
        If (Roles.IsUserInRole(username, "Administrator")) Then
            Response.Redirect("~/Administrator/Admin.aspx")
        End If
    End Sub

    Protected Sub SuperAdministrator_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim username As String = User.Identity.Name
        If (Roles.IsUserInRole(username, "SuperAdministrator")) Then
            Response.Redirect("~/SuperAdministrator/SuperAdmin.aspx")
        End If
    End Sub
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="masteraccount1" runat="Server">
    <div style="position: relative; top: 45px; left: 30px; font-weight: bold; font-size: 14px;">
        <span style="color: #FFFFFF">Welcome </span>
        <asp:LoginName runat="server" Font-Bold="true" Font-Size="14px" Style="color: #FFFFFF" />
        <br />
        <br />
        <span style="color: #FFFFFF">You have </span>
        <asp:Label runat="server" ID="lblno" Style="color: #FFFFFF"></asp:Label>
        <span style="color: #FFFFFF">new messages</span></div>
    <br />
    <div style="position: relative; top: 80px; left: 30px;">
        <asp:LinkButton runat="server" ID="Administrator" Visible="false" OnClick="Administrator_Click"
            Text="Administrator Home">
        </asp:LinkButton>
        <br />
        <asp:LinkButton runat="server" ID="SuperAdministrator" Visible="false" OnClick="SuperAdministrator_Click"
            Text="SuperAdministrator home"></asp:LinkButton>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
