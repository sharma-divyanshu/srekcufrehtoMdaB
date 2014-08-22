using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["value"]) == 1)
        {       SqlDataSource1.SelectCommand = @"select * from " + Session["stream"] + " where name='" + Session["username"] + "'and Year='" + Session["year"] + "'";
            SqlDataSource2.SelectCommand=@"select avg(att_sub_1+att_sub_2+att_sub_3+att_sub_4+att_sub_5+att_sub_6+att_sub_7+att_sub_8+att_sub_9+att_sub_10+att_sub_11+att_sub_12)/6.0 as Average from " + Session["stream"] + " where name='" + Session["username"] + "'and Year='" + Session["year"] + "' group by Branch_ID";
    }
        else
            Response.Redirect("404.aspx");
    }
}