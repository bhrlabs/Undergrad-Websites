using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using MySql.Data.MySqlClient;

public partial class myprofile : System.Web.UI.Page
{
    BLogic b1 = new BLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count > 0)
        {
            if (Session["loginuser"].ToString().Length > 1)
            {
                if (!Page.IsPostBack)
                {
                    hidetextbox();
                    showdata();
                    showlabel();
                }
            }
            else Response.Redirect("login.aspx");
        }
        else Response.Redirect("login.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session.Remove("loginuser");
        Response.Redirect("home.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = Label8.Text;
        string[] name2 = name.Split(' ');
        TextBox1.Text = name2[0];
        TextBox2.Text = name2[1];
        TextBox3.Text = Label9.Text;
        TextBox4.Text = Label10.Text;
        TextBox5.Text = Label11.Text;
        TextBox6.Text = Label12.Text;
        TextBox7.Text = Label13.Text;
        showtextbox();
        hidelabel();
    }
    protected void showtextbox()
    {
        TextBox1.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible = true;
        TextBox4.Visible = true;
        TextBox5.Visible = true;
        TextBox6.Visible = true;
        TextBox7.Visible = true;
        Button2.Visible = true;
        Button1.Visible = false;
        Label7.Visible = false;
    }
    protected void hidetextbox()
    {
        TextBox1.Visible = false;
        TextBox2.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        TextBox5.Visible = false;
        TextBox6.Visible = false;
        TextBox7.Visible = false;
        Button2.Visible = false;
        Button1.Visible = true;
    }
    protected void showlabel()
    {
        Label8.Visible = true;
        Label9.Visible = true;
        Label10.Visible = true;
        Label11.Visible = true;
        Label12.Visible = true;
        Label13.Visible = true;
        Button1.Visible = true;
        Button2.Visible = false;
    }
    protected void hidelabel()
    {
        Label8.Visible = false;
        Label9.Visible = false;
        Label10.Visible = false;
        Label11.Visible = false;
        Label12.Visible = false;
        Label13.Visible = false;
        Button1.Visible = false;
        Button2.Visible = true;
    }
    protected void showdata()
    {
        string str = "select user_fname, user_lname, user_college, user_branch, user_year, user_city, user_phn from registration where user_email = '" + Session["loginuser"].ToString() + "'";
        MySqlDataReader dr = b1.executereader(str);
        dr.Read();
        Label8.Text = dr[0].ToString() + " " + dr[1].ToString();
        Label9.Text = dr[2].ToString();
        Label10.Text = dr[3].ToString();
        Label11.Text = dr[4].ToString();
        Label12.Text = dr[5].ToString();
        Label13.Text = dr[6].ToString();
        dr.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("update registration set ");
        sb.Append("user_fname = '" + TextBox1.Text + "',");
        sb.Append("user_lname = '" + TextBox2.Text + "',");
        sb.Append("user_college = '" + TextBox3.Text + "',");
        sb.Append("user_branch = '" + TextBox4.Text + "',");
        sb.Append("user_year = '" + TextBox5.Text + "',");
        sb.Append("user_city = '" + TextBox6.Text + "',");
        sb.Append("user_phn = '" + TextBox7.Text + "' ");
        sb.Append("where user_email = '" + Session["loginuser"].ToString() + "'");
        b1.executenonquery(sb.ToString());
        showdata();
        showlabel();
        hidetextbox();
        Label7.Text = "Profile updated";
        Label7.Visible = true;

    }
}