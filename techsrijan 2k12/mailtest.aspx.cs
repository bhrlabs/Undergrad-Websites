using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class mailtest : System.Web.UI.Page
{
    BLogic b = new BLogic();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = TextBox1.Text;
        string body = TextBox2.Text;
        MailMessage objmail = new MailMessage("info@techsrijan.org", email);
        MailAddress from = new MailAddress("info@techsrijan.org");
        MailAddress to = new MailAddress(email);
        objmail.Body = body;
        objmail.From = from;
        objmail.Subject = "techsrijan 2012";
        objmail.IsBodyHtml = true;
        SmtpClient sendmail = new SmtpClient("localhost");
        sendmail.EnableSsl = true;
        NetworkCredential auth = new NetworkCredential("info@techsrijan.org","techsrijan2012");
        sendmail.Credentials = auth;
        try
        {
            sendmail.Send(objmail);
            lbl_status.Text = "Message Sent successfully";
            lbl_status.Visible= true;
        }
        catch (Exception)
        {
            lbl_status.Text = "Message Failed";
            lbl_status.Visible = true;
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string del = "delete from registration where user_fname = 'Ashvani';";
        b.executenonquery(del);
    }
}