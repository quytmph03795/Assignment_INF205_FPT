<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admincp.aspx.cs" Inherits="admincp" %>

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
        .ssnamecheck{
            color:red;
            font-weight: bold;
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
        #menu{
            -moz-border-radius-topleft:10px;
            -webkit-border-top-left-radius:10px;
            -moz-border-radius-topright:10px;
            -webkit-border-top-right-radius:10px;
            width:100%;
            height:40px;
            background-color:#101017;
            color:white;
            text-align:center;
            font-family:"Open Sans", Arial, sans-serif;
        }
        .buttoncontrol{
            font-family:"Open Sans", Arial, sans-serif;
            background-color:#23232e;
            color:white;
        }
        .them {
            font-family: 16px "Open Sans", Arial, sans-serif;
            color: red;
            text-align:center;
            font-weight:bold;
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
                            <!--<a id="offname" href="login.aspx">LOGIN ADMIN</a>-->
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/login.aspx" ForeColor="White">ĐĂNG NHẬP</asp:LinkButton>
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
                    <asp:Label ID="Label1" runat="server" Text="Chào mừng bạn "></asp:Label>
                    <asp:Label ID="lb_hienthi" runat="server" Text="a " CssClass="ssnamecheck"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="đã quay trở lại."></asp:Label>
                        </div>
                </div>
            <br />
            <br />
            <div id="showdata" style="width:100%; margin:auto;">
                <div id="menucontrol" style="float:left; width:20%;">
                    <div id="menu">
                        
                        <table border="0" width="100%" height="100%">
                            <tr>
                                <td><center>Menu Control</center></td>
                            </tr>
                        </table>

                    </div>
                    <div id="control">
                        <asp:Button ID="Button1" runat="server" Text="SẢN PHẨM" Width="100%" Height="30px" BorderStyle="None" CssClass="buttoncontrol" OnClick="Button1_Click" /><br />
                        <div id="spacepx" style="height:1px;"></div>
                        <asp:Button ID="Button2" runat="server" Text="KHÁCH HÀNG" Width="100%" Height="30px" BorderStyle="None" CssClass="buttoncontrol" OnClick="Button2_Click" /><br />
                        <div id="spacepx" style="height:1px;"></div>
                        <asp:Button ID="Button3" runat="server" Text="HÓA ĐƠN" Width="100%" Height="30px" BorderStyle="None" CssClass="buttoncontrol" OnClick="Button3_Click" /><br />
                        <div id="spacepx" style="height:1px;"></div>
                        <asp:Button ID="Button4" runat="server" Text="SEARCH" Width="100%" Height="30px" BorderStyle="None" CssClass="buttoncontrol" OnClick="Button4_Click" /><br />
                    </div>
                </div>
                <div id="hienthidata" style="float:right; width:75%;">
                    <asp:GridView ID="GridView1" runat="server" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:ButtonField CommandName="Select" Text="Chọn" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:Label ID="Label9" runat="server" CssClass="them"></asp:Label>
                    <br />
                    <table border="0">
                        <tr>
                            <td><asp:Label ID="Label3" runat="server" Text="Mã sản phẩm:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            <td></td>
                            <td><asp:Label ID="Label4" runat="server" Text="Tên Sản Phẩm:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label5" runat="server" Text="Giá:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                            <td></td>
                            <td><asp:Label ID="Label6" runat="server" Text="Đơn vị tính:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label7" runat="server" Text="Số lượng:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                            <td></td>
                            <td><asp:Label ID="Label8" runat="server" Text="Loại sản phẩm:"></asp:Label></td>
                            <td><asp:DropDownList ID="Droploaisanpham" runat="server" DataTextField="TenLSP" DataValueField="MaLSP"></asp:DropDownList></td>
                        </tr>
                    </table>
                    <br />
                    <table border="0" style="text-align:center;">
                        <tr>
                            <td style="width:100px;"><asp:Button ID="btn_them" runat="server" Text="THÊM" Width="70px" OnClick="btn_them_Click" /></td>
                            <td style="width:100px;"><asp:Button ID="btn_sua" runat="server" Text="SỬA" Width="70px" OnClick="btn_sua_Click" /></td>
                            <td style="width:100px;"><asp:Button ID="btn_xoa" runat="server" Text="XÓA" Width="70px" OnClick="btn_xoa_Click" /></td>
                        </tr>
                    </table>

                </div>
            </div>
                
        
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

