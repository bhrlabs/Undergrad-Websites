using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class changepassword : System.Web.UI.Page
{
    BLogic b1 = new BLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count > 0)
        {
            if (Session["loginuser"].ToString().Length < 1)
                Response.Redirect("login.aspx");
        }
        else Response.Redirect("login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string q1 = "select user_pass from registration where user_email = '" + Session["loginuser"].ToString() + "'";
        string str = "update registration set user_pass = '"+ TextBox2.Text+"' where user_email = '"+Session["loginuser"].ToString()+"'";
        MySqlDataReader dr = b1.executereader(q1);
        dr.Read();
        string password = dr[0].ToString();
        dr.Close();
        if (string.Compare(password, TextBox1.Text) == 0)
        {
            try
            {
                b1.executenonquery(str);
                Label4.Text = "Password has been changed";
                Label4.Visible = true;
            }
            catch (Exception)
            {
                Label4.Text = "Unable to change password";
                Label4.Visible = true;
            }
        }
        else
        {
            Label4.Text = "Enter Correct Password first";
            Label4.Visible = true;
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session.Remove("loginuser");
        Response.Redirect("home.aspx");
    }
}