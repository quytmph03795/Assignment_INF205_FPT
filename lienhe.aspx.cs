using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lienhe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton2.Visible = false;
        if (!string.IsNullOrEmpty(Session["name"] as string))
        {
            lb_hienthi.Text = Session["name"].ToString();
            LinkButton1.Visible = false;
            LinkButton4.Visible = false;
            LinkButton2.Visible = true;
            LinkButton3.Visible = true;
        }
        else
        {
            lb_hienthi.Text = "Khách";
            Label2.Text = "Hi! Chào ";
            LinkButton3.Visible = false;
            Label3.Visible = false;
            LinkButton4.Visible = true;
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Remove("name");
        Session["name"] = null;
        System.Threading.Thread.Sleep(3000);
        Response.Redirect("index.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {

    }
}