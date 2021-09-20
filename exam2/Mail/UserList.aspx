<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="hkexam.Web.WEBMAIL.UserList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 199px;
        }
    </style>
     <script type="text/javascript">
        function back() {
            window.location.href("/WEBMAIL/wmLogin.aspx?stuNo=" +document.getElementById('frmTesterNo').value + "&qstNo=" +document.getElementById('frmWsNo').value);
        }
    </script>
</head>
    
   <body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
   <form id="form1" runat="server">
        <table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="1027" background="../Images/WebMailImages/mail2_02.gif"><img src="../Images/WebMailImages/mail2_01.gif" width="748" height="55" alt=""/></td>
            <td width="13"><img src="../Images/WebMailImages/mail2_03.gif" width="13" height="55" alt=""/></td>
          </tr>
        </table>

        <table width="100%"  border="0" cellspacing="0" cellpadding="0" height="516">
          <tr>
            <td width="17" height="516"></td>
            <td valign="top" background="../Images/WebMailImages/mail2_05.gif" height="516" class="style1">
                &nbsp;</td>
            <td width="9" bgcolor="#91C8F1" height="516">　</td>
            <td width="824" valign="top" height="516">
          <p align="center"><%--<a href="wmReg.htm">--%>
                <%--<asp:ListBox ID="ListBox1" runat="server" Height="180px" Width="450px"></asp:ListBox>--%>
              <asp:Literal ID="Literal1" runat="server"></asp:Literal> 
              </p>
                <p align="center"><a href="wmReg.htm">申请邮箱</a>&nbsp;<a href="#" onclick="back()">返回</a></p>
                <p align="center">&nbsp;</p>   
                  </td>
                </tr>
        </table>
   <input name="frmLocalIP" type="hidden" value="" />
   <input id="frmWsNo" type="hidden"  runat="server"/>
   <input id="frmTesterNo" type="hidden" runat="server" />        
   <input name="kaohao" id="kaohao"  type="hidden" value="210601165001" />
    </form>
    </body>
</html>

