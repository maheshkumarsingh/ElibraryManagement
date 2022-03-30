<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="ElibraryManagementSystem.adminbookissuing" %>

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
                                    <img src="images/books1.png" width="100px" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>
                                    <br />
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="MemberID">Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="MemberID"
                                            runat="server" placeholder="ID">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <label for="BookID">Book ID</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="BookID"
                                        runat="server" placeholder="Book ID">
                                    </asp:TextBox>
                                    <asp:Button runat="server" CssClass="btn btn-info" ID="GoButton" Text="Go" />
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <label for="MemberName">Member Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1"
                                            runat="server" placeholder="Member Name" ReadOnly="true">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label for="BookName">Book Name</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2"
                                        runat="server" placeholder="Book Name" ReadOnly="true">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <label for="StartDate">Start Date</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3"
                                            runat="server" TextMode="Date" placeholder="dd-mm-yyyy">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label for="EndDate">End Date</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4"
                                        runat="server" TextMode="Date" placeholder="dd-mm-yyyy">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="d-grid gap-2 col-6">
                            <asp:Button CssClass="btn btn-lg btn-block btn-primary" ID="Button1" runat="server" Text="Issue" />
                        </div>
                        <div class="d-grid gap-2 col-6">
                            <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Return" />
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
                                <h4>Issued Book List</h4>
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
