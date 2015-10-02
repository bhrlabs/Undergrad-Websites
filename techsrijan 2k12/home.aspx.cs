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

public partial class home : System.Web.UI.Page
{
    BLogic b1 = new BLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session.Count > 0)
            {
                if (Session["loginuser"].ToString().Length > 1)
                {
                    panel1.Visible = false;
                    panel2.Visible = true;
                    showevents();
                }
                else
                {
                    panel1.Visible = true;
                    panel2.Visible = false;
                }
            }
            else
            {
                panel1.Visible = true;
                panel2.Visible = false;
            }
        }
        catch (Exception)
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
            Response.Redirect("home.aspx");
        }
        else
        {
            Label3.Text = "Invalid Email or Password";
            Label3.Visible = true;
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
    protected void showevents()
    {
        string str = "select reg_eventname from event_reg where reg_email = '" + Session["loginuser"].ToString() + "'";
        MySqlDataReader dr = b1.executereader(str);
        while (dr.Read())
        {
            Label lb = new Label();
            lb.Text = dr[0].ToString() + "<br />";
            eventpanel.Controls.Add(lb);
        }
        dr.Close();
        string q1 = "select user_fname, user_lname from registration where user_email = '" + Session["loginuser"].ToString() + "'";
        MySqlDataReader dr1 = b1.executereader(q1);
        dr1.Read();
        lbl_salute.Text = "Hi "+dr1[0].ToString() + " " + dr1[1].ToString() + ",";
        lbl_regdevent.Text = "Events you have registered are:";
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("pwdrecover.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("myprofile.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Remove("loginuser");
        Response.Redirect("home.aspx");
    }
}