using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
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
        Panel4.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((TextBox1.Text == "admin") && (TextBox2.Text == "adm"))
        {
            Label1.Text = "Admin Login Successful";
            Panel1.Visible = true;
            RadioButtonList1.SelectedIndex = -1;
            Session["user"] = TextBox1.Text;
            Session["pass"] = TextBox2.Text;
        }
        else if((TextBox1.Text=="teacher")&&(TextBox2.Text=="teac"))
        {
            Label2.Text = "Teacher Login Successful";
            Panel2.Visible = true;
            DropDownList3.ClearSelection() ;
            Session["user"] = TextBox1.Text;
            Session["pass"] = TextBox2.Text;
        }
        else
            Label1.Text = "Login Failed :(";
    }   
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        if (RadioButtonList1.SelectedIndex == -1)
            Label2.Text = "Select an Option.";
        else
        {
            string ctr = RadioButtonList1.SelectedItem.ToString();
            switch (ctr)
            {
                case "Enter Student Data": Response.Redirect("~/add_stu_data.aspx");
                    break;
                case "Update Student Data": Panel4.Visible = true;
                    break;
                case "View Class Data": Panel3.Visible = true;
                    break;
                case "View Feedback": Response.Redirect("~/feed.aspx");
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
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Session["year"] = DropDownList1.SelectedValue;
        Session["branch"] = DropDownList2.SelectedValue;
        Session["shift"] = DropDownList3.SelectedValue;
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hph\Documents\Visual Studio 2013\WebSites\srekcufrehtoMdaB\App_Data\Database.mdf;Integrated Security=True");
        string instr = "select sub1 from SUB_ODD where Year='" + Convert.ToInt32(DropDownList1.SelectedItem.ToString()) + "' AND Branch='" + DropDownList3.SelectedItem.ToString() + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(instr, conn);
        cmd.Connection = conn;
        SqlDataReader rdr;
        rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            DropDownList4.Items.Add(rdr["sub1"].ToString());
        }
        conn.Close();
        conn.Open();
        string instr2 = "select sub2 from SUB_ODD where Year='" + Convert.ToInt32(DropDownList1.SelectedItem.ToString()) + "' AND Branch='" + DropDownList3.SelectedItem.ToString() + "'";
        SqlCommand cmd2 = new SqlCommand(instr2, conn);
        cmd2.Connection = conn;
        SqlDataReader rdr2;
        rdr2 = cmd2.ExecuteReader();
        while (rdr2.Read())
        {
            DropDownList4.Items.Add(rdr2["sub2"].ToString());
        }
        conn.Close();
        conn.Open();
        string instr3 = "select sub3 from SUB_ODD where Year='" + Convert.ToInt32(DropDownList1.SelectedItem.ToString()) + "' AND Branch='" + DropDownList3.SelectedItem.ToString() + "'";
        SqlCommand cmd3 = new SqlCommand(instr3, conn);
        cmd3.Connection = conn;
        SqlDataReader rdr3;
        rdr3 = cmd3.ExecuteReader();
        while (rdr3.Read())
        {
            DropDownList4.Items.Add(rdr3["sub3"].ToString());
        }
        conn.Close();
        conn.Open();
        string instr4 = "select sub4 from SUB_ODD where Year='" + Convert.ToInt32(DropDownList1.SelectedItem.ToString()) + "' AND Branch='" + DropDownList3.SelectedItem.ToString() + "'";
        SqlCommand cmd4 = new SqlCommand(instr4, conn);
        cmd2.Connection = conn;
        SqlDataReader rdr4;
        rdr4 = cmd4.ExecuteReader();
        while (rdr4.Read())
        {
            DropDownList4.Items.Add(rdr4["sub4"].ToString());
        }
        conn.Close();
        conn.Open();
        string instr5 = "select sub5 from SUB_ODD where Year='" + Convert.ToInt32(DropDownList1.SelectedItem.ToString()) + "' AND Branch='" + DropDownList3.SelectedItem.ToString() + "'";
        SqlCommand cmd5 = new SqlCommand(instr5, conn);
        cmd5.Connection = conn;
        SqlDataReader rdr5;
        rdr5 = cmd5.ExecuteReader();
        while (rdr5.Read())
        {
            DropDownList4.Items.Add(rdr5["sub5"].ToString());
        }
        conn.Close();
        conn.Open();
        string instr6 = "select sub6 from SUB_ODD where Year='" + Convert.ToInt32(DropDownList1.SelectedItem.ToString()) + "' AND Branch='" + DropDownList3.SelectedItem.ToString() + "'";
        SqlCommand cmd6 = new SqlCommand(instr6, conn);
        cmd6.Connection = conn;
        SqlDataReader rdr6;
        rdr6 = cmd6.ExecuteReader();
        while (rdr6.Read())
        {
            DropDownList4.Items.Add(rdr6["sub6"].ToString());
        }
        conn.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("upd_stu_data.aspx?id=" + TextBox1.Text + "&branch=" + DropDownList10.SelectedValue + "&year=" + DropDownList8.SelectedValue + "&shift=" + DropDownList9.SelectedValue);
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("atten.aspx?id=" + TextBox1.Text + "&branch=" + DropDownList3.SelectedValue + "&year=" + DropDownList1.SelectedValue + "&shift=" + DropDownList2.SelectedValue + "&subject="+DropDownList4.SelectedValue);
        Session["subjectid"] = DropDownList4.SelectedIndex + 1;
        Session["subject"] = DropDownList4.SelectedValue;
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        
    }
}