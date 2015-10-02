
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Login1_LoggingIn(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.LoginCancelEventArgs)
        Dim login1 As Login = CType(loginview1.FindControl("Login1"), Login)

        If Membership.ValidateUser(login1.UserName, login1.Password) Then
            FormsAuthentication.RedirectFromLoginPage(login1.UserName, login1.RememberMeSet)
            Response.Redirect("~/MyAccount/Home.aspx")

        End If

       
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not User.Identity.IsAuthenticated Then
        '    loginstatus1.Visible = "false"
        'End If


        If Request.QueryString("ReturnURL") IsNot Nothing Then
            Response.Redirect("~/Home.aspx")

        End If
        'If Membership.GetUser.Equals(vbNull) Then
        '    hl1.NavigateUrl = "Signin.aspx"
        'End If
    End Sub

    'Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
    '    Response.Redirect("signup.aspx")
    'End Sub

    Protected Sub Login1_Load(ByVal sender As Object, ByVal e As System.EventArgs)


    End Sub
End Class

