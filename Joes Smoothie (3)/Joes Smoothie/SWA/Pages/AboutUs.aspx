<%@ Page Title="" Language="C#" MasterPageFile="~/Spider.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="SWA.Legs8" %>
<%@ Register Assembly="ZedGraph.Web" Namespace="ZedGraph.Web" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<cc1:ZedGraphWeb ID="ZedGraphWeb1" runat="server" OnRenderGraph="ZedGraphWeb1_RenderGraph"></cc1:ZedGraphWeb>
   
    <%-- Calling the JavaScript Function to display Date--%>
    <button onclick="displayDate()">Get Date</button>
    <p id="paragraph1"></p>

    <%-- Using the DOM to modify the HTML value--%>
    <h1 onclick="this.innerHTML='Clicked'">Click on this text!</h1>
  
    <%-- Calling the JavaScript Function to modify the HTML value--%>
    <h1 onclick="changetext(this)">Click on this text!</h1>
    
     <%--When you leave the input field, a function is triggered which 
        transforms the input text to upper case.--%>
    Enter your name: <input type="text" id="fname" onchange="nameFunction()"/>

    <%-- Event for when the pointer rolls over an div area --%>
    <div onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" 
    style="background-color:#D94A38;width:100px;height:20px;padding:40px;">
        Mouse Over Me</div>
    
      <%--Example of embedded JavaScript--%>
    <script type="text/javascript">

        function displayDate() {
            document.getElementById("paragraph1").innerHTML = Date();
        }
        function changetext(id) {
            id.innerHTML = "Clicked";
        }
        function nameFunction() {
            var xElement = document.getElementById("fname");
            xElement.value = xElement.value.toUpperCase();
        }
        function mouseOver(obj) {
            obj.innerHTML = "Changed"
        }

        function mouseOut(obj) {
            obj.innerHTML = "Mouse Over Me"
        }

        //alert("Legs8 Page");
        //var team = ["Joe", "Jim", "John", "Steve"]; //works too
        //var years = Array(1965, 1970, 1975, 1980);
        //var student1 = Array("Joe", 1965, false); //Mixture

        ////Call the function
        //var sum = fun1(2, 3);
        //alert(sum);

        //sum = fun2(2, 3);
      //  alert(sum);

        function fun1(arg1, arg2) {
            return arg1 + arg2;
        }

        function fun2(arg1, arg2) {
            var sum = arg1 + arg2;
            return sum;
        }

    </script>

</asp:Content>
