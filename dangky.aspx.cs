using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dangky : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=ADMINSTRATOR;Initial Catalog=QLBH2;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton2.Visible = false;
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        string sql = "insert into login (username,pw,email) values('" + TextBox1.Text+"','"+TextBox2.Text+"','"+ TextBox3.Text + "')";
        cmd.Connection = conn;
        cmd.CommandText = sql;
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('Chắc chắn bạn đúng ?')</script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
}