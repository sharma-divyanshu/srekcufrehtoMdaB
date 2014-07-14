using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {


    }
    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        Session["user"] = TextBox2.Text;
        Response.Redirect("Sub.aspx");
        Response.Write("Session ID: " + Session.SessionID);

    }
}