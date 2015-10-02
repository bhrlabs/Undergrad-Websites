using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class hospitality : System.Web.UI.Page
{
    BLogic b1 = new BLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        t5y.Text = "2012";
        t5y.ReadOnly = true;
        t8y.Text = "2012";
        t8y.ReadOnly = true;
        t9y.Text = "2012";
        t9y.ReadOnly = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string arrdate = t5d.Text + "/" + t5m.Text + "/" + t5y.Text;
        string bdate = t8d.Text + "/" + t8m.Text + "/" + t8y.Text;
        string depdate = t9d.Text + "/" + t9m.Text + "/" + t9y.Text;
        string carq1 = "insert into hospitality(fname, lname, email, college, arrival_date, medium, dep_date, phn) values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + arrdate + "','" + DropDownList1.SelectedItem.Text + "','"+ depdate + "','" + Int64.Parse(t10.Text) + "')";
        string busq1 = "insert into hospitality(fname, lname, email, college, arrival_date, medium, boarding_date, dep_date, phn) values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + arrdate + "','" + DropDownList1.SelectedItem.Text + "','"+ bdate + "','" + depdate + "','" + Int64.Parse(t10.Text) + "')";
        string trainq1 = "insert into hospitality(fname, lname, email, college, arrival_date, medium, train_no, pnr_no, dep_date, phn) values('" + t1.Text + "','" + t2.Text + "','" + t3.Text + "','" + t4.Text + "','" + arrdate + "','" + DropDownList1.SelectedItem.Text + "','" + t6.Text + "','" + t7.Text + "','"+ depdate + "','" + Int64.Parse(t10.Text) + "')";
        
        if (int.Parse(DropDownList1.SelectedValue) == 1)
        {
            b1.executenonquery(busq1);
            Lbl_msg.Text = "your details have been submitted successfully";
            Lbl_msg.Visible = true;
        }
        if (int.Parse(DropDownList1.SelectedValue) == 2)
        {
            b1.executenonquery(trainq1);
            Lbl_msg.Text = "your details have been submitted successfully";
            Lbl_msg.Visible = true;
        }
        if (int.Parse(DropDownList1.SelectedValue) == 3)
        {
            b1.executenonquery(carq1);
            Lbl_msg.Text = "your details have been submitted successfully";
            Lbl_msg.Visible = true;
        }
        clear();
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (int.Parse(DropDownList1.SelectedValue))
        {
            case 1: //bus
                Label7.Visible = true;
                panel1.Visible = true;
                Label6.Visible = false;
                Label11.Visible = false;
                t6.Visible = false;
                t7.Visible = false;
                break;
            case 2: //Train
                Label6.Visible = true;
                Label11.Visible = true;
                t6.Visible = true;
                t7.Visible = true;
                Label7.Visible = false;
                panel1.Visible = false;
              
                break;
            
        }
    }

    protected void clear()
    {
        t1.Text = "";
        t2.Text = "";
        t3.Text = "";
        t4.Text = "";
        t5d.Text = ""; t5m.Text = "";
        t6.Text = "";
        t7.Text = "";
        t8d.Text = ""; t8m.Text = "";
        t9d.Text = ""; t9m.Text = "";
        t10.Text = "";
    }
}