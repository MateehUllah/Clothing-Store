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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EstoreConnectionString %>" SelectCommand="SELECT [ProductName], [Price], [imgpath] FROM [Product]"></asp:SqlDataSource>
                    <div class="col-lg-8">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True">
                            <Columns>

                                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:ImageField DataImageUrlField="imgpath" ControlStyle-CssClass="product-image">
                                  <ControlStyle CssClass="product-image"></ControlStyle>
                                </asp:ImageField>
                                <asp:ButtonField Text="Add to Cart" />
                                
                                
                            </Columns>
                        </asp:GridView>
                        <%--<div class="row">
                            <div class="col-md-12">
                                <div class="product-view-top">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="product-search">
                                                <input type="email" value="Search">
                                                <button><i class="fa fa-search"></i></button>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="product-short">
                                                <div class="dropdown">
                                                    <div class="dropdown-toggle" data-toggle="dropdown">Product short by</div>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a href="#" class="dropdown-item">Newest</a>
                                                        <a href="#" class="dropdown-item">Popular</a>
                                                        <a href="#" class="dropdown-item">Most sale</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="product-price-range">
                                                <div class="dropdown">
                                                    <div class="dropdown-toggle" data-toggle="dropdown">Product price range</div>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a href="#" class="dropdown-item">$0 to $50</a>
                                                        <a href="#" class="dropdown-item">$51 to $100</a>
                                                        <a href="#" class="dropdown-item">$101 to $150</a>
                                                        <a href="#" class="dropdown-item">$151 to $200</a>
                                                        <a href="#" class="dropdown-item">$201 to $250</a>
                                                        <a href="#" class="dropdown-item">$251 to $300</a>
                                                        <a href="#" class="dropdown-item">$301 to $350</a>
                                                        <a href="#" class="dropdown-item">$351 to $400</a>
                                                        <a href="#" class="dropdown-item">$401 to $450</a>
                                                        <a href="#" class="dropdown-item">$451 to $500</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-4">
                                <div class="product-item">
                                    <div class="product-title">
                                        <a href="#">Product Name</a>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="product-image">
                                        <a href="product-detail.aspx">
                                            <img src="img/product-1.jpg" alt="Product Image">
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="#"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <h3><span>$</span>99</h3>
                                        <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product-item">
                                    <div class="product-title">
                                        <a href="#">Product Name</a>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="product-image">
                                        <a href="product-detail.aspx">
                                            <img src="img/product-2.jpg" alt="Product Image">
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="#"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <h3><span>$</span>99</h3>
                                        <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product-item">
                                    <div class="product-title">
                                        <a href="#">Product Name</a>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="product-image">
                                        <a href="product-detail.aspx">
                                            <img src="img/product-3.jpg" alt="Product Image">
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="#"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <h3><span>$</span>99</h3>
                                        <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product-item">
                                    <div class="product-title">
                                        <a href="#">Product Name</a>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="product-image">
                                        <a href="product-detail.aspx">
                                            <img src="img/product-4.jpg" alt="Product Image">
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="#"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <h3><span>$</span>99</h3>
                                        <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product-item">
                                    <div class="product-title">
                                        <a href="#">Product Name</a>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="product-image">
                                        <a href="product-detail.aspx">
                                            <img src="img/product-5.jpg" alt="Product Image">
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="#"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <h3><span>$</span>99</h3>
                                        <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product-item">
                                    <div class="product-title">
                                        <a href="#">Product Name</a>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="product-image">
                                        <a href="product-detail.aspx">
                                            <img src="img/product-6.jpg" alt="Product Image">
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="#"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <h3><span>$</span>99</h3>
                                        <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product-item">
                                    <div class="product-title">
                                        <a href="#">Product Name</a>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="product-image">
                                        <a href="product-detail.aspx">
                                            <img src="img/product-7.jpg" alt="Product Image">
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="#"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <h3><span>$</span>99</h3>
                                        <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product-item">
                                    <div class="product-title">
                                        <a href="#">Product Name</a>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="product-image">
                                        <a href="product-detail.aspx">
                                            <img src="img/product-8.jpg" alt="Product Image">
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="#"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <h3><span>$</span>99</h3>
                                        <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="product-item">
                                    <div class="product-title">
                                        <a href="#">Product Name</a>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="product-image">
                                        <a href="product-detail.aspx">
                                            <img src="img/product-9.jpg" alt="Product Image">
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="#"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-price">
                                        <h3><span>$</span>99</h3>
                                        <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                        
                        <!-- Pagination Start -->
                        <%--<div class="col-md-12">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                                    </li>
                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>--%>
                        <!-- Pagination Start -->
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
