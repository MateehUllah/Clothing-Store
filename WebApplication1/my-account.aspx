<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="my-account.aspx.cs" Inherits="WebApplication1.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap">
            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Home</asp:LinkButton></li>
                    <li class="breadcrumb-item">
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Products</asp:LinkButton></li>
                    <li class="breadcrumb-item active">My Account</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumb End -->
        
        <!-- My Account Start -->
        <div class="my-account">
        <h4>Account Details</h4>
         <div class="row">
       <div class="col-md-6">
       <asp:TextBox ID="TextBox1" class="form-control" type="text" placeholder="First Name" runat="server"></asp:TextBox> 
         </div>
       <div class="col-md-6">
     <asp:TextBox ID="TextBox2" runat="server" class="form-control" type="text" placeholder="Last Name"></asp:TextBox>
       </div>
    <div class="col-md-6">
   <asp:TextBox ID="TextBox3" runat="server" class="form-control" type="text" placeholder="Mobile"></asp:TextBox>
   </div>
    <div class="col-md-6">
     <asp:TextBox ID="TextBox4" runat="server" class="form-control" type="text" placeholder="Email"></asp:TextBox>
     </div>
     <div class="col-md-12">
     <asp:LinkButton ID="LinkButton6" runat="server" class="btn" OnClick="LinkButton6_Click">Update Account</asp:LinkButton>
     <br><br>
     </div>
     </div>
     <h4>Password change</h4>
     <div class="row">
                                    <div class="col-md-6">
                                        <asp:TextBox ID="TextBox5" runat="server" class="form-control" type="password" placeholder="New Password"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="TextBox6" runat="server" class="form-control" type="password" placeholder="Confirm Password"></asp:TextBox>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:LinkButton ID="LinkButton7" runat="server" class="btn" OnClick="LinkButton7_Click">Save Changes</asp:LinkButton>
                                    </div>
                                    </div>
                                <div class="row">
                                       <div class="col-md-6">
                                        <asp:LinkButton ID="LinkButton8" runat="server" class="btn" OnClick="LinkButton8_Click">Delete Account</asp:LinkButton>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:LinkButton ID="LinkButton1" runat="server" class="btn" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
</asp:Content>
