using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Configuration;
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class register : System.Web.UI.Page
{
    BLogic b1 = new BLogic();
    string fname;
    string lname;
    string email;
    string college;
    int yr;
    string branch;
    string city;
    long phone;
    string pass;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        fname = Textfname.Text;
        lname = Textlname.Text;
        email = Textemail.Text;
        college = Textclg.Text;
        yr = Convert.ToInt32(DropDownListyear.SelectedValue);
        branch = Textbranch.Text;
        city = Textcity.Text;
        phone = Convert.ToInt64(Textphn.Text);
        pass = Textregpass.Text;
        string str = "insert into registration(user_fname, user_lname, user_email, user_college, user_year, user_branch, user_city, user_phn, user_pass) values('" + fname + "','" + lname + "','" + email + "','" + college + "','" + yr + "','" + branch + "','" + city + "','" + phone + "','" + pass + "')";
        string checkstr = "select user_email from registration where user_email = '" + email + "'";
        bool flag = true;
        MySqlConnection localcon = new MySqlConnection();
        localcon.ConnectionString = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;
        localcon.Open();
        MySqlCommand localcmd = new MySqlCommand(checkstr, localcon);
        MySqlDataReader localdr = localcmd.ExecuteReader();

        if (localdr.HasRows)
        {
            resetreg();
            Lbl_msg.Text = "Email ID is already registered";
            Lbl_msg.Visible = true;
            flag = false;
        }
        localcon.Close();

        if (flag)
        {
            b1.executenonquery(str);
            resetreg();
            Lbl_msg.Text ="Congratulations you have successfully registered. ";
            registrationmail(email, fname, lname);
            Lbl_msg.Visible = true;

        }



    }

    

    protected void resetreg()
    {
        Textfname.Text = "";
        Textlname.Text = "";
        Textemail.Text = "";
        Textregpass.Text = "";
        Textcnfregpass.Text = "";
        Textclg.Text = "";
        Textcity.Text = "";
        Textbranch.Text = "";
        Textphn.Text = "";
        Lbl_msg.Visible = false;


    }

    protected void registrationmail( string to, string fn, string ln)
    {
        //StringBuilder sb = new StringBuilder();
        //Textemail.Text = email;
        //sb.Append("Hi " + fname + " " + lname + ", <br><br>Thank you for taking the time to register your details with us.</br></br>Your account application is being processed and an activation e-mail will be sent to you usually within 48 hours.</br></br>We look forward to having you on board soon.");
        //MailMessage objmail = new MailMessage("info@techsrijan.org", email);
        //objmail.Body = sb.ToString();
        //objmail.Subject = "Techsrijan 2012";
        //objmail.IsBodyHtml = true;
        //SmtpClient sendmail = new SmtpClient();
        //sendmail.Host = "mail.techsrijan.org";
        //sendmail.EnableSsl = true;
        //NetworkCredential userlogin = new NetworkCredential("info@techsrijan.org", "techsrijan2012");
        //sendmail.Credentials = userlogin;
        //sendmail.Send(objmail);
        StringBuilder sb = new StringBuilder();
        sb.Append("Hi " + fn + " " + ln + ", <br><br>Thank you for taking the time to register your details with us.</br></br>You have successfully registered at techsrijan 2012 with following details.");
        sb.Append("College:" + college + "<br />");
        sb.Append("Year:" + yr + "<br />");
        sb.Append("City:" + city + "<br />");
        sb.Append("Phone:" + phone + "<br />");
        MailMessage objmail = new MailMessage("info@techsrijan.org", to);
        MailAddress from = new MailAddress("info@techsrijan.org");
        objmail.Body = sb.ToString();
        objmail.From = from;
        objmail.Subject = "techsrijan 2012";
        objmail.IsBodyHtml = true;
        SmtpClient sendmail = new SmtpClient("mail.techsrijan.org");
        sendmail.Host = "mail.techsrijan.org";
        //sendmail.EnableSsl = true;
        NetworkCredential auth = new NetworkCredential("info@techsrijan.org", "techsrijan2012");
        sendmail.Credentials = auth;
        try
        {
            sendmail.Send(objmail);
            Lbl_msg.Text = Lbl_msg.Text + "A confirmation mail has been sent to you.";
            //lbl_status.Visible = true;
        }
        catch (Exception)
        {
            //lbl_status.Text = "Message Failed";
            //lbl_status.Visible = true;
        }


    }
}