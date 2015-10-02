using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;


public partial class _Default : System.Web.UI.Page
{
    BLogic b1 = new BLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into events(event_name, event_maxparticipants) values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
        try
        {
            b1.executenonquery(str);
            Label3.Text = "Added to table";
            Label3.Visible = true;
        }
        catch (Exception)
        {
            Label3.Text = "failed";
            Label3.Visible = true;
        }
    }
}