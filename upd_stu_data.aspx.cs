using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Button2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ctr = DropDownList1.Text;
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hph\Documents\Visual Studio 2013\WebSites\srekcufrehtoMdaB\App_Data\Database.mdf;Integrated Security=True");
        Panel2.Visible=true;
        Button2.Visible = true;
        switch(ctr)
        {
            case "Enrollment No.":
                Panel3.Visible = true;
                conn.Open();
                break;
            case "Name":
                Panel4.Visible = true;
                break;
            case "Class":
                Panel5.Visible = true;
                break;
        }
    }
}