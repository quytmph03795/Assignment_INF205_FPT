using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admincp : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=ADMINSTRATOR;Initial Catalog=QLBH2;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

 	if (!IsPostBack)
        {

        LinkButton2.Visible = false;
        if (!String.IsNullOrEmpty(Session["name"].ToString()))
        {
            lb_hienthi.Text = Session["name"].ToString();
            LinkButton1.Visible = false;
            LinkButton2.Visible = true;
        }
        else
        {
            lb_hienthi.Text = "Error";
            Label1.Visible = false;
            Label2.Visible = false;
            System.Threading.Thread.Sleep(5000);
            Response.Redirect("index.aspx");
        }
        btn_them.Visible = false;
        btn_sua.Visible = false;
        btn_xoa.Visible = false;
        TextBox1.Visible = false;
        TextBox2.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        TextBox5.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = true;
		Droploaisanpham.Visible = false;
        GridView1.Visible = false;
    }
 }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Remove("name");
        Session["name"] = null;
        System.Threading.Thread.Sleep(3000);
        Response.Redirect("index.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        btn_them.Visible = true;
        btn_sua.Visible = true;
        btn_xoa.Visible = true;
        TextBox1.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible = true;
        TextBox4.Visible = true;
        TextBox5.Visible = true;
		Droploaisanpham.Visible = true;
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        Label8.Visible = true;
        Label9.Visible = false;
       
        SqlDataAdapter ad = new SqlDataAdapter("select MaSP,TenSP,Prince,DVT,SoLuong,LoaiSanPham.TenLSP as TenLSP from SanPham,LoaiSanPham where SanPham.TenLSP=LoaiSanPham.MaLSP", conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
		loaddroploaisanpham();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btn_them_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        string sql = "insert into SanPham values('" + TextBox1.Text
            + "',N'" + TextBox2.Text + "','" + TextBox3.Text + "',N'"
            + TextBox4.Text + "','" + TextBox5.Text + "','" + Droploaisanpham.SelectedValue.ToString() + "')";
        cmd.Connection = conn;
        cmd.CommandText = sql;
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('Chắc chắn bạn đúng ?')</script>");
        Label9.Text = "Thêm thành công!";

    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label9.Visible = false;
        GridView1.Visible = true;
        SqlDataAdapter ad = new SqlDataAdapter("select * from KhachHang", conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
		btn_them.Visible = false;
				btn_sua.Visible = false;
				btn_xoa.Visible = false;
				TextBox1.Visible = false;
				TextBox2.Visible = false;
				TextBox3.Visible = false;
				TextBox4.Visible = false;
				TextBox5.Visible = false;
				Label3.Visible = false;
				Label4.Visible = false;
				Label5.Visible = false;
				Label6.Visible = false;
				Label7.Visible = false;
				Label8.Visible = false;
				Label9.Visible = false;
				Droploaisanpham.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label9.Visible = false;
        GridView1.Visible = true;
        SqlDataAdapter ad = new SqlDataAdapter("Select MaHD,Ngay,TriGia, KhachHang.TenKH as TenKH from HoaDon, KhachHang where KhachHang.MaKH = HoaDon.MaKH", conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
btn_them.Visible = false;
        btn_sua.Visible = false;
        btn_xoa.Visible = false;
        TextBox1.Visible = false;
        TextBox2.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        TextBox5.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
		Droploaisanpham.Visible = false;
    }
	void loaddroploaisanpham()
    {
        SqlDataAdapter ad = new SqlDataAdapter("select* from LoaiSanPham", conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        Droploaisanpham.DataSource = ds;
        Droploaisanpham.DataBind();
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        int row = GridView1.SelectedIndex;
        conn.Open();
        string sql = "Select * from SanPham";
        SqlDataAdapter da = new SqlDataAdapter(sql, conn);
        da.Fill(dt);
        conn.Close();
        TextBox1.Text = dt.Rows[row][0].ToString();
        TextBox2.Text = dt.Rows[row][1].ToString();
        TextBox3.Text = dt.Rows[row][2].ToString();
        TextBox4.Text = dt.Rows[row][3].ToString();
        TextBox5.Text = dt.Rows[row][4].ToString();
        Droploaisanpham.SelectedValue= dt.Rows[row][5].ToString();
    }

    protected void btn_sua_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        string sql = "Update SanPham set TenSP=N'"+TextBox2.Text+ "',Prince='"+TextBox3.Text+ "',DVT=N'"+TextBox4.Text+ "',SoLuong='"+TextBox5.Text+ "',TenLSP='"+Droploaisanpham.SelectedValue.ToString()+ "' where MaSP='"+TextBox1.Text+"'";
        cmd.Connection = conn;
        cmd.CommandText = sql;
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('Chắc chắn bạn đúng ?')</script>");
        Label9.Text = "Sửa thành công!";
    }

    protected void btn_xoa_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        string sql = "Delete SanPham where MaSP='"+TextBox1.Text+"'";
        cmd.Connection = conn;
        cmd.CommandText = sql;
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script>alert('Chắc chắn bạn đúng ?')</script>");
        Label9.Text = "Xóa thành công!";
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        btn_them.Visible = false;
        btn_sua.Visible = false;
        btn_xoa.Visible = false;
        TextBox1.Visible = false;
        TextBox2.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        TextBox5.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
		Droploaisanpham.Visible = false;
    }
}