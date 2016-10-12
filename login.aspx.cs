using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        int i;
        checklogin KTUserPass = new checklogin();
        if (TextBox1.Text == "" || TextBox2.Text == "")
            Label1.Text = "Bạn phải nhập vào Username và Password !";
        else
        {
            i = KTUserPass.Kiemtra(TextBox1.Text, TextBox2.Text);
            if (i == 0)
                Label1.Text = "Username và Password không hợp lệ. Vui lòng nhập lại!";
            else
            Session["name"] = TextBox1.Text;
            Response.Redirect("admincp.aspx");
        }
    }
}