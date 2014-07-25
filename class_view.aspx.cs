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
        if (Request.QueryString["id"] == "admin")
        {
            SqlDataSource1.SelectCommand = @"select * from " + Request.QueryString["branch"] + " where year='" + Request.QueryString["year"] + "'and shift='" + Request.QueryString["shift"] + "' order by Enroll_No";
            SqlDataSource2.SelectCommand = @"select avg(att_sub_1+att_sub_2+att_sub_3+att_sub_4+att_sub_5+att_sub_6+att_sub_7+att_sub_8+att_sub_9+att_sub_10+att_sub_11+att_sub_12)/6.0 as Average from " + Request.QueryString["branch"] + " where year='" + Request.QueryString["year"] + "'and shift= '" + Request.QueryString["shift"] + "' group by Branch_ID";
        }
        else
            Response.Redirect("404.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}