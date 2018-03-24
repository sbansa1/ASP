<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="IncidentDisplay.aspx.cs" Inherits="administration_IncidentDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="background-color: #FFFFFF;color: #284775;">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Techname:
            <asp:Label ID="TechnameLabel" runat="server" Text='<%# Eval("Techname") %>' />
            <br />
            CustName:
            <asp:Label ID="CustNameLabel" runat="server" Text='<%# Eval("CustName") %>' />
            <br />
            DateOpened:
            <asp:Label ID="DateOpenedLabel" runat="server" Text='<%# Eval("DateOpened") %>' />
            <br />
            DateClosed:
            <asp:Label ID="DateClosedLabel" runat="server" Text='<%# Eval("DateClosed") %>' />
            <br />
            Title:
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Techname:
            <asp:TextBox ID="TechnameTextBox" runat="server" Text='<%# Bind("Techname") %>' />
            <br />
            CustName:
            <asp:TextBox ID="CustNameTextBox" runat="server" Text='<%# Bind("CustName") %>' />
            <br />
            DateOpened:
            <asp:TextBox ID="DateOpenedTextBox" runat="server" Text='<%# Bind("DateOpened") %>' />
            <br />
            DateClosed:
            <asp:TextBox ID="DateClosedTextBox" runat="server" Text='<%# Bind("DateClosed") %>' />
            <br />
            Title:
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br />
            <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Techname:
            <asp:TextBox ID="TechnameTextBox" runat="server" Text='<%# Bind("Techname") %>' />
            <br />
            CustName:
            <asp:TextBox ID="CustNameTextBox" runat="server" Text='<%# Bind("CustName") %>' />
            <br />
            DateOpened:
            <asp:TextBox ID="DateOpenedTextBox" runat="server" Text='<%# Bind("DateOpened") %>' />
            <br />
            DateClosed:
            <asp:TextBox ID="DateClosedTextBox" runat="server" Text='<%# Bind("DateClosed") %>' />
            <br />
            Title:
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br />
            <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #E0FFFF;color: #333333;">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Techname:
            <asp:Label ID="TechnameLabel" runat="server" Text='<%# Eval("Techname") %>' />
            <br />
            CustName:
            <asp:Label ID="CustNameLabel" runat="server" Text='<%# Eval("CustName") %>' />
            <br />
            DateOpened:
            <asp:Label ID="DateOpenedLabel" runat="server" Text='<%# Eval("DateOpened") %>' />
            <br />
            DateClosed:
            <asp:Label ID="DateClosedLabel" runat="server" Text='<%# Eval("DateClosed") %>' />
            <br />
            Title:
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="4">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonCssClass="btn-primary" ButtonType="Button" FirstPageText="" LastPageText="" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Techname:
            <asp:Label ID="TechnameLabel" runat="server" Text='<%# Eval("Techname") %>' />
            <br />
            CustName:
            <asp:Label ID="CustNameLabel" runat="server" Text='<%# Eval("CustName") %>' />
            <br />
            DateOpened:
            <asp:Label ID="DateOpenedLabel" runat="server" Text='<%# Eval("DateOpened") %>' />
            <br />
            DateClosed:
            <asp:Label ID="DateClosedLabel" runat="server" Text='<%# Eval("DateClosed") %>' />
            <br />
            Title:
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Products.Name, Technicians.Name AS Techname, Customers.Name AS CustName, Incidents.DateOpened, Incidents.DateClosed, Incidents.Title, Incidents.Description FROM Incidents INNER JOIN Customers ON Incidents.CustomerID = Customers.CustomerID INNER JOIN Products ON Incidents.ProductCode = Products.ProductCode LEFT OUTER JOIN Technicians ON Incidents.TechID = Technicians.TechID"></asp:SqlDataSource>
</asp:Content>

