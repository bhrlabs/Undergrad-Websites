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

public partial class _44upncc : System.Web.UI.Page
{
   SqlConnection con;
    SqlDataAdapter sda;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        sda = new SqlDataAdapter();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        ds = new DataSet();
        con.Open();
        sda.SelectCommand = new SqlCommand();
        sda.SelectCommand.CommandText = "select [Registration No],Name,Rank,[Father's Name],[Date of Birth],[Cert Held 'B'/'C'],Grading,[Current Status] from ncc where coy='44upncc'";
        sda.SelectCommand.Connection = con;
        sda.Fill(ds, "tt");
        con.Close();
        GridView1.DataSource = ds.Tables["tt"];
        GridView1.DataBind();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();

    }

}
