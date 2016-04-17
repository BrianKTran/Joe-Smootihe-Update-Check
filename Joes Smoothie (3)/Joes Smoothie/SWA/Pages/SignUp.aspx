<%@ Page Title="" Language="C#" MasterPageFile="~/Spider.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SWA.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;</h1>
    <h1>&nbsp;Sign Up</h1>

    <asp:TextBox ID="TextBox1" placeholder="First Name" runat="server" Height="19px" Width="222px"></asp:TextBox>
    
    
    
    <br />
    <br />


    <asp:TextBox ID="TextBox2" placeholder="Last Name" runat="server" Height="19px" Width="226px"></asp:TextBox>
    
    
    
    <br />
    <br />


    <asp:TextBox ID="TextBox3" placeholder="Email" runat="server" Height="20px" Width="227px"></asp:TextBox>
    
    
    
    <br />
    <br />


    <asp:TextBox ID="TextBox4" placeholder="Confirm Email" runat="server" Height="22px" Width="232px"></asp:TextBox>
    
    
    
    <br />
    <br />


    <asp:TextBox ID="TextBox5" placeholder="Password (4-10 characters - no spaces)" runat="server" Height="19px" Width="232px"></asp:TextBox>
    
    
    
    <br />
    <br />


    <asp:TextBox ID="TextBox6" placeholder="Confirm Password" runat="server" Height="18px" Width="231px"></asp:TextBox>
    
    
    
    <br />
    <br />
    <br />
    
    
    
    <asp:Button ID="Button1" runat="server" Text="Sign Up" />

    <p>By clicking Sign up, you agree to our </p> <%--Terms Of Use--%> <p> &</p> <%--Privacy Policy.--%>

    <p>Already a member? </p> <asp:Button ID="Button2" runat="server" Text="Log in" OnClick="Button2_Click" />



</asp:Content>
