<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check login by Anhdtph01051</title>
    <style type="text/css">
        body {
            background-color:#101017;
        }
        #toplogin{
            background-color:#23232e;
            height:47px;
            -moz-border-radius-topleft:10px;
            -webkit-border-top-left-radius:10px;
            -moz-border-radius-topright:10px;
            -webkit-border-top-right-radius:10px;
        }
        #checklogin{
            background-color:#2b2b36;
            height:252px;
        }
        .buttonlogin{
            height:65px;
            width:100%;
            -moz-border-radius-bottomleft:10px;
            -webkit-border-bottom-left-radius:10px;
            -moz-border-radius-bottomright:10px;
            -webkit-border-bottom-right-radius:10px;
            background-color:#3faa53;
            text-align:center;
            color:white;
            font: 18px "Open Sans", Arial, sans-serif;
        }
        #textlogin{
            color:#5d5b56;
            font: 18px "Open Sans", Arial, sans-serif;
            margin-left:10px;
            margin-top:12px;
        }
        #checkgreen{
            margin-right:10px;
            margin-top:12px;
        }
        .container {
            display: table;

        }
        .column {
            display: table-cell;

            border-radius: 50%;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
        }
        .auto-style1 {
            width: 188px;
        }
        .textuser{
            color:red;
            text-align:center;
            font: 18px "Open Sans", Arial, sans-serif;
            border-bottom: 2px solid #ff0000;
            
        }
        .textwrong{
            color:red;
            font: 14px "Open Sans", Arial, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="formlogin" style="width:330px;height:360px;margin:auto;margin-top:150px;">
            <div id="toplogin">
                <div id="textlogin" style="float:left;">
                    Đăng nhập
                </div>
                <div id="checkgreen" style="float:right;">
                    <div class="container">
                        <div class="column" style="width:15px;height:15px;background-color:#f1c85f;"></div>
                        <div class="column" style="width:5px;height:5px;"></div>
                        <div class="column" style="width:15px;height:15px;background-color:#ea569a;"></div>
                        <div class="column" style="width:5px;height:5px;"></div>
                        <div class="column" style="width:15px;height:15px;background-color:#6756ea;"></div>
                    </div>
                </div>
            </div>
            <div id="checklogin">
                <div id="avatar" style="width:80px;height:80px;margin:auto;">
                    <img src="images/avt.png" width="80px" height="80px" style="margin-top:20px;" />
                </div>
                <div id="texboxlogin">
                    <center>
                    <table border="0" style="margin-top:40px;text-align:center;">
                        <tr>
                            <td style="background-image: url(./images/users-icon.png);background-position:center; background-repeat: no-repeat; background-size: 25px 25px; width: 25px; height: 25px;"></td>
                            <td style="width:5px;"></td>
                            <td class="auto-style1"><div style="border-bottom: 1px solid #3ea751;"><asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="25px" BorderStyle="None" BackColor="Transparent" CssClass="textuser"></asp:TextBox></div></td>
                        </tr>
                        <tr>
                            <td style="height:5px"></td>
                            <td></td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td style="background-image: url(./images/pass.png);background-position:center; background-repeat: no-repeat; background-size: 25px 25px; width: 25px; height: 25px;"></td>
                            <td></td>
                            <td class="auto-style1"><div style="border-bottom: 1px solid #3ea751;"><asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="25px" BorderStyle="None" BackColor="Transparent" TextMode="Password" CssClass="textuser"></asp:TextBox></div></td>
                        </tr>
                    </table>
                        <div id="wrongpass" style="margin-top:17px;">
                            <asp:Label ID="Label1" runat="server" CssClass="textwrong"></asp:Label>
                        </div>
                    </center>
                </div>
            </div>
            <div id="buttoncheck">
                <asp:Button ID="Button1" runat="server" Text="Login" Height="58px" Width="330px" CssClass="buttonlogin" BorderStyle="None" OnClick="Button1_Click1" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
