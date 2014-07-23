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
        string branch = DropDownList1.Text, shift = DropDownList3.Text;
        int yr = Convert.ToInt32(DropDownList2.Text);
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hph\Documents\Visual Studio 2013\WebSites\srekcufrehtoMdaB\App_Data\Database.mdf;Integrated Security=True");
        conn.Open();
        GridView1.DataBind();
        if (branch == "CSE")
        {
            SqlCommand com1 = new SqlCommand(@"select * from CSE", conn);
            r = com1.ExecuteReader();
        }
        else if (branch == "ECE")
        {
            SqlCommand com1 = new SqlCommand(@"select * from ECE", conn);
            r = com1.ExecuteReader();
        }
        else if (branch == "EEE")
        {
            SqlCommand com1 = new SqlCommand(@"select * from EEE", conn);
            r = com1.ExecuteReader();
        }
        else if (branch == "IT")
        {
            SqlCommand com1 = new SqlCommand(@"select * from IT", conn);
            r = com1.ExecuteReader();
        }
        else if (branch == "ICE")
        {
            SqlCommand com1 = new SqlCommand(@"select * from ICE", conn);
            r = com1.ExecuteReader();
        }
        while (r.Read())
        {
            Response.Write("Hello World!!\n\n");
            Response.Write(String.Format("{0}\n{1}\n{2}\n{3}\n{4}\n{5}", r[0], r[1], r[2], r[3], r[4], r[5]));
        }
        conn.Close();
    }
}