<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="product-detail.aspx.cs" Inherits="WebApplication1.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton></li>
                    <li class="breadcrumb-item">
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Products</asp:LinkButton></li>
                    <li class="breadcrumb-item active">Product Detail</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <!-- Product Detail Start -->
        <div class="product-detail">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="col-md-4">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EstoreConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [Price], [imgpath], [Description] FROM [Product] ORDER BY [Price]"></asp:SqlDataSource><!---Asc-->
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EstoreConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [Price], [Description], [imgpath] FROM [Product] ORDER BY [Price] DESC"></asp:SqlDataSource>
                                    <asp:Label ID="Label6" runat="server" placeholder="Sort by price"></asp:Label>
                                    <asp:DropDownList class="custom-select" ID="DropDownList1" runat="server">
                                        <asp:ListItem Selected="True" Text="High to low">High to low</asp:ListItem>
                                        <asp:ListItem Text="low to high">low to high</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                        <div class="col-md-4">
                            <asp:LinkButton ID="LinkButton9" class="btn" runat="server" OnClick="LinkButton9_Click">Sort</asp:LinkButton></div>
                       </div>
                        </div>
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EstoreConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [Price], [imgpath], [Description] FROM [Product]"></asp:SqlDataSource>
                    <div class="col-lg-8">
                        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <ItemTemplate>
                                <table class="w-100">
                                    <tr>
                                        <td class="auto-style1" style="text-align: center">ProductID:
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <asp:Label ID="Label2" runat="server" style="text-align: center" Text='<%# Eval("ProductName") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <asp:Image ID="Image1" runat="server" Height="174px" ImageUrl='<%# Eval("imgpath") %>' Width="231px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">Price:<asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                            $</td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <asp:Label ID="Label4" runat="server" style="text-align: center" Text='<%# Eval("Description") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        </asp:DataList>
                    </div>
                    <!-- Side Bar Start -->
                    <div class="col-lg-4 sidebar">
                        <div class="sidebar-widget category">
                            <h2 class="title">Category</h2>
                            <nav class="navbar bg-light">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#"><i class="fa fa-child"></i>Kids & Babies Clothes</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#"><i class="fa fa-tshirt"></i>Men & Women Clothes</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>                        
                        <div class="sidebar-widget brands">
                            <h2 class="title">Our Brands</h2>
                            <ul>
                               <li><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Width="16px">J.</asp:LinkButton></li>
                               <li><asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Khaadi</asp:LinkButton></li>
                               <li><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Gul Ahmed</asp:LinkButton></li>
                               <li><asp:LinkButton ID="LinkButton6" runat="server" Height="23px" OnClick="LinkButton6_Click">MTJ</asp:LinkButton></li>
                               <li><asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Kayseria</asp:LinkButton></li>
                               <li><asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Edenrobe</asp:LinkButton></li>
          
                            </ul>
                        </div>
                    </div>
                    <!-- Side Bar End -->
                </div>
            </div>
        </div>
        <!-- Product Detail End -->
        
        <!-- Brand Start -->
        <div class="brand">
            <div class="container-fluid">
                <div class="brand-slider">
                    <div class="brand-item"><img src="img/brand-1.png" alt=""></div>
                    <div class="brand-item"><img src="img/brand-2.png" alt=""></div>
                    <div class="brand-item"><img src="img/brand-3.png" alt=""></div>
                    <div class="brand-item"><img src="img/brand-4.png" alt=""></div>
                    <div class="brand-item"><img src="img/brand-5.png" alt=""></div>
                    <div class="brand-item"><img src="img/brand-6.png" alt=""></div>
                </div>
            </div>
        </div>
        <!-- Brand End -->
</asp:Content>
