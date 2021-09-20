<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactList.aspx.cs" Inherits="hkexam.Web.WEBMAIL.ContactList" %>
<%@ Register src="SqlComGrid.ascx" tagname="SqlComGrid" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
     <script type="text/javascript" src="../js/public.js"></script>
     <script type="text/javascript" src="../js/jquery-1.3.2.js"></script>
     <script type="text/javascript">
       $(document).ready(function() {
           $("#BtnDel").bind("click", function() { getSelectValue('Delete.aspx', 'contact'); });
           $("#addRecords").bind("click", function() { GoToUrl('AddContact.aspx'); });
       })
     </script>
</head>
<body>
    <form id="form1" runat="server">
       <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="top">
                    <table width="99%" border="0" align="left" cellpadding="0" cellspacing="0">
                        <tr>
                            <td height="15">&nbsp;</td><td height="15">&nbsp;</td>
                        </tr>
                        <tr>
                            <td height="15" width="10">&nbsp;</td>
                            <td height="15">
                                <table width="926" border="0" align="left" cellpadding="0" cellspacing="0">
                                    <tr>
                                      <td><uc2:SqlComGrid ID="SqlComGrid1" runat="server" /></td>                                       
                                    </tr>
                                    
                                </table>
                            </td>
                        </tr>
                        <td></td>
                            <td>
                                <table style="width:20%;">
                                    <tr>
                                        <td align="right"><input id="addRecords" type="button" value="添加" class="button" /> &nbsp;&nbsp;&nbsp; <input id="BtnDel" type="button" class="button" value="删除" /></td>
                                    </tr>
                                </table>
                        </td>
                    </table>
                </td>
            </tr>
        </table>
        <input id="hidNo" type="hidden" runat="server" />
    </form>
</body>
</html>
