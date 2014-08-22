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
    int a;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["pass"].ToString() != "adm")
            Response.Redirect("~/404.aspx");
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
                case "CSE": branch_id = a = 1;
                    string val1 = "INSERT INTO CSE (Branch_ID,Shift,Year,Enroll_No, Name) values (@branch_id,@shift,@yr,@enr_no,@name)";
                    cmd = new SqlCommand(val1, con);
                    cmd.Parameters.AddWithValue("@branch_id", branch_id);
                    cmd.Parameters.AddWithValue("@shift", shift);
                    cmd.Parameters.AddWithValue("@yr", yr);
                    cmd.Parameters.AddWithValue("@enr_no",enr_no);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.ExecuteNonQuery();
                    break;

                case "ECE": branch_id = a = 2;
                    string val2 = "INSERT INTO ECE (Branch_ID,Shift,Year,Enroll_No, Name) values (@branch_id,@shift,@yr,@enr_no,@name)";
                    cmd = new SqlCommand(val2, con);
                    cmd.Parameters.AddWithValue("@branch_id", branch_id);
                    cmd.Parameters.AddWithValue("@shift", shift);
                    cmd.Parameters.AddWithValue("@yr", yr);
                    cmd.Parameters.AddWithValue("@enr_no", enr_no);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.ExecuteNonQuery();
                    break;

                case "EEE": branch_id = a = 3;
                    string val3 = "INSERT INTO ECE (Branch_ID,Shift,Year,Enroll_No, Name) values (@branch_id,@shift,@yr,@enr_no,@name)";
                    cmd = new SqlCommand(val3, con);
                    cmd.Parameters.AddWithValue("@branch_id", branch_id);
                    cmd.Parameters.AddWithValue("@shift", shift);
                    cmd.Parameters.AddWithValue("@yr", yr);
                    cmd.Parameters.AddWithValue("@enr_no", enr_no);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.ExecuteNonQuery();
                    break;

                case "ICE": branch_id = a = 4;
                    string val4 = "INSERT INTO ECE (Branch_ID,Shift,Year,Enroll_No, Name) values (@branch_id,@shift,@yr,@enr_no,@name)";
                    cmd = new SqlCommand(val4, con);
                    cmd.Parameters.AddWithValue("@branch_id", branch_id);
                    cmd.Parameters.AddWithValue("@shift", shift);
                    cmd.Parameters.AddWithValue("@yr", yr);
                    cmd.Parameters.AddWithValue("@enr_no", enr_no);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.ExecuteNonQuery();
                    break;

                case "IT": branch_id = a =5;
                    string val5 = "INSERT INTO ECE (Branch_ID,Shift,Year,Enroll_No, Name) values (@branch_id,@shift,@yr,@enr_no,@name)";
                    cmd = new SqlCommand(val5, con);
                    cmd.Parameters.AddWithValue("@branch_id", branch_id);
                    cmd.Parameters.AddWithValue("@shift", shift);
                    cmd.Parameters.AddWithValue("@yr", yr);
                    cmd.Parameters.AddWithValue("@enr_no", enr_no);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.ExecuteNonQuery();
                    break;
            }
            string login = "INSERT INTO STUDENT (Name,password,branch_id,year,shift) values (@name,@first_name,@branch_id,@yr,@shift)";
            cmd = new SqlCommand(login, con);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@first_name", first_name);
            cmd.Parameters.AddWithValue("@branch_id", a);
            cmd.Parameters.AddWithValue("@yr", yr);
            cmd.Parameters.AddWithValue("@shift", shift);
            cmd.ExecuteNonQuery();
            if (cont == "y")
                Response.Redirect("~/add_stu_data.aspx");
            con.Close();
        }
       
    }
}