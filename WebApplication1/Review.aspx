<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="WebApplication1.Review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Start -->
    <div class="breadcrumb-wrap">
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item">
                    <asp:LinkButton ID="LinkButton1" runat="server">Home</asp:LinkButton></li>
                <li class="breadcrumb-item">
                    <asp:LinkButton ID="LinkButton2" runat="server">Products</asp:LinkButton></li>
                <li class="breadcrumb-item active">Review</li>
            </ul>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <div class="login">
        <div class="container-fluid">
            <div class="row">
                <div class="register-form">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label runat="server">Product ID</asp:Label>
                            <asp:TextBox class="form-control" ID="TextBox1" type="text" placeholder="Product ID" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label runat="server">Email</asp:Label>
                            <asp:TextBox class="form-control" ID="TextBox2" type="email" placeholder="Email" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <asp:Label runat="server">Review</asp:Label>
                            <asp:TextBox class="form-control" ID="TextBox3" type="text" placeholder="Review" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <asp:Button ID="Add_Review" class="btn" runat="server" Text="Submit" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>