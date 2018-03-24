<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerDisplay.aspx.cs" Inherits="administration_CustomerDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">



    <div class="container">
   

            <div class="row">
                <div class="col-sm-8" style="left: 5px; top: 40px">
                    <div class="form-group">
                        <label class="col-sm-5">Select a Customer:</label>
                        <div class="col-sm-6">  
                            <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack="True" 
                                DataSourceID="SqlDataSource1" DataTextField="Name" 
                                DataValueField="CustomerID" CssClass="form-control">
                            </asp:DropDownList>
                             
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString='<%$ ConnectionStrings:ConnectionString %>' 
                                SelectCommand="SELECT [CustomerID], [Name], [Address], 
                                [City], [State], [ZipCode], [Phone], [Email] FROM [Customers] 
                                ORDER BY [Name]">
                            </asp:SqlDataSource>

                        </div>
                    </div>
                     <div class="form-group">
                        <div class="col-sm-12">
                            <p>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="address" runat="server"></asp:Label>
                            </p>
                            <p>&nbsp;</p></div></div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <br />
                            Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="phone" runat="server"></asp:Label>
                        </div></div>
                    <div class="form-group">
                        <div class="col-sm-12">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="email" runat="server"></asp:Label>
                            
                    <div class="form-group">
                             <asp:Button ID="add" runat="server" CssClass="col-sm-3 btn-primary" OnClick="add_Click" Text="Add to Contact List" />
    <asp:Button ID="display" runat="server" Text="Display Contact List" CssClass="col-sm-offset-1 btn-primary" OnClick="display_Click" />
                         </div></div>
                      </div>
                    </div>
                </div>
                    
    
</div>
    

    

    <asp:Label ID="Label1" runat="server" CssClass="col-sm-offset-4"></asp:Label>
    

    



</asp:Content>

