<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="ElibraryManagementSystem.adminmembermanagement" %>

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
                                    <h4>Member Details</h4>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label for="MemberID">Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="textMemberID" placeholder="ID" runat="server">
                                        </asp:TextBox>
                                        <asp:Button class="btn btn-info btn-sm ms-1" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Name" runat="server" ReadOnly="true">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Status" runat="server" ReadOnly="true">
                                        </asp:TextBox>
                                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success ms-1" runat="server" Text="S">
                                            <i class="fas fa-check-circle"></i></asp:LinkButton>
                                        
                                        <asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger ms-1" runat="server" Text="P">
                                            <i class="far fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton3" CssClass="btn btn-warning ms-1" runat="server" Text="D">
                                            <i class="far fa-times-circle"></i></asp:LinkButton>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" TextMode="Date" ReadOnly="true" runat="server" placeholder="dd-mm-yyyy" ID="textDOB"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" TextMode="Phone" ReadOnly="true" runat="server" placeholder="Contact No" ID="TextBox4"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" TextMode="Email" ReadOnly="true" runat="server" placeholder="abc@xyz.com" ID="TextBox5"></asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ReadOnly="true" runat="server" placeholder="State" ID="TextBox1"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ReadOnly="true" runat="server" placeholder="City" ID="TextBox6"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" TextMode="Number" ReadOnly="true" runat="server" placeholder="Pin" ID="TextBox7"></asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-12">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" TextMode="MultiLine" Rows="2" placeholder="Full Postal Address" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-8 d-grid gap-2 mx-auto">
                                <asp:Button class="btn btn-block btn-lg btn-danger" ID="Button2" runat="server" Text="Delete user Permanently" />
                            </div>
                        </div>


                    </div>
                </div>
            </div>


           <div class="col-md-7">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>Member List</h4>
                                <hr />
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <asp:GridView class="table-bordered table-striped" ID="GridView1" runat="server">
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            
        </div>
    </div>
</asp:Content>
