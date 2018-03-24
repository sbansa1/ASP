<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ContactDisplay.aspx.cs" Inherits="administration_ContactDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


    <div class="container">
           
        
                <div class="row">

                    <div class="col-sm-6">
                        <div class="form-group">
                            <asp:ListBox ID="box" runat="server" Width="649px"></asp:ListBox>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="button-group-vertical">
                            <asp:Button ID="remove" runat="server" Text="Remove Contact" OnClick="remove_Click" CssClass="btn-primary col-sm--6 col-sm-offset-6 btn-group-default" />
                            <div>
                            </div>
                            <asp:Button ID="empty" runat="server" Text="Empty List" OnClick="empty_Click" CssClass="btn-primary col-sm-6 col-sm-offset-6 btn-group-default " />
                        </div>
                    </div>


                    <div class="form group">
                        <div class="col-sm-8">
                            <div class=" btn-group-vertical">

                                <asp:Button ID="adcustomers" runat="server" Text="Select Additional Customers" OnClick="adcustomers_Click" CssClass="btn-primary btn-primary-default col-sm-12 " />
                            </div>
                        </div>
                    </div>
                </div>
          
    </div>





</asp:Content>

