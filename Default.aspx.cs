using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Divyanshu\Documents\GitHub\srekcufrehtoMdaB\App_Data\Database.mdf;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select from STUDENT where name='"+TextBox1.Text+"'and password='"+TextBox2.Text+"'";
        SqlDataReader rdr = cmd.ExecuteReader();
        
    }
}