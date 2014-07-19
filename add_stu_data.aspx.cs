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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int branch_id, yr;
        long enr_no;
        string first_name, last_name,branch,shift,name;
        string cont = "y";
        while(cont=="y")
        {
            enr_no = Convert.ToInt64(TextBox1.Text);
            first_name = TextBox2.Text;
            last_name = TextBox3.Text;
            yr = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
            branch = DropDownList2.SelectedItem.ToString();
            shift = DropDownList3.SelectedItem.ToString();
            name = first_name + last_name;
            string constr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hph\Documents\Visual Studio 2013\WebSites\srekcufrehtoMdaB\App_Data\Database.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd;
            switch(branch)
            {
                case "CSE": branch_id = 1;
                    string insert = "INSERT INTO CSE (Branch_ID,Shift,Year,Enroll_No, Name) values (@branch_id,@shift,@yr,@enr_no,@name)";
                    cmd = new SqlCommand(insert, con);
                    cmd.Parameters.AddWithValue("@branch_id", branch_id);
                    cmd.Parameters.AddWithValue("@shift", shift);
                    cmd.Parameters.AddWithValue("@yr", yr);
                    cmd.Parameters.AddWithValue("@enr_no",enr_no);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.ExecuteNonQuery();
                    break;
            }
            if (cont == "y")
                Response.Redirect("~/add_stu_data.aspx");
            con.Close();
        }
       
    }
}