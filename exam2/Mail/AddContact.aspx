<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddContact.aspx.cs" Inherits="hkexam.Web.WEBMAIL.AddContact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 114px;
        }
    </style>
    <link href="../style/mypm_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/check.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
          <tr>
            <td width="100%" style="background-image:url(/images/main_31.gif)"></td>
          </tr>
          <tr>
            <td valign="top">
              <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="15">&nbsp;</td><td height="15">&nbsp;</td>
                </tr>
                <tr>
                    <td height="15" width="10">&nbsp;</td>
                    <td height="15">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td colspan="4">
                                <p>　</p>
							    <p>　</p>
							    <h4 align="center">&nbsp;添加联系人&nbsp;</h4> 
                                    <div align="left">
                                        <div align="center">
                                            <table border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" 
                                                style="width: 437px" >
                                                <tr>
                                                    <td  align="right" bgcolor="#E1FFD7" class="style1">姓名：</td>
                                                    <td  width="320" bgcolor="#FFFFFF" align="left" valign="middle">
                                                        <asp:TextBox ID="txtName" runat="server"  Width="220px"></asp:TextBox>
                                                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="（必填）"></asp:Label>
                                                    </td>
                                                 </tr>
                                                 <tr>
                                                    <td  align="right" bgcolor="#E1FFD7" class="style1">邮件地址：</td>
                                                    <td  width="320" bgcolor="#FFFFFF" align="left" valign="middle">
                                                        <asp:TextBox ID="txtEmail" runat="server"  Width="220px"></asp:TextBox>
                                                        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="（必填）"></asp:Label>
                                                    </td>
                                                 </tr>
                                            </table>    
                                         </div>
                                         <br />                           
                                         <div align="center">   
                                            <table border="0">  
                                                <tr>  
                                                    <td>  
                                                        <p align="center">
                                                            <asp:Button ID="btnOK" runat="server" Text="确定" CssClass="button" 
                                                                onclick="btnOK_Click" OnClientClick="return checkContact('txtName','txtEmail')"/>
                                                            &nbsp;
                                                            <asp:Button ID="btnRes" runat="server" Text="返回" CssClass="button" 
                                                                onclick="btnRes_Click" />
                                                        </p>  
                                                    </td>  
                                                </tr>  
                                            </table>  
                                          </div>  
                                        </div> 
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
      </table>
    </form>
</body>
</html>
