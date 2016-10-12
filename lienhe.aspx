<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lienhe.aspx.cs" Inherits="lienhe" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hệ Thống Bán Hàng by Anhdtph01051</title>

    <style type="text/css">
        .auto-style1 {
            width: 120px;   
        }
        .textlabel {
            font-size:50px;
        }
        .textlabel1{
            font: 18px "Open Sans", Arial, sans-serif;
            text-transform: uppercase;
            border-left: 3px solid #e54e53;
            padding-left: 14px;
            line-height: 2;
            margin-bottom: 28px;
        }
        .textlienhe{
            font: 18px "Open Sans", Arial, sans-serif;
            text-transform: uppercase;
            border-left: 3px solid #e54e53;
            padding-left: 14px;
            line-height: 2;
            margin-bottom: 28px;
            color:#19232d;
        }
        body{
            margin:0;
            padding:0;
            font-family: 'Open Sans',Arial,sans-serif
            
        }
        #footer{
            width:100%;
            height:150px;
            background-color:#19232d;
            color:#d7dade;
            font-family:inherit;
        }
        .auto-style3 {
            height: -15px;
        }
        .styletext{
            color:#19232d;
        }
        .stylelienhe{
                background: #f9f9f9;
                border: 1px solid #d9d9d9;
                border-left: 0;
                border-right: 0;
                line-height: 32px;
                color: #19232d;
                font-size: 13px;
                font-family: "Open Sans",Arial,sans-serif;
                font-weight: 600;
                text-transform: uppercase;
                padding: 0 14px;
                width:700px;
        }
        input, textarea, select{
            background: #f9f9f9;
            border: 1px solid #d9d9d9;
            padding: 7px 14px;
            outline: 0;
            font-size: 13px;
            color: #a6a6a6;
            max-width: 100%;
        }
        .auto-style4 {
            width: 700px;
        }
        a:link{
            color: blue;
            text-decoration: none;
        }
 
        a:visited{
            color: white;
            text-decoration: underline;
        }
 
        a:hover{
            color: yellow;
            text-decoration: underline;
        }
 
        a:active{
            color: white;
            text-decoration: none;
        }
        .ssnamecheck{
            color:red;
            font-weight: bold;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="walper" style="width:1027px;height:auto;margin:auto;">
        <div id="banner" style="height:300px;">
            <img src="images/trangbe.com.jpg" />
        </div>
        <div id="menutop">

             <table border="0" style="background-color:#fc4a4a; width:1027px;height:40px;">
                <tr>
                    <td class="auto-style1">
                        <center>
                        <a href="index.aspx">TRANG CHỦ</a>
                        </center>
                    </td>
                    <td class="auto-style1">
                        <center>
                            <a href="gioithieu.aspx">GIỚI THIỆU</a>
                        </center>
                    </td>
                    <td class="auto-style1">
                        <center>
                            <a href="sanpham.aspx">SẢN PHẨM</a>
                        </center>
                    </td>
                    <td class="auto-style1">
                        <center>
                            <a href="huongdan.aspx">HƯỚNG DẪN</a>
                        </center>
                    </td>
                    <td class="auto-style1">
                        <center>
                            <a href="lienhe.aspx">LIÊN HỆ</a>
                        </center>
                    </td>
                    <td class="auto-style1">
                        <center>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/login.aspx" ForeColor="White" OnClick="LinkButton1_Click1" Font-Size="Small">ĐĂNG NHẬP</asp:LinkButton>
                            | <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/dangky.aspx" ForeColor="White" OnClick="LinkButton4_Click" Font-Size="Small">ĐĂNG KÝ</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" OnClick="LinkButton2_Click">THOÁT</asp:LinkButton>
                        </center>
                    </td>
                </tr>
            </table>

        </div>
        <div id="bodycenter" style="width:100%; height:1000px;">
            <br />
            <div id="ssname" style="width:100%;">
                       <div id="ssname1" style="float:right;">
                    <asp:Label ID="Label2" runat="server" Text="Chào mừng bạn "></asp:Label>
                    <asp:Label ID="lb_hienthi" runat="server" Text="a " CssClass="ssnamecheck"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="đã quay trở lại."></asp:Label>
                        </div>
                       <asp:LinkButton ID="LinkButton3" runat="server" CssClass="textlabel1" ForeColor="Red" PostBackUrl="~/admincp.aspx">Dashboard Control</asp:LinkButton>
             </div><br />

                <asp:Label ID="lb_lienhe" runat="server" Text="THÔNG TIN LIÊN HỆ" CssClass="textlienhe"></asp:Label>
            <br />
            <br />
            <iframe src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d3724.5433823787225!2d105.80031531450442!3d21.01093318600804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e0!4m3!3m2!1d21.011913399999997!2d105.8012018!4m5!1s0x3135aca044fd294d%3A0xa939ea6d75db62a3!2zMTM2IEhvw6BuZyBOZ8OibiwgVHJ1bmcgSMOyYSBOaMOibiBDaMOtbmgsIFRydW5nIEhvw6AsIFRoYW5oIFh1w6JuLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!3m2!1d21.009957399999998!2d105.8038062!5e0!3m2!1svi!2s!4v1475604008326" width="700" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
            <br />
            <p class="styletext">Mọi thông tin liên hệ tới anhdtph01051@fpt.edu.vn để được trợ giúp tối ưu nhất.</p>
            <br />
            <div class="stylelienhe">LIÊN HỆ</div>
            <br />
            <input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Tên của bạn">
            <br />
            <br />
            <input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="Email của bạn">
            <br />
            <br />
            <input type="tel" name="phone" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-tel wpcf7-validates-as-required wpcf7-validates-as-tel" aria-required="true" aria-invalid="false" placeholder="Số điện thoại">
            <br />
            <br />
            <input type="text" name="your-subject" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Tiêu đề">
            <br />
            <br />
            <textarea name="your-message" rows="10" class="auto-style4" aria-invalid="false" placeholder="Nội dung"></textarea>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="GỬI" Width="100px" OnClientClick="alert (&quot;Hình như gửi được rồi đó! Cảm ơn bạn.&quot;);" />
        </div>
            
        </div>
      <div id="footer">
            <div id="textfoter" style="width:50%; margin-top:10px; margin-left:10px; float:left;">
                <h3>Thông Tin</h3>
                <hr class="auto-style3" />
                <font size="5px">TRANGBE.<font color="#fc4a4a">COM</font></font><br />
                Address: 136 Hoang Ngan - Ha Noi - Viet Nam.<br />
                Phone Call: 0987678999 (Ms.Trang)
            </div>
            <div id="textfoter1" style="width:45%; margin-top:10px; margin-right:10px; float:right;">
                    <h3>Mạng Xã Hội</h3>
                <hr class="auto-style3" />
                <center>
                <table>
                    <tr>
                        <td><img src="images/fb-icon.png" /></td>
                        <td></td>
                        <td><img src="images/tw-icon.png" /></td>
                        <td></td>
                        <td><img src="images/gp-icon.png" /></td>
                    </tr>
                </table>
                </center>
            </div>
    </div>
    </form>
</body>
</html>

