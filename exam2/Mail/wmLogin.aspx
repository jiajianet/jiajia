<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wmLogin.aspx.cs" Inherits="hkexam.Web.WEBMAIL.wmLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<style type="text/css">
body {
	background-color:#D8EDFE;
}
</style>
<link href="../Images/WebMailImages/css.css" rel="stylesheet" type="text/css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
<table width="100%">
  <tr>
    <td  align="center">
      <table width="643" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#205486">
        <tr>
          <td><table width="643" border="0" cellpadding="0" cellspacing="5" bgcolor="#D8EDFE">
              <tr>
                <td><table width="643" border="0" cellpadding="0" cellspacing="1" bgcolor="#205486">
                    <tr>
                      <td><table width="643" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td colspan="2"><img src="../Images/WebMailImages/mail_03.gif" width="643" height="163" alt=""/></td>
                          </tr>
                          <tr>
                            <td width="237"><img src="../Images/WebMailImages/mail_05.gif" width="237" height="240" alt=""/></td>
                            <td width="406" background="../Images/WebMailImages/mail_06.gif">
                            <table width="65%"  border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td height="30"/><div align="center"><span class="unnamed2">用户名：</span>
                                      <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
                                </tr>
                                <tr>
                                  <td height="30"><div align="center"><span class="unnamed2">密　码：</span>
                                      <asp:TextBox ID="TxtPwd" runat="server"></asp:TextBox>
                                  </div></td>
                                </tr>
                                <tr>
                                  <td height="25"><div align="center" class="unnamed2">[<a href="UserList.aspx">申请邮箱</a>] 
                                      　　[忘记密码] </div></td>
                                </tr>
                                <tr>
                                  <td height="25"><div align="center">
                                      <asp:Button ID="BLogin" runat="server" Text="登录" Height="26px" 
                                          onclick="BLogin_Click" />
                                  </div></td>
                                </tr>
                            </table>
                            </td>
                          </tr>
                      </table></td>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table>      </td>
  </tr></table>
    </form>
</body>
</html>
