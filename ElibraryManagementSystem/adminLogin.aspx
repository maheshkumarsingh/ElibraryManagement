<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="ElibraryManagementSystem.adminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/adminuser.png" width="150px" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
                                    <br />
                                    <hr />
                                    <br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="AdminEmail">Admin ID</label><br />
                                    <asp:TextBox CssClass="form-control" ID="textAdminID"
                                        runat="server" placeholder="Admin ID">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="AdminPassword">Admin Password</label>
                                    <br />
                                    <asp:TextBox TextMode="Password" CssClass="form-control" ID="textAdminPassword"
                                        runat="server" placeholder="Password">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group d-grid gap-2">
                            <asp:Button ID="Button1" CssClass="btn btn-success btn-lg" runat="server" Text="LogIn" 
                                OnClick="Button1_Click" />
                        </div>

                    </div>

                </div>
            <a href="HomePage.aspx"><< Back To Home</a><br />
            </div>

        </div>
    </div>

</asp:Content>
