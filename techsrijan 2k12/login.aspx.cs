using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Configuration;
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class login : System.Web.UI.Page
{
    BLogic b1 = new BLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count > 0)
        {
            if (Session["loginuser"].ToString().Length > 1)
            {
                panel1.Visible = false;
                panel2.Visible = true;
            }
            else
            {
                panel2.Visible = false;
                panel1.Visible = true;
            }
        }
        else
        {
            panel1.Visible = true;
            panel2.Visible = false;
        }
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "select * from registration where user_email = '" + TextBox1.Text + "' and user_pass = '" + TextBox2.Text + "'";
        MySqlDataReader logindr = b1.executereader(query);
        if (logindr.Read())
        {
            Session["loginuser"] = logindr.GetString(3);
            Label4.Text = "login successful";
            Label4.Visible = false;
            Response.Redirect("registration.aspx");
        }
        else
        {
            Label4.Text = "Invalid Email or Password";
            Label4.Visible = true;
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("loginuser");
        Label4.Text = "You have been logged out";
        Label4.Visible = true;
        Response.Redirect("login.aspx");
    }
}