<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="ElibraryManagementSystem.adminauthormanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <script type="text/javascript">
     $(document).ready(function () {

         //$(document).ready(function () {
         //$('.table').DataTable();
         // });

         $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         //$('.table1').DataTable();
     });
 </script>
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
                                    <img src="images/writer.png" width="100px" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>
                                    <br />
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label for="AuthorID">Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="AuthorID"
                                            runat="server" placeholder="AuthorID">
                                        </asp:TextBox>
                                        <asp:Button runat="server" CssClass="btn-btn-primary" ID="GoButton" Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label for="AuthorName">Author Name</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="AuthorName"
                                        runat="server" placeholder="Author Name">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="d-grid gap-2 col-4">
                                <asp:Button CssClass="btn btn-lg btn-block btn-primary" ID="Button1" runat="server" Text="Add" 
                                    OnClick="Button1_Click" />
                            </div>
                            <div class="d-grid gap-2 col-4">
                                <asp:Button CssClass="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                            </div>
                            <div class="d-grid gap-2 col-4">
                                <asp:Button CssClass="btn btn-lg btn-block btn-danger" ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
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
                            <h4>Author List</h4>
                            <hr />
                        </center>
                    </div>
                </div>

                <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" 
                            runat="server" ConnectionString="<%$ ConnectionStrings:ELibraryManagementSystemConnectionString %>" 
                            SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                    <div class="col">
                        <asp:GridView class="table table-bordered table-striped" 
                            ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</asp:Content>
