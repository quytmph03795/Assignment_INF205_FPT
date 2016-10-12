<%@ Page Language="C#" AutoEventWireup="true" CodeFile="huongdan.aspx.cs" Inherits="huongdan" %>

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
        <div id="bodycenter" style="width:100%; height:500px;">
            <br />
            <div id="ssname" style="width:100%;">
                       <div id="ssname1" style="float:right;">
                    <asp:Label ID="Label2" runat="server" Text="Chào mừng bạn "></asp:Label>
                    <asp:Label ID="lb_hienthi" runat="server" Text="a " CssClass="ssnamecheck"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="đã quay trở lại."></asp:Label>
                        </div>
                       <asp:LinkButton ID="LinkButton3" runat="server" CssClass="textlabel1" ForeColor="Red" PostBackUrl="~/admincp.aspx">Dashboard Control</asp:LinkButton>
             </div><br />
            <center>
            
                
                <asp:Label ID="Label1" runat="server" CssClass="textlabel" Text="Đây là Page Hướng Dẫn Thanh Toán"></asp:Label>
            
                
            </center>
            <br />
            <br />
        
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


