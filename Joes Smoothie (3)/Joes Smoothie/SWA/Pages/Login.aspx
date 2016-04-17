<%@ Page Title="" Language="C#" MasterPageFile="~/Spider.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SWA.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <strong>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label></strong> 

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    
    <strong><asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label></strong>
    <asp:TextBox ID="TextBox2" runat="server" Height="22px"></asp:TextBox>

    <br />
    <asp:Button ID="login" runat="server" Height="27px" Text="Login" Width="102px" OnClick="login_Click" />

    <asp:Button ID="signUp" runat="server" Text="Sign Up" Height="28px" Width="112px" OnClick="signUp_Click" />
    <br />
    <br />
    <asp:Button ID="googlePlus" runat="server" Text="Log in with Google+" Width="183px" />

</asp:Content>
