<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="ElibraryManagementSystem.userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/generaluser.png" width="100px" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>

                                    <span>Account Status - </span>
                                    <asp:Label class="badge rounded-pill bg-primary" ID="Label1" runat="server" Text="Your Status">

                                    </asp:Label>
                                    <br />
                                    <hr />
                                    <br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="FullName">Full Name</label><br />
                                    <asp:TextBox CssClass="form-control" ID="TextBox1"
                                        runat="server" placeholder="Full Name">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="DateOfBirth">Date Of Birth</label><br />
                                    <asp:TextBox TextMode="Date" CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="dd-mm-yyyy">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Contact">Contact Number</label><br />
                                    <asp:TextBox TextMode="Phone" CssClass="form-control" ID="TextBox3"
                                        runat="server" placeholder="Contact">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="EmailID">EmailID</label><br />
                                    <asp:TextBox TextMode="Email" CssClass="form-control" ID="TextBox4"
                                        runat="server" placeholder="EmailID">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="State">State</label><br />
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                        <asp:ListItem Text="Assam" Value="Assam" />
                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Goa" Value="Goa" />
                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                        <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                        <asp:ListItem Text="Kerala" Value="Kerala" />
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                        <asp:ListItem Text="Manipur" Value="Manipur" />
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                        <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                        <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                        <asp:ListItem Text="Odisha" Value="Odisha" />
                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                        <asp:ListItem Text="Telangana" Value="Telangana" />
                                        <asp:ListItem Text="Tripura" Value="Tripura" />
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="City">City</label><br />
                                    <asp:TextBox class="form-control" ID="TextBox5"
                                        runat="server" placeholder="City">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="Picode">Pincode</label><br />
                                    <asp:TextBox TextMode="Number" CssClass="form-control" ID="TextBox6"
                                        runat="server" placeholder="Pincode">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <label for="Address">Full Address</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextAddress" runat="server"
                                            placeholder="Address" TextMode="MultiLine"> </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <center>
                                    <span class="badge rounded-pill bg-info">Login Credentials</span>
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="UserID">User ID</label><br />
                                    <asp:TextBox TextMode="Email" CssClass="form-control" ID="TextBox7"
                                        runat="server" placeholder="UserID" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="OldPassword">Old Password</label><br />
                                    <asp:TextBox TextMode="Password" CssClass="form-control" ID="TextBox8"
                                        runat="server" placeholder="OldPassword" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="NewPassword">New Password</label><br />
                                    <asp:TextBox TextMode="Password" CssClass="form-control" ID="TextBox9"
                                        runat="server" placeholder="New Password">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group d-grid gap-2 col-6 mx-auto">
                        <a class="btn btn-success" href="signUp.aspx" role="button">Update</a>
                    </div>

                </div>

            </div>
            <br />
        <div class="col-md-7">
            <div class="card">
                <div class="card-body">
                     <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/books.png" width="100px"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>

                                    <span>Your Issued Books</span><br />
                                    <asp:Label class="badge rounded-pill bg-primary" ID="Label2" runat="server" Text="Info about book due date">

                                    </asp:Label>
                                    <br />
                                    <hr />
                                    <br />
                                </center>
                            </div>

                        </div>
                    <div class="row">
                        <div class="col">
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
    
</asp:Content>
