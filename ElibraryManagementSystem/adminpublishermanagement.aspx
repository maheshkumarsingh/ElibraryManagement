<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="ElibraryManagementSystem.adminpublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/publisher.png" width="100px" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher Details</h4>
                                    <br />
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label for="PublisherID">Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="PublisherID"
                                            runat="server" placeholder="Publisher ID">
                                        </asp:TextBox>
                                        <asp:Button runat="server" CssClass="btn-btn-info" ID="GoButton" Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label for="PublisherName">Publisher Name</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="PublisherName"
                                        runat="server" placeholder="Publisher Name">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-4">
                                <asp:Button CssClass="btn btn-lg btn-block btn-primary" ID="Button1" runat="server" Text="Add" />
                            </div>
                            <div class="col-4">
                                <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Update" />
                            </div>
                            <div class="col-4">
                                <asp:Button CssClass="btn btn-lg btn-block btn-danger" ID="Button3" runat="server" Text="Delete" />
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
                            <h4>Publishers Name</h4>
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
