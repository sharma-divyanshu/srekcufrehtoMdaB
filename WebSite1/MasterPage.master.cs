using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Labe60.Text = Convert.ToString(Session["user"]) + " is logged in.";
            Label4.Text = "LOGOUT";
        }
        else
        {
            Labe60.Text = "";
            Label4.Text = "LOGIN";
        }
    }

    protected void Label2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Sub.aspx");
    }

   
    protected void Label3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void Label4_Click(object sender, EventArgs e)
    {
        
        if (Session["user"] != null)
        {
            Labe60.Text = "";
            HttpContext.Current.Session.Abandon();
            Session["user"] = null;
            Label4.Text = "LOGOUT";
            Response.Redirect("Sub.aspx");
        }
        else 
        {
            Response.Redirect("Login.aspx");
        }
        
    }
}
