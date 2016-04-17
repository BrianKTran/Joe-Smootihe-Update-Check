<%@ Page Title="" Language="C#" MasterPageFile="~/Spider.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SWA.Pages.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <title>Angular Rest Create</title>
    <!--Using a content delivery network - watch if they go down so does your site-->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.14/angular.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;</h1>
    <h1>&nbsp;Sign Up</h1>

    <asp:TextBox ID="TextBox1" placeholder="<%$ Resources:WebResources, FirstName %>" runat="server" Height="19px" Width="222px"></asp:TextBox>
    
    
    
    <br />
    <br />


    <asp:TextBox ID="TextBox2" placeholder="<%$ Resources:WebResources, LastName %>" runat="server" Height="19px" Width="226px"></asp:TextBox>
    
    
    
    <br />
    <br />


    <asp:TextBox ID="TextBox3" placeholder="<%$ Resources:WebResources, EmailAddress %>" runat="server" Height="20px" Width="227px"></asp:TextBox>
    
    
    
    <br />
    <br />


    <asp:TextBox ID="TextBox4" placeholder="<%$ Resources:WebResources, EmailAddress %>" runat="server" Height="22px" Width="232px"></asp:TextBox>
    
    
    
    <br />
    <br />


    <asp:TextBox ID="TextBox5" placeholder="<%$ Resources:WebResources, PasswordChar %>" runat="server" Height="19px" Width="232px"></asp:TextBox>
    
    
    
    <br />
    <br />


    <asp:TextBox ID="TextBox6" placeholder="<%$ Resources:WebResources, Password %>" runat="server" Height="18px" Width="231px"></asp:TextBox>
    
    
    
    <br />
    <br />
    <br />
    
    
    
    <asp:Button ID="Button1" runat="server" Text="<%$ Resources:WebResources, SignUp %>" />

    <p><asp:Label ID="BySigningUp" runat="server" Text="<%$ Resources:WebResources, BySigningUp %>"></asp:Label> <%--Terms Of Use--%> <p> &</p> <%--Privacy Policy.--%>

    <p><asp:Label ID="AlreadyMember" runat="server" Text="<%$ Resources:WebResources, AlreadyMember %>"></asp:Label> </p> <asp:Button ID="Button2" runat="server" Text="<%$ Resources:WebResources, Login %>" OnClick="Button2_Click" />

          <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title"></h3>c
        </div>
        <form data-ng-submit="submit()" data-ng-controller="Ctrl">
            <div class="form-group">
                <label for="customerName" class="col-xs-2 control-label">First Name:</label>
                <div class="col-sm-10">
                    <input maxlength="40" class="form-control" id="custFirstName" placeholder="First Name" data-ng-model="custFirstName" required>
                </div>
                <label for="customerSSN" class="col-xs-2 control-label">Last Name:</label>
                <div class="col-sm-10">
                    <input type="text" maxlength="11" class="form-control" id="custLastName" placeholder="Last Name" data-ng-model="custLastName" required>
                </div>
                <label for="customerEmail" class="col-xs-2 control-label">Customer Email:</label>
                <div class="col-sm-10">
                    <input type="text" maxlength="25" class="form-control" id="custEmail" placeholder="Email" data-ng-model="custEmail" required>
                </div>
                <label for="customerPhone" class="col-xs-2 control-label">Customer Password:</label>
                <div class="col-sm-10">P
                    <input type="text" maxlength="15" class="form-control" id="custPassword" placeholder="Password" data-ng-model="custPassword" required>
                </div>
            </div>
         <%--   
            <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />--%>
                 <p><input type="submit" id="submit" value="Submit" /></p>
            <p>Response: {{ response }}</p>
        </form>
    </div>
        
        
         <script>
    function Ctrl($scope) {
        $scope.submit = function () {
            //Make sure to change the host and port to match the URL
            var query = "http://localhost:53336/Serivce1.svc/Create?";
            query += "first_name=" + $scope.first_name;
            query += "&last_name=" + $scope.last_name;
            query += "&email=" + $scope.email;
            query += "&uPassword=" + $scope.uPassword;

            //cust.first_name = custFirstName;
            //cust.last_name = custLastName;
            //cust.email = custEmail;
            //cust.uPassword = custPassword;

            $.ajax({ url: query, crossDomain: true, dataType: 'json', type: 'GET' })
            .done(function (json) {
                $scope.response = json;
                $scope.$apply();
            })
            .fail(function () {
                alert("Error");
            });
        }
    }
</script>
   
</asp:Content>