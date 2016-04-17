<%@ Page Title="" Language="C#" MasterPageFile="~/Spider.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SWA.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div> 
   <br />
   <h1><asp:Label ID="Label1" runat="server" Text="Contact Us"></asp:Label></h1> 

   <h3><asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></h3> 
    <asp:TextBox ID="TextBox1"  runat="server" Height="28px" Width="278px"></asp:TextBox>

    <h3><asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label></h3> 
    <asp:TextBox ID="TextBox2"  runat="server" Height="29px" Width="280px"></asp:TextBox>

    <h3><asp:Label ID="Label4" runat="server" Text="Message"></asp:Label></h3> 
    <asp:TextBox ID="TextBox3" runat="server" Height="178px" Width="281px" TextMode="MultiLine"></asp:TextBox>
    </div>
    
    <br />
    
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="submitMessage"/>


</asp:Content>

