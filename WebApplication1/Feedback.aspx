<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <li class="breadcrumb-item active">Feedback</li>
            </ul>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Product Detail Start -->
    <div class="product-detail">
        <div class="container-fluid">
            <div class="row">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EstoreConnectionString %>" SelectCommand="SELECT [ProductID], [Feedback] FROM [Review]"></asp:SqlDataSource>
                <div class="col-lg-8">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                            <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
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
                            <li>
                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Width="16px">J.</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Khaadi</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Gul Ahmed</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton6" runat="server" Height="23px" OnClick="LinkButton6_Click">MTJ</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Kayseria</asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Edenrobe</asp:LinkButton></li>
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
                <div class="brand-item">
                    <img src="img/brand-1.png" alt=""></div>
                <div class="brand-item">
                    <img src="img/brand-2.png" alt=""></div>
                <div class="brand-item">
                    <img src="img/brand-3.png" alt=""></div>
                <div class="brand-item">
                    <img src="img/brand-4.png" alt=""></div>
                <div class="brand-item">
                    <img src="img/brand-5.png" alt=""></div>
                <div class="brand-item">
                    <img src="img/brand-6.png" alt=""></div>
            </div>
        </div>
    </div>
</asp:Content>