<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Start -->
    <div class="breadcrumb-wrap">
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item">
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Home</asp:LinkButton></li>
                <li class="breadcrumb-item">
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Products</asp:LinkButton></li>
                <li class="breadcrumb-item active">Checkout</li>
            </ul>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Checkout Start -->
    <div class="checkout">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8">
                    <div class="checkout-inner">
                        <div class="billing-address">
                            <h2>Billing Address</h2>
                            <div class="row">
                                <div class="col-md-4">
                                    <asp:Label ID="Label10" runat="server" Text="Label">Order#</asp:Label>
                                    <asp:TextBox ID="TextBox9" runat="server" class="form-control" type="text" placeholder="Order#"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <asp:Label ID="Label1" runat="server" Text="Label">First Name</asp:Label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" type="text" placeholder="First Name"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <asp:Label ID="Label2" runat="server" Text="Label">Last Name</asp:Label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" type="text" placeholder="Last Name"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="Label3" runat="server" Text="Label">E-mail</asp:Label>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" type="text" placeholder="E-mail"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="Label4" runat="server" Text="Label">Mobile No</asp:Label>
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" type="text" placeholder="Mobile No"></asp:TextBox>
                                </div>
                                <div class="col-md-12">
                                    <asp:Label ID="Label5" runat="server" Text="Label">Address</asp:Label>
                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" type="text" placeholder="Address"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="Label6" runat="server" Text="Label">Country</asp:Label>
                                    <asp:DropDownList class="custom-select" ID="DropDownList1" runat="server">
                                        <asp:ListItem Selected="True">Pakistan</asp:ListItem>
                                        <asp:ListItem>India</asp:ListItem>
                                        <asp:ListItem>United Kingdom</asp:ListItem>
                                        <asp:ListItem>United State</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="Label7" runat="server" Text="Label">City</asp:Label>
                                    <asp:TextBox ID="TextBox6" runat="server" class="form-control" type="text" placeholder="City"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="Label8" runat="server" Text="Label">State</asp:Label>
                                    <asp:TextBox ID="TextBox7" runat="server" class="form-control" type="text" placeholder="State"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="Label9" runat="server" Text="Label">ZIP Code</asp:Label>
                                    <asp:TextBox ID="TextBox8" runat="server" class="form-control" type="text" placeholder="ZIP Code"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="checkout-inner">
                        <div class="checkout-summary">
                            <h1>Cart Total</h1>
                            <asp:Label ID="Label11" runat="server" Text="Label">Grand Total</asp:Label>
                            <asp:TextBox ID="TextBox10" runat="server" class="form-control" type="text" placeholder="Grand Total"></asp:TextBox>
                        </div>

                        <div class="checkout-payment">
                            <div class="payment-methods">
                                <h1>Payment Methods</h1>
                                <div class="payment-method">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" id="payment-1" name="payment">
                                        <label class="custom-control-label" for="payment-1">Paypal</label>
                                    </div>
                                    <div class="payment-content" id="payment-1-show">
                                        <p>
                                            PayPal is the faster, safer way to send money, make an online payment, receive money or set up a merchant account.
                                        </p>
                                    </div>
                                </div>
                                <div class="payment-method">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" id="payment-2" name="payment">
                                        <label class="custom-control-label" for="payment-2">Payoneer</label>
                                    </div>
                                    <div class="payment-content" id="payment-2-show">
                                        <p>
                                            Your Payoneer account is your key to unlock a universe of opportunities. Whether making international payments, receiving funds, managing your digital business, or accessing capital.
                                        </p>
                                    </div>
                                </div>
                                <div class="payment-method">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" id="payment-3" name="payment">
                                        <label class="custom-control-label" for="payment-3">Check Payment</label>
                                    </div>
                                    <div class="payment-content" id="payment-3-show">
                                        <p>
                                            A check payment is a negotiable instrument drawn against deposited funds, to pay the recipient a specific amount of funds on demand.
                                        </p>
                                    </div>
                                </div>
                                <div class="payment-method">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" id="payment-4" name="payment">
                                        <label class="custom-control-label" for="payment-4">Direct Bank Transfer</label>
                                    </div>
                                    <div class="payment-content" id="payment-4-show">
                                        <p>
                                            Direct Bank Transfer is a gateway that require no payment be made online. Orders using Direct Bank Transfer are set On Hold until payment clears outside of Estore.
                                        </p>
                                    </div>
                                </div>
                                <div class="payment-method">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" id="payment-5" name="payment">
                                        <label class="custom-control-label" for="payment-5">Cash on Delivery</label>
                                    </div>
                                    <div class="payment-content" id="payment-5-show">
                                        <p>
                                            Cash on delivery, sometimes called collect on delivery or cash on demand, is the sale of goods by mail order where payment is made on delivery rather than in advance. If the goods are not paid for, they are returned to the retailer.
                                    </div>
                                </div>
                            </div>

                            <asp:LinkButton ID="LinkButton1" class="btn" runat="server" OnClick="LinkButton1_Click">Place Order</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Checkout End -->
</asp:Content>