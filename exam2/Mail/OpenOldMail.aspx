<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpenOldMail.aspx.cs" Inherits="hkexam.Web.WEBMAIL.OpenOldMail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

<link href="../Images/WebMailImages/css.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="../mypm_style.css" />
<link href="../Images/WebMailImages/css.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="../js/check.js"></script>
    
 <script type="text/javascript">
     function back() {
         if (document.getElementById('hidType').value == '1') {
             if (document.getElementById('hidName').value != null) {
                 window.location.href = "attachments/" + document.getElementById('hidName').value;
             }
             else {
                 alert('您要下载的文件不存在');
             }
         }
         else {
             alert('您要下载的文件不存在');
         }
     }
    </script>

    <title></title>
</head>
<body background="../Images/WebMailImages/bluebg.gif">
    <form id="form1" runat="server">
<table border="0" width="87%" cellspacing="0" cellpadding="0" bgcolor="#F0F0F0">
  <tr>
    <td width="100%" height="1" colspan="8">
    </td>
  </tr>
  <tr>
    <% if (hidType.Value == "2")
       {%>
    <td width="3%" height="31" bgcolor="#F0F0F0">
         <p align="right">
                          &nbsp;   
             <asp:ImageButton ID="BSend" runat="server" Height="33px" 
                 ImageUrl="../Images/WebMailImages/a010.gif" style="margin-left: 0px" Width="69px" 
                              onclick="BSend_Click"    />
         </td>  
         <td width="11%" height="31" bgcolor="#F0F0F0">  
         <p align="center"> 
         &nbsp;<asp:ImageButton ID="BSave" runat="server" Height="33px" 
                 ImageUrl="../Images/WebMailImages/a011.gif" Width="83px" 
                 onclick="BSave_Click"  />
         </td>  
    <%} %>
    <% else if (hidType.Value == "3")  {%>
       <td width="3%" height="31" bgcolor="#F0F0F0">
         <p align="right">
                          &nbsp;   
             <asp:ImageButton ID="BASend" runat="server" Height="33px" 
                 ImageUrl="../Images/WebMailImages/012.gif" style="margin-left: 0px" Width="69px" 
                              onclick="BASend_Click" />
         </td>  
         <td width="11%" height="31" bgcolor="#F0F0F0">  
         <p align="center"> 
         &nbsp;<asp:ImageButton ID="BASave" runat="server" Height="33px" 
                 ImageUrl="../Images/WebMailImages/a009.gif" Width="83px" 
                 onclick="BASave_Click"/>
         </td>  
    <%} %>
    <% else
        { %>
    <td width="3%" height="31" bgcolor="#F0F0F0">
         <p align="right">
                          &nbsp;   
             <asp:ImageButton ID="BReplay" runat="server" Height="33px" 
                 ImageUrl="../Images/WebMailImages/a008.gif" style="margin-left: 0px" Width="69px" 
                       onclick="BReplay_Click" />
         </td>  
         <td width="11%" height="31" bgcolor="#F0F0F0">  
         <p align="center"> 
         &nbsp;<asp:ImageButton ID="BChangeSend" runat="server" Height="33px" 
                 ImageUrl="../Images/WebMailImages/a009.gif" Width="83px"   onclick="BChangeSend_Click" />
         </td>  
    <%} %>
    <td width="3%" height="31" colspan="2" bgcolor="#F0F0F0">  
    <asp:Label ID="Label1" runat="server"  ForeColor="Blue"></asp:Label></td>  
  
    <td width="3%" height="31" colspan="4" bgcolor="#F0F0F0" align="center">  
    <input type="button" onclick="javascript:window.location.href('welcome.aspx');"value="返回" class="button" /></td>  
  </tr>  
  <tr>  
    <td width="12%" height="3" colspan="8" bgcolor="#F0F0F0">  
    </td>  
  </tr>  
  <tr>  
    <td width="100%" height="519" valign="top" colspan="8" bgcolor="#F0F0F0">  
      <table border="0" cellpadding="2" bgcolor="#F0F0F0" style="width: 73%">  
        <tr>  
          <td width="15%" height="22" align="center" valign="middle"  bgcolor="#F0F0F0"><b><font size="2">日&nbsp;&nbsp;&nbsp; 期&nbsp;</font></b></td>  
          <td width="96%" height="22"  bgcolor="#FFFFFF"><asp:TextBox 
                  ID="TxtDate" runat="server" Width="612px"></asp:TextBox>
            </td>  
        </tr>  
        <tr>  
          <td width="15%" height="22" align="center" valign="middle"  bgcolor="#F0F0F0"><b><font size="2">发件人&nbsp;</font></b></td>  
          <td width="96%" height="22" bgcolor="#FFFFFF">
              <asp:TextBox ID="TxtSender" runat="server" Width="612px"></asp:TextBox>
            </td>  
        </tr>  
        <tr>  
          <td width="15%" height="22" align="center" valign="middle" bgcolor="#F0F0F0"><b><font size="2">收件人&nbsp;</font></b></td>  
          <td width="96%" height="22" bgcolor="#FFFFFF">
              <asp:TextBox ID="TxtReciever" runat="server" Width="612px"></asp:TextBox>
            </td>  
        </tr>  
        <tr>  
          <td width="15%" height="22" align="center" valign="middle" bgcolor="#F0F0F0"><b><font size="2">主&nbsp; &nbsp;              
            题&nbsp;</font></b></td>  
          <td width="96%" height="22" bgcolor="#FFFFFF">
              <asp:TextBox ID="TxtSubject" runat="server" Width="612px"></asp:TextBox>
            </td>  
        </tr>  
        <tr>  
          <td width="15%" height="22" align="center" valign="middle" bgcolor="#F0F0F0"><b><font size="2">附&nbsp; &nbsp;              
            件&nbsp;</font></b></td>  
          <td width="96%" height="22" bgcolor="#FFFFFF">
            <%--  <asp:LinkButton ID="TxtAcc" runat="server" OnClientClick="back()">--%><%--</asp:LinkButton>--%>
              <asp:Literal ID="TxtAcc" runat="server"></asp:Literal> </td>   
        </tr>  
        <tr>  
          <td width="15%" align="center" height="264" valign="top" bgcolor="#F0F0F0"><b><font size="2">内&nbsp;&nbsp;&nbsp;              
            容&nbsp;</font></b></td>  
          <td width="95%" height="264" valign="top" bgcolor="#FFFFFF">
              <asp:TextBox ID="TxtText" runat="server" Height="261px" TextMode="MultiLine" 
                  Width="612px"></asp:TextBox>
            </td>  
        </tr>  
  
      </table>  
    </td>  
  </tr>  
  <tr>  
    <td width="13%" height="27">  
      <p align="center"></td>  
    <td width="7%" height="27">  
      <p align="center">  
      </p>  
    </td>  
    <td width="11%" height="27">  
      <p align="center">&nbsp;</p></td>  
    <td width="1%" height="27">  
      <p align="center">&nbsp;</p></td>  
    <td width="44%" height="27"></td>  
    <td width="12%" height="27"></td>  
    <td width="12%" height="27"></td>  
    <td width="12%" height="27"></td>  
  </tr>  
</table>  
<input type="hidden" id="hidName" runat="server" />
<input type="hidden" id="hidType" runat="server" />
    </form>

</body>
</html>

