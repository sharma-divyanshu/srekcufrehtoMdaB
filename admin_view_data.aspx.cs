using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class admin_view_data : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["branch"] = DropDownList1.SelectedValue;
        Session["year"] = DropDownList2.SelectedValue;
        Session["shift"] = DropDownList3.SelectedValue;
        Response.Redirect("class_view.aspx?branch=" + this.DropDownList1.SelectedValue + "&year=" + this.DropDownList2.SelectedValue + "&shift=" + this.DropDownList3.SelectedValue);
    }
}