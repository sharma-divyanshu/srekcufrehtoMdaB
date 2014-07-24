using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class edit_atten : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["subject"] != null)
        {
            SqlDataSource1.SelectCommand = @"select * from " + Request.QueryString["branch"] + " where year='" + Request.QueryString["year"] + "'and shift='" + Request.QueryString["shift"] + "' and Enroll_No<>999999999 order by Enroll_No";
            TextBox1.Text = Session["subjectid"].ToString() + " -- " + Session["subject"].ToString() ;
            TextBox1.Enabled = false;
        }
        else
            Response.Redirect("~/404.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach(GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkrow = (row.Cells[5].FindControl("chkbox") as CheckBox);
                if (chkrow.Checked)
                {
                }
            }
        }
    }
}