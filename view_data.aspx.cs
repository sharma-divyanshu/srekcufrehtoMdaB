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
        if (Request.QueryString["Stream"] != null)
            SqlDataSource1.SelectCommand = @"select * from " + Request.QueryString["Stream"] + " where name='" + Session["username"] + "'and Year='" + Request.QueryString["Year"] + "'";
        else
            Response.Redirect("404.aspx");
    }
}