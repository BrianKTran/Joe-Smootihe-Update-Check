<%@ Page Title="" Language="C#" MasterPageFile="~/Spider.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SWA.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" 
    runat="server">
    <a id="LinkToSpider" runat="server" >Link Spider</a>
    <asp:Button ID="button1" Text="Click Me!" label="ClickEnglish"  runat="server" OnClick="submit" />
    <asp:Calendar ID="calSpider1" runat="server" OnSelectionChanged="HandleCalEvent" />
    <asp:Label ID="Calendar" runat="server" Text ="Welcome"></asp:Label>
    <br/>
    <asp:Image ID="Smoothie" runat="server" ImageUrl='http://www.afrobella.com/wp-content/uploads/2012/11/shutterstock_1111264731.jpg' Height="200" Width="300" ImageAlign="Middle"/>
</asp:Content>
