<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a href="product-list.aspx">Products</a></li>
                    <li class="breadcrumb-item active">Cart</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <!-- Cart Start -->
        <div class="cart-page">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="cart-page-inner">
                            <div class="table-responsive">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HorizontalAlign="Left" AllowPaging="True" ShowFooter="True" OnRowDeleting="GridView1_RowDeleting" >
                                    <Columns>
                                        <asp:BoundField DataField="itemno" HeaderText="Item#" />
                                        <asp:BoundField DataField="ProductID" HeaderText="Product ID" />
                                        <asp:BoundField DataField="ProductName" HeaderText="Product Name"/>
                                        <asp:BoundField DataField="Price" HeaderText="Price" />
                                        <asp:CommandField DeleteText="Remove"  ShowDeleteButton="True" />
                                    </Columns>
                                </asp:GridView>
                                                         
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                              <asp:LinkButton ID="LinkButton1" runat="server" class="btn" OnClick="LinkButton1_Click" >Continue Shopping</asp:LinkButton>
                              <asp:LinkButton ID="LinkButton2" runat="server" class="btn" OnClick="LinkButton2_Click">Checkout</asp:LinkButton>   
            </div>
        </div>
        <!-- Cart End -->
</asp:Content>
