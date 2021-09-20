<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="hkexam.Web.WEBMAIL.welcome" %>
<%@ Reference Page="wmLogin.aspx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>168电子邮件系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="../Images/WebMailImages/css.css" rel="stylesheet" type="text/css"/>
</head>
<body bgcolor="#FFFFFF">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="824" valign="top">
        <form id="form1" runat="server">
      <table width="100%" border="0" cellspacing="0" cellpadding="5">
        <tr>
          <td bgcolor="#ECFFFE" class="unnamed1">您好，您的收件箱共有<asp:Label ID="LabRecieve" runat="server" Text="Label"></asp:Label>封邮件，其中<asp:Label
    ID="LabRead" runat="server" Text="Label"></asp:Label>封未读 管理文件夹</td>                               
        </tr>                             
      </table>                             
      <table width="100%" border="0" cellspacing="0" cellpadding="0">                             
        <tr>                             
          <td height="1" bgcolor="#91C8F1" class="unnamed1"></td>                             
        </tr>                             
      </table>                             
      <table width="100%" border="0" cellspacing="0" cellpadding="5">                             
        <tr>                             
          <td class="unnamed1">共有<asp:Label ID="LabNumAll" runat="server" Text="Label"></asp:Label>
              封邮件，<asp:Label
    ID="Label5" runat="server" Text="Label"></asp:Label>封未读，总空间3G：已经使用2K（0.01%）                     
          </td>                             
        </tr>                             
        <tr>                             
          <td class="unnamed1">                             
          </td>                             
        </tr>                             
      </table>                             
      <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">                             
        <tr>                             
          <td height="30" background="../Images/WebMailImages/dot08.gif" class="unnamed1">                             
            <div align="center">文件夹</div></td>                             
          <td background="../Images/WebMailImages/dot08.gif" class="unnamed1"><div align="center">未读邮件</div></td>                             
          <td background="../Images/WebMailImages/dot08.gif" class="unnamed1"><div align="center">总封数</div></td>                             
          <td background="../Images/WebMailImages/dot08.gif" class="unnamed1"><div align="center">空间大小</div></td>                             
          <td background="../Images/WebMailImages/dot08.gif"><p align="center" class="unnamed1">操作</p></td>                             
        </tr>                             
        <tr>                             
          <td height="25" class="unnamed1"><div align="center">收件箱</div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="Label6" runat="server" Text=""></asp:Label></div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="Label7" runat="server" Text=""></asp:Label></div></td>                             
          <td class="unnamed1"><div align="center">                   
              <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
          </div></td>                 
          <td><div align="center" class="unnamed1">清空</div></td>                             
        </tr>                             
        <tr>                             
          <td height="25" class="unnamed1"><div align="center">草稿箱</div></td>                             
          <td class="unnamed1"><div align="center">0</div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="LabModi" runat="server" Text=""></asp:Label></div></td>                             
          <td class="unnamed1"><div align="center">         
              <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
          </div></td>                             
          <td><div align="center" class="unnamed1">清空</div></td>                             
        </tr>                             
        <tr>                             
          <td height="25" class="unnamed1"><div align="center">已发送</div></td>                             
          <td class="unnamed1"><div align="center">0</div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="LabSend" runat="server" Text=""></asp:Label>
              </div></td>                             
          <td class="unnamed1"><div align="center">        
              <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
          </div></td>                             
          <td><div align="center" class="unnamed1">清空</div></td>                             
        </tr>                             
        <tr>                             
          <td height="25" class="unnamed1"><div align="center">已删除</div></td>                             
          <td class="unnamed1"><div align="center">0</div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="LabDelete" runat="server" Text=""></asp:Label></div></td>                             
          <td class="unnamed1"><div align="center">          
              <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
          </div></td>                             
          <td><div align="center" class="unnamed1">清空</div></td>                             
        </tr>                             
        <tr>                             
          <td height="25" class="unnamed1"><div align="center">广告邮件</div></td>                             
          <td class="unnamed1"><div align="center">0</div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="Label12" runat="server"></asp:Label>
              </div></td>                             
          <td class="unnamed1"><div align="center">0K</div></td>                             
          <td><div align="center" class="unnamed1">清空</div></td>                             
        </tr>                             
        <tr>                             
          <td height="25" class="unnamed1"><div align="center">垃圾邮件</div></td>                             
          <td class="unnamed1"><div align="center">0</div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="Label13" runat="server"></asp:Label>
              </div></td>                             
          <td class="unnamed1"><div align="center">0K</div></td>                             
          <td><div align="center" class="unnamed1">清空</div></td>                             
        </tr>                             
      </table>                             
      <table width="100%" border="0" cellspacing="0" cellpadding="0">                             
        <tr>                             
          <td height="30"> 　                             
              <input type="hidden" name="Submit" value="新建文件夹">                             
              <input type="hidden" value="点击进入收件箱" name="B1">                             
</td>                             
        </tr>                             
      </table>                             
        </form>
      </td>                             
    <td width="13"></td>                             
  </tr>                             
</table>                             
</body>                             
</html>