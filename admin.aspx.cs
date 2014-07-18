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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((TextBox1.Text == "admin") && (TextBox2.Text == "adm"))
        {
            Label1.Text = "Login Successfull :)";
            Panel1.Visible = true;
            RadioButtonList1.SelectedIndex = -1;
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
                case "Enter Student Data": Response.Redirect("~/add_stu_data.aspx");
                    break;
                case "Enter Teacher Data": Response.Redirect("~/add_tea_data.aspx");
                    break;
                case "View Class Data": Response.Redirect("~/view_data.aspx");
                    break;
                case "Update Student Data": Response.Redirect("~/upd_stu_data.aspx");
                    break;
                case "Update Teacher Data": Response.Redirect("~/upd_tea_data.aspx");
                    break;
                default:
                    break;
            }
        }
    }
}