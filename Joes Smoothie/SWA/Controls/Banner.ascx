<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Banner.ascx.cs" 
    Inherits="SWA.Controls.Banner" %>
<asp:Label ID="MainBanner" Text="Joe's OnDemand Smoothies|" runat="server"></asp:Label>

<%@ Register Src="Currency.ascx" TagName="Currency" TagPrefix="ucCur" %>
<%@ Register Src="Language.ascx" TagName="Language" TagPrefix="ucLag" %>
<%@ Register Src="Cart.ascx" TagName="Cart" TagPrefix="ucCar" %>
<%--<table id="Langoption">
    <tr>
        <td><ucLag:Language ID="Lang" runat="server" /></td>
    </tr>
</table>--%>


<nav class="PrimaryNavigation">
        <ul>
            <asp:SiteMapDataSource ID="siteMapData" runat="server" ShowStartingNode="false" />
            <asp:Repeater ID="menu" runat="server" DataSourceID="siteMapData">
                <ItemTemplate>
                <li>
                    <a href="<%# Eval("url") %>"><%# Eval("title") %></a>
                </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
   </nav>
