using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class ashvani_adminpage : System.Web.UI.Page
{
    BLogic b1 = new BLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        //showevents();
    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    string str = "insert into events values( '" + TextBox1.Text + "','" + TextBox2.Text + "')";
    //    try
    //    {
    //        b1.executenonquery(str);
    //        Label3.Text = "Event Added";
    //        Label3.Visible = true;
    //    }
    //    catch (Exception)
    //    {
    //        Label3.Text = "Event Not Added";
    //        Label3.Visible = true;

    //    }
    //}
    //protected void showevents()
    //{
    //    string q1= "select * from events";
    //    MySqlDataReader dr = b1.executereader(q1);
    //    GridView1.DataSource = dr;
    //    GridView1.DataBind();
    //    GridView1.AllowSorting = true;
    //    dr.Close();
    //}
    
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string q1 = "select reg_eventname, count(*) from event_reg group by reg_eventname";
        MySqlDataReader dr = b1.executereader(q1);
        GridView2.DataSource = dr;
        GridView2.DataBind();
        GridView2.AllowSorting = true;
        dr.Close();
        Button5.Visible = true;
        GridView2.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string q3 = "select * from hospitality";
        MySqlDataReader dr = b1.executereader(q3);
        GridView3.DataSource = dr;
        GridView3.DataBind();
        GridView3.AllowSorting = true;
        dr.Close();
        Button4.Visible = true;
        GridView3.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView3.Visible = false;
        Button4.Visible = false;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        GridView2.Visible = false;
        Button5.Visible = false;
    }
}