<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WriteMail.aspx.cs" Inherits="hkexam.Web.WEBMAIL.WriteMail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link href="../Images/WebMailImages/css.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="../mypm_style.css" />
<script type="text/javascript" src="../js/check.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <body background="../Images/WebMailImages/bluebg.gif">

<table border="0"  bgcolor="#F0F0F0" width="573">
  <tr>
    <td width="565" height="35">
      <table border="0" width="100%" height="27">
        <tr>
          <td width="35%" height="23">
            <p align="center">
                <asp:ImageButton ID="BSend" runat="server" Height="31px" 
                    ImageUrl="../Images/WebMailImages/a010.gif" style="margin-left: 0px" Width="72px" 
                  OnClientClick="return checkdeWrieteMail('TxtSendTo','TxtSendPerson')" onclick="BSend_Click" />
                &nbsp;&nbsp;<asp:ImageButton ID="BSave" runat="server" Height="31px" 
                    ImageUrl="../Images/WebMailImages/a011.gif" Width="72px" 
                    onclick="BSave_Click" OnClientClick="return checkdeWrieteMail('TxtSendTo','TxtSendPerson')"  />
                     
                <asp:Label ID="Label1" runat="server"  ForeColor="Blue"></asp:Label>
            </td>
          <td width="11%" height="23"></td>
          <td width="10%" height="23"></td>
          <td width="13%" height="23"></td>
          <td width="9%" height="23">
              <input type="button" onclick="javascript:window.location.href('welcome.aspx');"value="返回" class="button" type="button" /> 
            </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="565" height="387" align="left" valign="top">
	
      <table border="0" width="558" height="345" cellspacing="1" bordercolor="#F0F0F0">
        <tr>
          <td width="58" height="18" align="center"><b>收件人</b></td>    
          <td height="18" width="486">
              <asp:TextBox ID="TxtSendTo" runat="server" Width="483px"></asp:TextBox>
            </td>
        </tr>
        <tr>
         <td width="58" height="18" align="center"><b>发件人</b></td>
          <td height="18" width="486">
              <asp:TextBox ID="TxtSendPerson" runat="server" Width="483px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td width="58" height="18" align="center"><b>主&nbsp; 题</b></td>
          <td height="18" width="486">
              <asp:TextBox ID="TxtSubject" runat="server" Width="483px"></asp:TextBox>
            </td>
        </tr>
        <tr>
          <td width="58" height="22" align="center"><b>附&nbsp; 件</b></td>
          <% if (HidNo.Value == "1")
             {%><td height="22" width="486">
            <asp:TextBox ID="TxtAcc" runat="server" Width="400px"></asp:TextBox>
           <asp:FileUpload ID="Fud_Attach1" runat="server" Width="0px" />
		  </td><%} %>
		  <% if(HidNo.Value=="0"){ %>
		     <td height="22" width="483" bgcolor="#FFFFFF">
		     <asp:Literal ID="TxtAcc1" runat="server"></asp:Literal>
		      </td>
		  <%}%>
        </tr>
        <tr>
          <td width="58" height="264" align="center" valign="top"><b>正&nbsp; 文</b></td>
          <td height="264" valign="top" width="486">
		  &nbsp;<input type="hidden" name="ActionType" value="1"/><asp:TextBox ID="TxtText" 
                  runat="server" Height="261px" TextMode="MultiLine" Width="483px"></asp:TextBox>
		  </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td width="565" height="29">
      <table border="0" width="100%">
        <tr>
          <td width="12%" height="100%">
            <p align="right"></td>
          <td width="12%" height="100%"></td>
          <td width="12%" height="100%"></td>
          <td width="12%" height="100%"></td>
          <td width="13%" height="100%"></td>
          <td width="13%" height="100%"></td>
          <td width="13%" height="100%"></td>
          <td width="13%" height="100%"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
   </body>
   <input id="HidNo" runat="server" type="hidden" />
    </form>
</body>
</html>
