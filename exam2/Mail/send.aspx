<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="send.aspx.cs" Inherits="hkexam.Web.WEBMAIL.send" %>
<%@ Register src="SqlComGrid.ascx" tagname="SqlComGrid" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <script type="text/javascript" src="../js/public.js"></script>
 <script type="text/javascript" src="../js/jquery-1.3.2.js"></script>
   <script type="text/javascript">
       $(document).ready(function() {
             $("#BtnDel").bind("click", function() { getSelectValue('Delete.aspx', 'webmail'); });
           
       })
    </script>
    <script type="text/javascript">
        function change() {
            var str = document.getElementById("FolderMoveTo").value;
                var chkvalue = "";
                var values = "";
                $("input[name=chkItem][checked]").each(function() {
                    var isCheck = this.value + ",";
                    values += isCheck;
                });
                if (values.length > 1) {
                    if (confirm("您确认要移动所选的记录吗？")) {
                        window.location.href = "MoveList.aspx?Ids=" + values + "&str=" + str;
                    }
                }
                else {
                    alert("请选择您所要移动的记录！");
                }
        }
    </script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../style/mypm_style.css"/>
   <link rel="stylesheet" type="text/css" href="../style/TabCss.css"  />
   <link rel="stylesheet" type="text/css" href="../style/pager.css"  />

</head>
<body>
  <form id="form1" runat="server">
      <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="top">
                    <table width="680" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td height="15">&nbsp;</td><td height="15">&nbsp;</td>
                        </tr>
                        <tr>
                            <td height="15" width="10">&nbsp;</td>
                            <td height="15">
                                <table width="680" border="0" align="left" cellpadding="0" cellspacing="0">
                                    <tr>
                                      <td><uc2:SqlComGrid ID="SqlComGrid1" runat="server" /></td>                                       
                                    </tr>
                                </table>
                            </td>
                        </tr>
                            <td></td>
                            <td bordercolor="#589cdb" bgcolor="#589cdb">
                                <table style="width:100%;">
                                    <tr>
                                        <td>&nbsp;移动到：<select size="1" id="FolderMoveTo" >
                           <% if (hidNo.Value=="1") %>                
                                      <option value="2">草稿箱</option>
                                      <option value="3">已发送</option>
                                      <option value="4">已删除</option>
                                      <option value="6">广告邮件</option>
                                      <option value="7">垃圾邮件</option>
                           <% if(hidNo.Value=="2") %>          
                                      <option value="1">收件箱</option>
                                      <option value="3">已发送</option>
                                      <option value="4">已删除</option>
                                       <option value="6">广告邮件</option>
                                      <option value="7">垃圾邮件</option>
                           <% if(hidNo.Value=="3")  %>          
                                      <option value="1">收件箱</option>
                                      <option value="2">草稿箱</option>
                                      <option value="4">已删除</option>
                                       <option value="6">广告邮件</option>
                                      <option value="7">垃圾邮件</option>
                           <% if(hidNo.Value=="4") %>          
                                      <option value="1">收件箱</option>
                                      <option value="2">草稿箱</option>
                                      <option value="3">已发送</option>
                                       <option value="6">广告邮件</option>
                                      <option value="7">垃圾邮件</option>
                           <% if(hidNo.Value=="6") %>  
                                        <option value="1">收件箱</option>
                                      <option value="2">草稿箱</option>
                                      <option value="3">已发送</option>
                                       <option value="4">已删除</option>
                                      <option value="7">垃圾邮件</option>    
                            <% if (hidNo.Value == "7")
                               {%>      
                                          <option value="1">收件箱</option>
                                      <option value="2">草稿箱</option>
                                      <option value="3">已发送</option>
                                       <option value="4">已删除</option>
                                      <option value="6">广告邮件</option> 
                                      <%} %>   
                                    </select></td>
                                        <td align="right"><input id="BtnType" value="移动" type="button" class="button" onclick="change()"/> &nbsp;&nbsp;&nbsp; <input id="BtnDel" type="button" class="button" value="删除" /></td>
                                    </tr>
                                </table>
                        </td>
                        </tr>
                    </table>
                </td>
            </tr>
                    
        </table>
        <input id="hidNo" type="hidden" runat="server" />
        <input id="hidtype" type="hidden" />
    </form>
 </body>
</html>

