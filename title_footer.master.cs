using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class title_footer : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string constr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hph\Documents\Visual Studio 2013\WebSites\srekcufrehtoMdaB\App_Data\Database.mdf;Integrated Security=True";
        SqlConnection conn = new SqlConnection(constr);
        string instr = "INSERT INTO Feed (Name,email,branch,year,sugg) values (@name,@email,@branch,@year,@sugg)";
        string name, email, branch, sugg;
        int year;
        name = TextBox1.Text;
        email = TextBox2.Text;
        branch = DropDownList1.SelectedItem.ToString();
        year = Convert.ToInt32(DropDownList2.SelectedItem.ToString());
        sugg = TextBox3.Text;
        conn.Open();
        SqlCommand cmd = new SqlCommand(instr, conn);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@branch", branch);
        cmd.Parameters.AddWithValue("@year", year);
        cmd.Parameters.AddWithValue("@sugg", sugg);
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}
