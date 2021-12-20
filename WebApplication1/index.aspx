<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Main Slider Start -->
    <div class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <nav class="navbar bg-light">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <asp:LinkButton ID="LinkButton1" class="nav-link" runat="server" OnClick="LinkButton1_Click"><i class="fa fa-home"></i>Home</asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton ID="LinkButton17" class="nav-link" runat="server" OnClick="LinkButton17_Click"><i class="fa fa-shopping-bag"></i>Best Selling</asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton ID="LinkButton2" class="nav-link" runat="server" OnClick="LinkButton2_Click"><i class="fa fa-plus-square"></i>New Arrivals</asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton ID="LinkButton3" class="nav-link" runat="server" OnClick="LinkButton3_Click"><i class="fa fa-child"></i>Kids & Babies Clothes</asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton ID="LinkButton4" class="nav-link" runat="server" OnClick="LinkButton4_Click"><i class="fa fa-tshirt"></i>Men & Women Clothes</asp:LinkButton>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-md-6">
                    <div class="header-slider normal-slider">
                        <div class="header-slider-item">
                            <img src="img/slider-1.jpg" alt="Slider Image" />
                            <div class="header-slider-caption">
                                <p>Choose the best choose the EStore</p>
                                <asp:LinkButton ID="LinkButton5" class="btn" runat="server" OnClick="LinkButton5_Click"><i class="fa fa-shopping-cart"></i>Shop Now</asp:LinkButton>
                            </div>
                        </div>
                        <div class="header-slider-item">
                            <img src="img/slider-2.jpg" alt="Slider Image" />
                            <div class="header-slider-caption">
                                <p>Choose the best choose the EStore</p>
                                <asp:LinkButton ID="LinkButton6" class="btn" runat="server" OnClick="LinkButton6_Click"><i class="fa fa-shopping-cart"></i>Shop Now</asp:LinkButton>
                            </div>
                        </div>
                        <div class="header-slider-item">
                            <img src="img/slider-3.jpg" alt="Slider Image" />
                            <div class="header-slider-caption">
                                <p>Choose the best choose the EStore</p>
                                <asp:LinkButton ID="LinkButton7" class="btn" runat="server" OnClick="LinkButton7_Click"><i class="fa fa-shopping-cart"></i>Shop Now</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="header-img">
                        <div class="img-item">
                            <img src="img/category-1.jpg" />
                            <a class="img-text" href="">
                                <p>Choose the best choose the EStore</p>
                            </a>
                        </div>
                        <div class="img-item">
                            <img src="img/category-2.jpg" />
                            <a class="img-text" href="">
                                <p>Choose the best choose the EStore</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Slider End -->

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
    <!-- Brand End -->

    <!-- Feature Start-->
    <div class="feature">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-lg-3 col-md-6 feature-col">
                    <div class="feature-content">
                        <i class="fab fa-cc-mastercard"></i>
                        <h2>Secure Payment</h2>
                        <p>
                            As part of a secure payment, your credit card number, expiry date and cryptogram are encrypted in the transmission to protect you and ensure that no data flows in the clear via the internet.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 feature-col">
                    <div class="feature-content">
                        <i class="fa fa-truck"></i>
                        <h2>Worldwide Delivery</h2>
                        <p>
                            We can deliver your Order with in 7 days.After that 100% cash back will be implemented.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 feature-col">
                    <div class="feature-content">
                        <i class="fa fa-sync-alt"></i>
                        <h2>90 Days Return</h2>
                        <p>
                            You can return your product with in 90 days.
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 feature-col">
                    <div class="feature-content">
                        <i class="fa fa-comments"></i>
                        <h2>24/7 Support</h2>
                        <p>
                            You can contact with customer service 24/7. You can take any kkind of help from them.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Feature End-->

    <!-- Category Start-->
    <div class="category">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <div class="category-item ch-400">
                        <img src="img/category-3.jpg" />
                        <a class="category-name" href="">
                            <p>Choose the best choose the estore</p>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="category-item ch-250">
                        <img src="img/category-4.jpg" />
                        <a class="category-name" href="">
                            <p>Choose the best choose the EStore</p>
                        </a>
                    </div>
                    <div class="category-item ch-150">
                        <img src="img/category-5.jpg" />
                        <a class="category-name" href="">
                            <p>Choose the best choose the EStore</p>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="category-item ch-150">
                        <img src="img/category-6.jpg" />
                        <a class="category-name" href="">
                            <p>Choose the best choose the EStore</p>
                        </a>
                    </div>
                    <div class="category-item ch-250">
                        <img src="img/category-7.jpg" />
                        <a class="category-name" href="">
                            <p>Choose the best choose the EStore</p>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="category-item ch-400">
                        <img src="img/category-8.jpg" />
                        <a class="category-name" href="">
                            <p>Choose the best choose the EStore.</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Category End-->

    <!-- Call to Action Start -->
    <div class="call-to-action">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h1>call us for any queries</h1>
                </div>
                <div class="col-md-6">
                    <a href="tel:0123456789">+92-3029840566</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Call to Action End -->
    <!-- Review Start -->
    <div class="review">
        <div class="container-fluid">
            <div class="row align-items-center review-slider normal-slider">
                <div class="col-md-6">
                    <div class="review-slider-item">
                        <div class="review-img">
                            <img src="img/review-1.jpg" alt="Image">
                        </div>
                        <div class="review-text">
                            <h2>Customer Name</h2>
                            <h3>Profession</h3>
                            <div class="ratting">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <p>
                                The best! Found me the perfect dress and such lovely service and attention. Not stuffy or overbearing and listen to what you want.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="review-slider-item">
                        <div class="review-img">
                            <img src="img/review-2.jpg" alt="Image">
                        </div>
                        <div class="review-text">
                            <h2>Customer Name</h2>
                            <h3>Profession</h3>
                            <div class="ratting">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <p>
                                Excellent shirt! Very comfortable and it has a soft lining which keeps you warm. Great shirt, i wear it almost daily. It’s not water-proof so keep that in mind when outside. Also, get 1 size bigger so when it shrinks, it'll still fit.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="review-slider-item">
                        <div class="review-img">
                            <img src="img/review-3.jpg" alt="Image">
                        </div>
                        <div class="review-text">
                            <h2>Customer Name</h2>
                            <h3>Profession</h3>
                            <div class="ratting">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <p>
                                Such a lovely experience. The girls made the experience really enjoyable even in the current climate. They were so helpful from start to finish., offering great advise and going above a beyond to help me find the perfect dress.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Review End -->
</asp:Content>