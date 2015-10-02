<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" Title="Password Recovery" %>
<%@ Import Namespace="System.Net.Mail" %>
<script runat="server">

    Protected Sub passre1_SendingMail(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MailMessageEventArgs)
        e.Cancel = True
        passre1.MailDefinition.BodyFileName = "~/Body/body.txt"
        Dim msg As New MailMessage()
        msg.From = New MailAddress("admin@techsrijan.com")
        Dim usr As MembershipUser = Membership.GetUser(passre1.UserName)
        msg.To.Add(New MailAddress(usr.Email))
        msg.IsBodyHtml = True
        msg.Subject = "Password recovery"
        Dim smtp As New SmtpClient()
        smtp.Host = "mail.techsrijan.com"
        smtp.Port = 25
        smtp.Credentials = New System.Net.NetworkCredential("admin", "shanky3221")
        smtp.Send(e.Message)
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<asp:PasswordRecovery runat="server" ID="passre1"  
        OnSendingMail="passre1_SendingMail" BorderColor="White" BorderWidth="5px" 
        style="color: #FFFFFF">
<MailDefinition From="ieee.mmmec@gmail.com" Priority="High"  ></MailDefinition> </asp:PasswordRecovery>
</center>
</asp:Content>

