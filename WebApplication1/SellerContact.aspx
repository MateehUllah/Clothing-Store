<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SellerContact.aspx.cs" Inherits="WebApplication1.WebForm5" %>
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
                    <li class="breadcrumb-item active">Seller Contact</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <!-- Contact Start -->
        <div class="contact">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                       
                    </div>
                    <div class="col-lg-6">
                        <div class="contact-form">
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:TextBox ID="TextBox1" type="email" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" rows="5" placeholder="Message"></asp:TextBox>
                                </div>
                                <div><asp:LinkButton ID="LinkButton1" class="btn" type="submit" runat="server" OnClick="LinkButton1_Click">Send Message</asp:LinkButton></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
