<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="hkexam.Web.WEBMAIL.welcome" %>
<%@ Reference Page="wmLogin.aspx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>168�����ʼ�ϵͳ</title>
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
          <td bgcolor="#ECFFFE" class="unnamed1">���ã������ռ��乲��<asp:Label ID="LabRecieve" runat="server" Text="Label"></asp:Label>���ʼ�������<asp:Label
    ID="LabRead" runat="server" Text="Label"></asp:Label>��δ�� �����ļ���</td>                               
        </tr>                             
      </table>                             
      <table width="100%" border="0" cellspacing="0" cellpadding="0">                             
        <tr>                             
          <td height="1" bgcolor="#91C8F1" class="unnamed1"></td>                             
        </tr>                             
      </table>                             
      <table width="100%" border="0" cellspacing="0" cellpadding="5">                             
        <tr>                             
          <td class="unnamed1">����<asp:Label ID="LabNumAll" runat="server" Text="Label"></asp:Label>
              ���ʼ���<asp:Label
    ID="Label5" runat="server" Text="Label"></asp:Label>��δ�����ܿռ�3G���Ѿ�ʹ��2K��0.01%��                     
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
            <div align="center">�ļ���</div></td>                             
          <td background="../Images/WebMailImages/dot08.gif" class="unnamed1"><div align="center">δ���ʼ�</div></td>                             
          <td background="../Images/WebMailImages/dot08.gif" class="unnamed1"><div align="center">�ܷ���</div></td>                             
          <td background="../Images/WebMailImages/dot08.gif" class="unnamed1"><div align="center">�ռ��С</div></td>                             
          <td background="../Images/WebMailImages/dot08.gif"><p align="center" class="unnamed1">����</p></td>                             
        </tr>                             
        <tr>                             
          <td height="25" class="unnamed1"><div align="center">�ռ���</div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="Label6" runat="server" Text=""></asp:Label></div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="Label7" runat="server" Text=""></asp:Label></div></td>                             
          <td class="unnamed1"><div align="center">                   
              <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
          </div></td>                 
          <td><div align="center" class="unnamed1">���</div></td>                             
        </tr>                             
        <tr>                             
          <td height="25" class="unnamed1"><div align="center">�ݸ���</div></td>                             
          <td class="unnamed1"><div align="center">0</div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="LabModi" runat="server" Text=""></asp:Label></div></td>                             
          <td class="unnamed1"><div align="center">         
              <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
          </div></td>                             
          <td><div align="center" class="unnamed1">���</div></td>                             
        </tr>                             
        <tr>                             
          <td height="25" class="unnamed1"><div align="center">�ѷ���</div></td>                             
          <td class="unnamed1"><div align="center">0</div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="LabSend" runat="server" Text=""></asp:Label>
              </div></td>                             
          <td class="unnamed1"><div align="center">        
              <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
          </div></td>                             
          <td><div align="center" class="unnamed1">���</div></td>                             
        </tr>                             
        <tr>                             
          <td height="25" class="unnamed1"><div align="center">��ɾ��</div></td>                             
          <td class="unnamed1"><div align="center">0</div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="LabDelete" runat="server" Text=""></asp:Label></div></td>                             
          <td class="unnamed1"><div align="center">          
              <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
          </div></td>                             
          <td><div align="center" class="unnamed1">���</div></td>                             
        </tr>                             
        <tr>                             
          <td height="25" class="unnamed1"><div align="center">����ʼ�</div></td>                             
          <td class="unnamed1"><div align="center">0</div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="Label12" runat="server"></asp:Label>
              </div></td>                             
          <td class="unnamed1"><div align="center">0K</div></td>                             
          <td><div align="center" class="unnamed1">���</div></td>                             
        </tr>                             
        <tr>                             
          <td height="25" class="unnamed1"><div align="center">�����ʼ�</div></td>                             
          <td class="unnamed1"><div align="center">0</div></td>                             
          <td class="unnamed1"><div align="center">
              <asp:Label ID="Label13" runat="server"></asp:Label>
              </div></td>                             
          <td class="unnamed1"><div align="center">0K</div></td>                             
          <td><div align="center" class="unnamed1">���</div></td>                             
        </tr>                             
      </table>                             
      <table width="100%" border="0" cellspacing="0" cellpadding="0">                             
        <tr>                             
          <td height="30"> ��                             
              <input type="hidden" name="Submit" value="�½��ļ���">                             
              <input type="hidden" value="��������ռ���" name="B1">                             
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