<%@ Page Language="VB" MasterPageFile="~/MyAccount/Masteraccount.master" Title="Change Password" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If (Roles.IsUserInRole("SuperAdministrator") Or Roles.IsUserInRole("Administrator")) Then
            cngpassword.Visible = "False"
        End If
    End Sub
</script>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="accounthead" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="masteraccount1" Runat="Server">
    <div style="position:relative;top:70px;left:20px;">
<asp:ChangePassword runat="server" ID="cngpassword" 
        ContinueDestinationPageUrl="~/MyAccount/Home.aspx" style="color: #FFFFFF" ></asp:ChangePassword>
</div>         <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br /></asp:Content>

