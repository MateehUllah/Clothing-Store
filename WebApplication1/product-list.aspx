<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="product-list.aspx.cs" Inherits="WebApplication1.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Products</a></li>
                    <li class="breadcrumb-item active">Product List</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <!-- Product List Start -->
        <div class="product-view">
            <div class="container-fluid">
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EstoreConnectionString %>" SelectCommand="SELECT [ProductName], [ProductID], [Price], [imgpath] FROM [Product]"></asp:SqlDataSource>
                    <div class="col-lg-8">
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" OnItemCommand="DataList1_ItemCommand">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <ItemTemplate>
                                <table class="w-100">
                                    <tr>
                                        <td class="text-center">Product ID: <asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <asp:Image ID="Image1" runat="server" Height="130px" ImageUrl='<%# Eval("imgpath") %>' Width="135px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">Price:<asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                            $</td>
                                    </tr>
                                    <tr>
                                        <td class="text-center"><asp:Button ID="Add_to_Cart" class="btn" runat="server" CommandName="AddToCart" Text="Add to Cart" CommandArgument='<%# Eval("ProductID")%>'/></td>
                                    </tr>
                                </table>
                                <br />
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
                </div>
            </div>
        </div>
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
