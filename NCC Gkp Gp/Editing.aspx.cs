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
using System.Linq;
using System.Data.SqlClient;

public partial class Editing : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter sda;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {       
        string s = Session["lgst"].ToString();
        if (!(s=="9455555868"))
        {

            Response.Redirect("login.aspx");
        
        }
        sda = new SqlDataAdapter();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        ds = new DataSet();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        sda.InsertCommand = new SqlCommand();
        sda.InsertCommand.CommandText = "insert into ncc values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox15.Text + "','" + DropDownList1.SelectedItem.Text + "','"+TextBox1.Text+"')";

        sda.InsertCommand.Connection = con;
        sda.InsertCommand.ExecuteNonQuery();

        if (this.IsPostBack)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
            Label19.Text = "";

        }
        Label19.Text = "Entry Successful";
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        sda.UpdateCommand = new SqlCommand();
        sda.UpdateCommand.CommandText = "update ncc set Name='" + TextBox10.Text + "', Rank='" + TextBox11.Text + "', [Father's Name]='" + TextBox12.Text + "', [Date of Birth]='" + TextBox13.Text + "', [Cert Held 'B'/'C']='" + TextBox14.Text + "', Grading='" + TextBox16.Text + "', coy='" + DropDownList2.SelectedItem.Text + "', [Current Status]='" + TextBox8.Text + "' where [Registration No]='" + TextBox9.Text + "'";

        sda.UpdateCommand.Connection = con;
        sda.UpdateCommand.ExecuteNonQuery();

        if (this.IsPostBack)
        {
            TextBox8.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox1.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
            Label19.Text = "";
            Label20.Text = "";

        }
        Label20.Text = "Update Successful";
        con.Close();
    }
}
