using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    BLogic b1 = new BLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count > 0)
        {
            if (Session["loginuser"].ToString().Length > 1)
            {
                string q1 = "select user_fname, user_lname from registration where user_email = '" + Session["loginuser"].ToString() + "'";
                MySqlDataReader dr = b1.executereader(q1);
                dr.Read();
                TextBox1.Text = dr.GetString(0) + " " + dr.GetString(1);
                dr.Close();
                string q2 = "select user_phn from registration where user_email = '" + Session["loginuser"].ToString() + "'";
                MySqlDataReader dr2 = b1.executereader(q2);
                dr2.Read();
                TextBox2.Text = dr2.GetString(0);
                TextBox2.ReadOnly = true;
                dr2.Close();
            }
        }
        else
            Response.Redirect("login.aspx");
        if (!Page.IsPostBack)
        {
            DropDownList2.Items.Clear();
            for (int i = 1; i <= maxparticipants(DropDownList1.SelectedItem.Text); i++)
                DropDownList2.Items.Add(i.ToString());
            hidemembers();
            
        }
        
    }
    #region EVENT REGISTRATION
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        hidemembers();
        switch (Convert.ToInt32(DropDownList2.SelectedItem.Text))
        {
            case 2: 
                lbl_member1_email.Visible = true;
                txt_member1_email.Visible = true;
                lbl_member1_name.Visible = true;
                txt_member1_name.Visible = true;
                showvalidators(2);
                break;
            case 3:
                lbl_member1_email.Visible = true;txt_member1_email.Visible = true;lbl_member1_name.Visible = true;txt_member1_name.Visible = true;
                lbl_member2_email.Visible = true;txt_member2_email.Visible = true;lbl_member2_name.Visible = true;txt_member2_name.Visible = true;
                showvalidators(3);
                break;
            case 4:
                lbl_member1_email.Visible = true;txt_member1_email.Visible = true;lbl_member1_name.Visible = true;txt_member1_name.Visible = true;txt_member2_name.ReadOnly = false;txt_member2_email.ReadOnly = false;
                lbl_member2_email.Visible = true;txt_member2_email.Visible = true;lbl_member2_name.Visible = true;txt_member2_name.Visible = true;
                lbl_member3_email.Visible = true;txt_member3_email.Visible = true;lbl_member3_name.Visible = true;txt_member3_name.Visible = true;
                showvalidators(4);
                break;
            case 5:
                lbl_member1_email.Visible = true;txt_member1_email.Visible = true;lbl_member1_name.Visible = true;txt_member1_name.Visible = true;
                lbl_member2_email.Visible = true;txt_member2_email.Visible = true;lbl_member2_name.Visible = true;txt_member2_name.Visible = true;
                lbl_member3_email.Visible = true;txt_member3_email.Visible = true;lbl_member3_name.Visible = true;txt_member3_name.Visible = true;
                lbl_member4_email.Visible = true;txt_member4_email.Visible = true;lbl_member4_name.Visible = true;txt_member4_name.Visible = true;
                showvalidators(5);
                break;
            case 6:
                lbl_member1_email.Visible = true;txt_member1_email.Visible = true;lbl_member1_name.Visible = true;txt_member1_name.Visible = true;
                lbl_member2_email.Visible = true;txt_member2_email.Visible = true;lbl_member2_name.Visible = true;txt_member2_name.Visible = true;
                lbl_member3_email.Visible = true;txt_member3_email.Visible = true;lbl_member3_name.Visible = true;txt_member3_name.Visible = true;
                lbl_member4_email.Visible = true;txt_member4_email.Visible = true;lbl_member4_name.Visible = true;txt_member4_name.Visible = true;
                lbl_member5_email.Visible = true;txt_member5_email.Visible = true;lbl_member5_name.Visible = true;txt_member5_name.Visible = true;
                showvalidators(6);
                break;
        }
    }
    protected void hidevalidators()
    {
        RequiredFieldValidator_email1.Visible = false; RegularExpressionValidator1.Visible = false;
        RequiredFieldValidator_email2.Visible = false; RegularExpressionValidator2.Visible = false;
        RequiredFieldValidator_email3.Visible = false; RegularExpressionValidator3.Visible = false;
        RequiredFieldValidator_email4.Visible = false; RegularExpressionValidator4.Visible = false;
        RequiredFieldValidator_email5.Visible = false; RegularExpressionValidator5.Visible = false;
        RequiredFieldValidator2.Visible = false;
        RequiredFieldValidator3.Visible = false;
        RequiredFieldValidator4.Visible = false;
        RequiredFieldValidator5.Visible = false;
        RequiredFieldValidator6.Visible = false;

    }
    protected void showvalidators(int n)
    {
        hidevalidators();
        switch (n)
        {
            case 2:
                RequiredFieldValidator2.Visible = true; RegularExpressionValidator1.Visible=true;
                RequiredFieldValidator_email1.Visible = true;
                break;
            case 3:
                RequiredFieldValidator2.Visible = true; RegularExpressionValidator1.Visible=true;
                RequiredFieldValidator3.Visible = true; RegularExpressionValidator2.Visible=true;
                RequiredFieldValidator_email1.Visible = true;
                RequiredFieldValidator_email2.Visible = true;
                break;
            case 4:
                RequiredFieldValidator2.Visible = true; RegularExpressionValidator1.Visible=true;
                RequiredFieldValidator3.Visible = true; RegularExpressionValidator2.Visible=true;
                RequiredFieldValidator4.Visible = true; RegularExpressionValidator3.Visible=true;
                RequiredFieldValidator_email1.Visible = true;
                RequiredFieldValidator_email2.Visible = true;
                RequiredFieldValidator_email3.Visible = true;
                break;
            case 5:
                RequiredFieldValidator2.Visible = true; RegularExpressionValidator1.Visible=true;
                RequiredFieldValidator3.Visible = true; RegularExpressionValidator2.Visible=true;
                RequiredFieldValidator4.Visible = true; RegularExpressionValidator3.Visible=true;
                RequiredFieldValidator5.Visible = true; RegularExpressionValidator4.Visible=true;
                RequiredFieldValidator_email1.Visible = true;
                RequiredFieldValidator_email2.Visible = true;
                RequiredFieldValidator_email3.Visible = true;
                RequiredFieldValidator_email4.Visible = true;
                break;
            case 6:
                RequiredFieldValidator2.Visible = true; RegularExpressionValidator1.Visible=true;
                RequiredFieldValidator3.Visible = true; RegularExpressionValidator2.Visible=true;
                RequiredFieldValidator4.Visible = true; RegularExpressionValidator3.Visible=true;
                RequiredFieldValidator5.Visible = true; RegularExpressionValidator4.Visible=true;
                RequiredFieldValidator6.Visible = true; RegularExpressionValidator5.Visible=true;
                RequiredFieldValidator_email1.Visible = true;
                RequiredFieldValidator_email2.Visible = true;
                RequiredFieldValidator_email3.Visible = true;
                RequiredFieldValidator_email4.Visible = true;
                RequiredFieldValidator_email5.Visible = true;
                break;

        }
    }
    protected int maxparticipants(string eventname)
    {
        int nom=0;
        string str = "select event_maxparticipants from events where event_name = '"+eventname+"'";
        MySqlDataReader dr;
        dr = b1.executereader(str);
        dr.Read();
            nom = Convert.ToInt32(dr[0].ToString());
        dr.Close();
        return nom;
    }
    protected void hidemembers()
    {
        switch (Convert.ToInt32(DropDownList2.SelectedItem.Text))
        {
            case 5:
                lbl_member5_email.Visible = false;
                txt_member5_email.Visible = false;
                lbl_member5_name.Visible = false;
                txt_member5_name.Visible = false;
                
                break;
            case 4:
                lbl_member5_email.Visible = false; txt_member5_email.Visible = false; lbl_member5_name.Visible = false; txt_member5_name.Visible = false;
                lbl_member4_email.Visible = false; txt_member4_email.Visible = false; lbl_member4_name.Visible = false; txt_member4_name.Visible = false;
                break;
            case 3:
                lbl_member5_email.Visible = false; txt_member5_email.Visible = false; lbl_member5_name.Visible = false; txt_member5_name.Visible = false;
                lbl_member4_email.Visible = false; txt_member4_email.Visible = false; lbl_member4_name.Visible = false; txt_member4_name.Visible = false;
                lbl_member3_email.Visible = false; txt_member3_email.Visible = false; lbl_member3_name.Visible = false; txt_member3_name.Visible = false;
                break;
            case 2:
                lbl_member5_email.Visible = false; txt_member5_email.Visible = false; lbl_member5_name.Visible = false; txt_member5_name.Visible = false;
                lbl_member2_email.Visible = false; txt_member2_email.Visible = false; lbl_member2_name.Visible = false; txt_member2_name.Visible = false;
                lbl_member3_email.Visible = false; txt_member3_email.Visible = false; lbl_member3_name.Visible = false; txt_member3_name.Visible = false;
                lbl_member4_email.Visible = false; txt_member4_email.Visible = false; lbl_member4_name.Visible = false; txt_member4_name.Visible = false;
                break;
            case 1:
                lbl_member1_email.Visible = false; txt_member1_email.Visible = false; lbl_member1_name.Visible = false; txt_member1_name.Visible = false;
                lbl_member2_email.Visible = false; txt_member2_email.Visible = false; lbl_member2_name.Visible = false; txt_member2_name.Visible = false;
                lbl_member3_email.Visible = false; txt_member3_email.Visible = false; lbl_member3_name.Visible = false; txt_member3_name.Visible = false;
                lbl_member4_email.Visible = false; txt_member4_email.Visible = false; lbl_member4_name.Visible = false; txt_member4_name.Visible = false;
                lbl_member5_email.Visible = false; txt_member5_email.Visible = false; lbl_member5_name.Visible = false; txt_member5_name.Visible = false;
                break;
        }
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            
            DropDownList2.Items.Clear();
            for (int i = 1; i <= maxparticipants(DropDownList1.SelectedItem.Text); i++)
                DropDownList2.Items.Add(i.ToString());
            hidemembers();
        }

    }
    #endregion EVENT REGISTRATION


    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = Session["loginuser"].ToString();
        switch (Convert.ToInt32(DropDownList2.SelectedValue))
        {
                
            case 1:
                string q2 = "insert into event_reg(reg_eventname, reg_name, reg_email, reg_teamname,reg_phn, reg_members) values('" + DropDownList1.SelectedItem.Text.ToString() + "','" + TextBox1.Text + "','"+email+"','" + TextBox3.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','" + Convert.ToInt32(DropDownList2.SelectedValue) + "')";
                b1.executenonquery(q2);
                Label6.Text = "Congratulations you have successfully registered"; Label6.Visible = true;
                break;
            case 2:
                string q3 = "insert into event_reg(reg_eventname, reg_name, reg_email, reg_teamname,reg_phn, reg_members,reg_member_2_name,reg_member_2_email) values('" + DropDownList1.SelectedItem.Text.ToString() + "','" + TextBox1.Text + "','" + email + "','" + TextBox3.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','" + Convert.ToInt32(DropDownList2.SelectedValue) + "','" + txt_member1_name.Text + "','" + txt_member1_email.Text + "')";
                b1.executenonquery(q3);
                Label6.Text = "Congratulations you have successfully registered"; Label6.Visible = true;
                break;
            case 3:
                string q4 = "insert into event_reg(reg_eventname, reg_name, reg_email, reg_teamname,reg_phn, reg_members,reg_member_2_name,reg_member_2_email,reg_member_3_name,reg_member_3_email) values('" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + email + "','" + TextBox3.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','" + Convert.ToInt32(DropDownList2.SelectedValue) + "','" + txt_member1_name.Text + "','" + txt_member1_email.Text + "','" + txt_member2_name.Text + "','" + txt_member2_email.Text + "')";
                b1.executenonquery(q4);
                Label6.Text = "Congratulations you have successfully registered"; Label6.Visible = true;
                break;
            case 4:
                string q5 = "insert into event_reg(reg_eventname, reg_name, reg_email, reg_teamname,reg_phn, reg_members,reg_member_2_name,reg_member_2_email,reg_member_3_name,reg_member_3_email,reg_member_4_name,reg_member_4_email) values('" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + email + "','" + TextBox3.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','" + Convert.ToInt32(DropDownList2.SelectedValue) + "','" + txt_member1_name.Text + "','" + txt_member1_email.Text + "','" + txt_member2_name.Text + "','" + txt_member2_email.Text + "','" + txt_member3_name.Text + "','" + txt_member3_email.Text + "')";
                b1.executenonquery(q5);
                Label6.Text = "Congratulations you have successfully registered"; Label6.Visible = true;
                break;
            case 5:
                string q6 = "insert into event_reg(reg_eventname, reg_name, reg_email, reg_teamname,reg_phn, reg_members,reg_member_2_name,reg_member_2_email,reg_member_3_name,reg_member_3_email,reg_member_4_name,reg_member_4_email,reg_member_5_name,reg_member_5_email) values('" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + email + "','" + TextBox3.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','" + Convert.ToInt32(DropDownList2.SelectedValue) + "','" + txt_member1_name.Text + "','" + txt_member1_email.Text + "','" + txt_member2_name.Text + "','" + txt_member2_email.Text + "','" + txt_member3_name.Text + "','" + txt_member3_email.Text + "','" + txt_member4_name.Text + "','" + txt_member4_email.Text + "')";
                b1.executenonquery(q6);
                Label6.Text = "Congratulations you have successfully registered"; Label6.Visible = true;
                break;
            case 6:
                string q7 = "insert into event_reg(reg_eventname, reg_name, reg_email, reg_teamname,reg_phn, reg_members,reg_member_2_name,reg_member_2_email,reg_member_3_name,reg_member_3_email,reg_member_4_name,reg_member_4_email,reg_member_5_name,reg_member_5_email,reg_member_6_name,reg_member_6_email) values('" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + email + "','" + TextBox3.Text + "','" + Convert.ToInt64(TextBox2.Text) + "','" + Convert.ToInt32(DropDownList2.SelectedValue) + "','" + txt_member1_name.Text + "','" + txt_member1_email.Text + "','" + txt_member2_name.Text + "','" + txt_member2_email.Text + "','" + txt_member3_name.Text + "','" + txt_member3_email.Text + "','" + txt_member4_name.Text + "','" + txt_member4_email.Text + "','" + txt_member5_name.Text + "','" + txt_member5_email.Text + "')";
                b1.executenonquery(q7);
                Label6.Text = "Congratulations you have successfully registered"; Label6.Visible = true;
                break;
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session.Remove("loginuser");
        Response.Redirect("home.aspx");
    }
}