<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin-panel.aspx.cs" Inherits="WebApplication1.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a href="product-list.aspx">Products</a></li>
                    <li class="breadcrumb-item active">Admin Panel</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
       <div class="login">
            <div class="container-fluid">
                <div class="row">
                        <div class="register-form">
                            <div class="row">
                                <div class="col-md-4">
                                    <asp:Label runat="server">Product ID</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox50" type="text" placeholder="Product ID" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <asp:Label runat="server">Product Name</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox51" type="text" placeholder="Product Name" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <asp:Label runat="server">Quantity</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox2" type="text" placeholder="Quantity" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <asp:Label runat="server">Price</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox52" type="text" placeholder="Price" runat="server"></asp:TextBox>
                                </div>
                                 <div class="col-md-4">
                                    <asp:Label runat="server">Description</asp:Label>
                                    <asp:TextBox class="form-control" ID="TextBox1" type="text" Rows="4" MaxLength="100" placeholder="Description" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <asp:Label runat="server">Choose Product</asp:Label>
                                    <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                                </div>

                                 <div class="col-md-6">
                                     <asp:Button ID="Add_Product" class="btn" runat="server" Text="Add Product" OnClick="Add_Product_Click"/>
                                </div>
                                <div class="col-md-6">
                                     <asp:Button ID="Update_Product" class="btn" runat="server" Text="Update Product" OnClick="Update_Product_Click"/>
                                </div>
                                <br /><br />
                                 <div class="col-md-12">
                                    <asp:Label runat="server">Product ID</asp:Label>
                                     <asp:TextBox class="form-control" ID="TextBox53" type="text" placeholder="Product ID" runat="server"></asp:TextBox>
                                </div>
                                 <div class="col-md-6">
                                     <asp:Button ID="Remove_Product" class="btn" runat="server" Text="Remove Product" OnClick="Remove_Product_Click"/>
                                </div>
                                <div class="col-md-6">
                                     <asp:Button ID="Logout" class="btn" runat="server" Text="Logout Admin" OnClick="Logout_Click"/>
                                </div>
                                  </div>
                              </div>
                            </div>

                      </div>
                   </div>
</asp:Content>
