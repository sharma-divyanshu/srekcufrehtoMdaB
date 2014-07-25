using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class edit_atten : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString != null)
        {
            SqlDataSource1.SelectCommand = @"select * from " + Request.QueryString["branch"] + " where year='" + Request.QueryString["year"] + "'and shift='" + Request.QueryString["shift"] + "' and Enroll_No<>999999999 order by Enroll_No";
            
        
        }
        else
            Response.Redirect("~/404.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string instr,shelly;
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Divyanshu\Documents\GitHub\srekcufrehtoMdaB\App_Data\Database.mdf;Integrated Security=True");
        foreach(GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkrow = (row.Cells[5].FindControl("chkbox") as CheckBox);
                if (chkrow.Checked)
                {
                    string name = row.Cells[4].Text;
                    long enr_no = Convert.ToInt64(row.Cells[3].Text);
                    if (Convert.ToInt32(Session["subjectid"]) == 1)
                    {
                        conn.Open();
                        instr = "update " + Request.QueryString["branch"] + " SET att_sub_1 = att_sub_1 + 1 WHERE Name = @name AND Enroll_No=@enr_no";
                        SqlCommand cmd = new SqlCommand(instr, conn);
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@enr_no", enr_no);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    else if (Convert.ToInt32(Session["subjectid"]) == 2)
                    {
                        conn.Open();
                        instr = "update " + Request.QueryString["branch"] + " SET att_sub_2 = att_sub_2 + 1 WHERE Name = @name AND Enroll_No=@enr_no";
                      
                        SqlCommand cmd = new SqlCommand(instr, conn);
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@enr_no", enr_no);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    else if (Convert.ToInt32(Session["subjectid"]) == 3)
                    {
                        conn.Open();
                        instr = "update " + Request.QueryString["branch"] + " SET att_sub_3 = att_sub_3 + 1 WHERE Name = @name AND Enroll_No=@enr_no";
                        SqlCommand cmd = new SqlCommand(instr, conn);
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@enr_no", enr_no);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    else if (Convert.ToInt32(Session["subjectid"]) == 4)
                    {
                        conn.Open();
                        instr = "update " + Request.QueryString["branch"] + " SET att_sub_4 = att_sub_4 + 1 WHERE Name = @name AND Enroll_No=@enr_no";
                        SqlCommand cmd = new SqlCommand(instr, conn);
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@enr_no", enr_no);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    else if (Convert.ToInt32(Session["subjectid"]) == 5)
                    {
                        conn.Open();
                        instr = "update " + Request.QueryString["branch"] + " SET att_sub_5 = att_sub_5 + 1 WHERE Name = @name AND Enroll_No=@enr_no";
                        SqlCommand cmd = new SqlCommand(instr, conn);
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@enr_no", enr_no);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                    else if (Convert.ToInt32(Session["subjectid"]) == 6)
                    {
                        conn.Open();
                        instr = "update " + Request.QueryString["branch"] + " SET att_sub_6 = att_sub_6 + 1 WHERE Name = @name AND Enroll_No=@enr_no";
                        SqlCommand cmd = new SqlCommand(instr, conn);
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@enr_no", enr_no);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
        }
        if(Convert.ToInt32(Session["subjecid"])==1)
        {
            conn.Open();
            long eo = 999999999;
            shelly = "update " + Request.QueryString["branch"] + " SET att_sub_1 = att_sub_1 + 1 WHERE Enroll_No=999999999";
            SqlCommand cmd = new SqlCommand(shelly, conn);
            cmd.Parameters.AddWithValue("@e", eo);
            cmd.ExecuteNonQuery();
            conn.Close(); 
        }

    }
}