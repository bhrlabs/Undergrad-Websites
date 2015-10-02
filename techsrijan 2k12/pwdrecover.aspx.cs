using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Text;
using MySql.Data.MySqlClient;
using System.Net.Mail;
using System.Net;


public partial class pwdrecover : System.Web.UI.Page
{
    BLogic b1 = new BLogic();
    MySqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

  
    protected void pwd_send_Click(object sender, EventArgs e)
    {
        string email = Text_email.Text;
        message.Text = email;
        message.Visible = true;
        string str = "select user_fname,user_lname,user_pass from registration where user_email = '"+email+"';";
        dr = b1.executereader(str);
        dr.Read();
        message.Text = dr[2].ToString();
        string str2 = "Dear " + dr[0].ToString() + " " + dr[1].ToString() + ",<br />Your password is: '"+message.Text+"'";
        //StringBuilder sb = new StringBuilder();
        //sb.Append(str2);
        //sb.Append("your password is <br /><br />");
        //sb.Append(dr[2].ToString());
        MailMessage objmail = new MailMessage("info@techsrijan.org", email);
        MailAddress from = new MailAddress("info@techsrijan.org");
        MailAddress to = new MailAddress(email);
        objmail.Body = str2;
        objmail.From = from;
        objmail.Subject = "techsrijan 2012";
        objmail.IsBodyHtml = true;
        SmtpClient sendmail = new SmtpClient("mail.techsrijan.org");
        sendmail.Host = "mail.techsrijan.org";
        // sendmail.EnableSsl = true;
        NetworkCredential auth = new NetworkCredential("info@techsrijan.org", "techsrijan2012");
        sendmail.Credentials = auth;
        try
        {
            sendmail.Send(objmail);
            message.Text = "Password has been sent to your email.";
            message.Visible = true;
        }
        catch (Exception)
        {
            message.Text = "Sorry! we are unable to send you tha password.";
            message.Visible = true;
        }
    }

    
}