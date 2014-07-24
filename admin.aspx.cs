using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label2.Text = "";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((TextBox1.Text == "admin") && (TextBox2.Text == "adm"))
        {
            Label1.Text = "Admin Login Successful";
            Panel1.Visible = true;
            RadioButtonList1.SelectedIndex = -1;
        }
        else if((TextBox1.Text=="teacher")&&(TextBox2.Text=="teac"))
        {
            Label2.Text = "Teacher Login Successful";
            Panel2.Visible = true;
        }
        else
            Label1.Text = "Login Failed :(";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        if (RadioButtonList1.SelectedIndex == -1)
            Label2.Text = "Select an Option Bhenchod";
        else
        {
            string ctr = RadioButtonList1.SelectedItem.ToString();
            switch (ctr)
            {
                case "Enter Student Data": Response.Redirect("~/add_stu_data.aspx?ID="+this.TextBox1.Text);
                    break;
                case "Update Student Data": Response.Redirect("~/upd_stu_data.aspxID?="+this.TextBox1.Text);
                    break;
                case "View Class Data": Panel3.Visible = true;
                    break;
                case "View Feedback": Response.Redirect("~/feed.aspx?ID="+this.TextBox1.Text);
                    break;
                default:
                    break;
            }
        }
    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("class_view.aspx?id=" + TextBox1.Text + "&branch=" + DropDownList7.SelectedValue + "&year=" + DropDownList5.SelectedValue + "&shift=" + DropDownList6.SelectedValue);
    }
}