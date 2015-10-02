using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;


public partial class login : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter sda;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["lgst"] = "djkfbs";
        

    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        sda = new SqlDataAdapter();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        ds = new DataSet();
        con.Open();
        sda.SelectCommand = new SqlCommand();
        sda.SelectCommand.CommandText = "select * from login where username='"+TextBox1.Text+"' and pswd='" +TextBox2.Text+"'" ;
        sda.SelectCommand.Connection = con;
        sda.Fill(ds, "tt");
        con.Close();
        if (ds.Tables["tt"].Rows.Count > 0)
        {
            Session["lgst"] = "9455555868";
            Session.Timeout = 2;
            Response.Redirect("editing.aspx");
        }

    }
}

