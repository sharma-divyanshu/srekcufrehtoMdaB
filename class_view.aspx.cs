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
        if (Request.QueryString["id"]=="admin")
            SqlDataSource1.SelectCommand = @"select * from " + Request.QueryString["branch"] + " where year='" + Request.QueryString["year"] + "'and shift='" + Request.QueryString["shift"] + "' order by Enroll_No";
        else
            Response.Redirect("404.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}