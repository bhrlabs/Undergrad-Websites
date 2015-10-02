using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MySql.Data;
using MySql.Data.MySqlClient;


/// <summary>
/// Summary description for BLogic
/// </summary>
public class BLogic
{
    MySqlConnection con;
    MySqlCommand cmd;
    MySqlDataReader dr;
    MySqlDataAdapter da;
    public BLogic()
    {
        con = new MySqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;
    }
    private void opencon()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
    }
    private void closecon()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }
    public void executenonquery(string str)
    {
        opencon();
        cmd = new MySqlCommand(str, con);
        cmd.ExecuteNonQuery();
        closecon();
    }
    public MySqlDataReader executereader(string str)
    {
        opencon();
        cmd = new MySqlCommand(str, con);
        MySqlDataReader dr = cmd.ExecuteReader();
        
        return dr;
        closecon();
    }
    public DataSet fill(string str)
    {
        da = new MySqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
}