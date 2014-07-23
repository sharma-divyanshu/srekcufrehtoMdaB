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
        cmd.CommandText = "select name,password from STUDENT where name=@name and password=@password";
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        cmd.Connection = con;
        SqlDataReader rdr = cmd.ExecuteReader();
        if(rdr.Read())
        {
            Session["username"] = TextBox1.Text;
            Session["password"] = TextBox2.Text;
            Session["stream"] = DropDownList1.SelectedValue;
            Session["year"] = DropDownList2.SelectedValue;
            Session["value"] = 1;
            Response.Redirect("view_data.aspx?Stream="+this.DropDownList1.SelectedValue+"&Year="+this.DropDownList2.SelectedValue);
        }
        else
        {
            Label1.Text = "Invalid information. Check Username/Password combination.";
            Label1.Visible = true;
        };
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}