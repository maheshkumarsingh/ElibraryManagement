<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="ElibraryManagementSystem.adminbookinventory" %>

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
                                    <h4>Book Details</h4>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-3">
                                <label for="BookID">Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="textBookID" placeholder="ID" runat="server">
                                        </asp:TextBox>
                                        <asp:Button class="btn btn-info btn-sm ms-1" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>



                            <div class="col-md-9">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Books Name in detail"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Hindi" Value="Hindi" />
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="Sanskrit" Value="Sanskrit" />
                                        <asp:ListItem Text="Marathi" Value="Marathi" />
                                    </asp:DropDownList>
                                </div>

                                <label>Publisher</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                                    </asp:DropDownList>

                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="A1" Value="A1" />
                                        <asp:ListItem Text="A2" Value="A2" />

                                    </asp:DropDownList>
                                </div>

                                <label>Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox TextMode="Date" CssClass="form-control" runat="server" ID="TextDate" placeholder="dd--mm-yyyy">

                                    </asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-4">
                                <label>Genere</label>
                                <div class="form-group">
                                    <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server"
                                        SelectionMode="Multiple" Rows="4">
                                        <asp:ListItem Text="Action" Value="Action" />
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                        <asp:ListItem Text="Self Help" Value="Self Help" />
                                        <asp:ListItem Text="Motivation" Value="Motivation" />
                                        <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                        <asp:ListItem Text="Wellness" Value="Wellness" />
                                        <asp:ListItem Text="Crime" Value="Crime" />
                                        <asp:ListItem Text="Drama" Value="Drama" />
                                        <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                        <asp:ListItem Text="Horror" Value="Horror" />
                                        <asp:ListItem Text="Poetry" Value="Poetry" />
                                        <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                        <asp:ListItem Text="Romance" Value="Romance" />
                                        <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                        <asp:ListItem Text="Suspense" Value="Suspense" />
                                        <asp:ListItem Text="Thriller" Value="Thriller" />
                                        <asp:ListItem Text="Art" Value="Art" />
                                        <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                        <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                        <asp:ListItem Text="Health" Value="Health" />
                                        <asp:ListItem Text="History" Value="History" />
                                        <asp:ListItem Text="Math" Value="Math" />
                                        <asp:ListItem Text="Textbook" Value="Textbook" />
                                        <asp:ListItem Text="Science" Value="Science" />
                                        <asp:ListItem Text="Travel" Value="Travel" />
                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="Edition" ID="TextBox1"></asp:TextBox>
                                </div>
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="stock" ID="TextBox5" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">



                                <label>Book per cost(per unit)</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="Cost" ID="TextBox3" TextMode="Number"></asp:TextBox>
                                </div>


                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ReadOnly="true" runat="server" placeholder="Current Stock" ID="TextBox4"></asp:TextBox>
                                </div>

                            </div>


                            <div class="col-md-4">



                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="No of Pages" ID="TextBox6" TextMode="Number"></asp:TextBox>
                                </div>


                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" placeholder="Issued Books" ID="TextBox7" ReadOnly="true"></asp:TextBox>
                                </div>

                            </div>


                        </div>

                        <div class="row">
                            <div class="col-12">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" 
                                        TextMode="MultiLine" Rows="2" placeholder="Description" ></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-4 d-grid gap-2">
                                <asp:Button class="btn btn-block btn-lg btn-success" ID="Button2" runat="server" 
                                    Text="Add" />
                            </div>
                            <div class="col-4 d-grid gap-2">
                                <asp:Button class="btn btn-block btn-lg btn-warning" ID="Button3" runat="server" 
                                    Text="Update" />
                            </div>
                            <div class="col-4 d-grid gap-2">
                                <asp:Button class="btn btn-block btn-lg btn-danger" ID="Button4" runat="server" 
                                    Text="Delete" />
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
                                    <h4>Book List</h4>
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
