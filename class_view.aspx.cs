using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class class_view : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession == false)
        {
            Response.Redirect("404.aspx");
        }
        else
        SqlDataSource1.SelectCommand = @"select * from " + Request.QueryString["branch"] + " where year='" + Session["year"] + "'and shift='" + Request.QueryString["shift"] + "' order by Enroll_No";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}