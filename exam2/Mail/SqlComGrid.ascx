<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SqlComGrid.ascx.cs" Inherits="hkexam.Web.ListControls.SqlComGrid" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

   <link rel="stylesheet" type="text/css" href="../style/mypm_style.css"/>
   <link rel="stylesheet" type="text/css" href="../style/TabCss.css"  />
   <link rel="stylesheet" type="text/css" href="../style/pager.css"  />

<table cellpadding="0" cellspacing="0" border="0"  width="<%=ViewState["tabWidth"]%>">
    <asp:Literal ID="LitTitle" runat="server"></asp:Literal>
        <asp:Panel ID="Panel1"  runat="server">
            <tr>
                <td>
                    <div id="box">
                    <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tr>
                            <asp:Panel ID="PanOption" runat="server">
                            <td ></td>
                            <td align="right">
                                <asp:Label ID="LabDrp" runat="server" Text=""></asp:Label>
                                <asp:DropDownList ID="DrpOption" runat="server">
                                </asp:DropDownList>
                            </td>
                            </asp:Panel>
                            <asp:Panel ID="PanCourseTree" runat="server">
                                <td></td>
                                <td align="right">
                                    <asp:Label ID="lblTitle" runat="server" Text="选择课程:"></asp:Label>
                                    <asp:TextBox ID="txtCourse" runat="server" CssClass="TextBoxStyle"></asp:TextBox>
                                    <input id="BtnSel" type="button" value="选择" class="button" />
                                </td>
                            </asp:Panel>
                            <asp:Panel ID="PanSeach" runat="server">
                            <td>&nbsp;&nbsp;</td>
                            <td align="right">
                                <asp:Label ID="LabKey" runat="server" Text="关键字:"></asp:Label>
                                <asp:TextBox ID="TxtkeyWord" runat="server" CssClass="TextBoxStyle"></asp:TextBox>
                            </td>
                            </asp:Panel>
                            <asp:Panel ID="PanBtn" runat="server">
                            <td>&nbsp;&nbsp;</td>
                            <td align="right" width="50px" style="text-align:right;">
                                <asp:Button ID="BtnSeach" runat="server" Text="搜 索" CssClass="button" onclick="BtnSeach_Click"  />
                            </td>
                            </asp:Panel>
                        </tr>
                    </table> 
                    </div>
                </td>
            </tr>  
            <tr>
                <td></td>
            </tr>   
        </asp:Panel>
        <tr>
            <td align="left">
                <asp:Literal ID="LitCreate" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td valign="bottom">
                <table cellpadding="0" cellspacing="0" border="0" width="100%" style="height:25px">
                    <tr>
                        <td align="left">
                         <asp:Panel ID="PanPageSize" runat="server">
                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" 
                    CustomInfoTextAlign="Left" FirstPageText="首页" LastPageText="尾页" 
                    NextPageText="下页" NumericButtonCount="5" PrevPageText="上页" 
                    CssClass="anpager" CurrentPageButtonClass="cpb" onpagechanged="AspNetPager1_PageChanged" 
                                CustomInfoHTML="第%CurrentPageIndex%页/共%PageCount%页" 
                                PagingButtonLayoutType="Span" ShowCustomInfoSection="Right" 
                                ShowPageIndexBox="Always" SubmitButtonText="Go" TextAfterPageIndexBox="页" 
                                TextBeforePageIndexBox="转到" Width="800px" Wrap="False" AlwaysShow="True" 
                                Direction="LeftToRight" CustomInfoSectionWidth="20%"></webdiyer:AspNetPager>
                                </asp:Panel>
                        </td> 
                        <td align="right">
                            <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                <tr>
                                    <asp:Panel ID="PanAudit" runat="server">
                                    <td><input id="btnAudit" type="button" value="<%=ViewState["AuditCaption"]%>" class="button" /></td>
                                    </asp:Panel>
                                    <asp:Panel ID="OperatePanel" runat="server">
                                    <td><input id="addRecord" type="button" value="添 加" class="button" /></td>
                                    </asp:Panel>
                                    <asp:Panel ID="PanDelete" runat="server">
                                    <td><input id="BtnDelete" type="button" value="<%=ViewState["Caption"]%>" class="button" /></td>
                                    </asp:Panel>
                                </tr>
                            </table>
                        </td>
                        
                    </tr>   
                </table>
                <input type="hidden" runat="server" id="hidNo" />
            </td>
        </tr>
</table>

