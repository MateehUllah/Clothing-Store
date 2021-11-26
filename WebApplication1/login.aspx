<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a href="product-list.aspx">Products</a></li>
                    <li class="breadcrumb-item active">Login & Register</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <!-- Login Start -->
        <div class="login">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">    
                        <div class="register-form">
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Label runat="server">First Name</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox1" type="text" placeholder="First Name" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label runat="server">Last Name</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox2" type="text" placeholder="Last Name" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
 
                                    <asp:Label runat="server">E-mail</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox3" type="email" placeholder="E-mail" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label runat="server">Mobile No</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox4" type="text" placeholder="Mobile No" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label runat="server">Password</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox5" type="password" placeholder="Password" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label runat="server">Retype Password</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox6" type="password" placeholder="Password" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-12">
                                    <asp:Button ID="Button_SignUp" class="btn" runat="server" Text="SignUp" OnClick="Button_SignUp_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="login-form">
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Label runat="server">E-mail / Username</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox7" type="email" placeholder="E-mail / Username" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                     <asp:Label runat="server">Password</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox8" type="password" placeholder="Password" runat="server"></asp:TextBox>
                                </div>
                                <!-----------------------Keep me Sign in----------------------------->
                                <!--<div class="col-md-12">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="newaccount">
                                        <label class="custom-control-label" for="newaccount">Keep me signed in</label>
                                    </div>
                                </div>-->
                                <div class="col-md-12">
                                    <asp:Button ID="Button_Login" class="btn" runat="server" Text="Login" OnClick="Button_Login_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Login End -->
</asp:Content>
