<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerIncidentDisplay.aspx.cs" Inherits="CustomerIncidentDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
                
    <asp:Label ID="Label1" runat="server" Text="Select a customer"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CustomerID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Customers.Name, Incidents.CustomerID FROM Customers INNER JOIN Incidents ON Customers.CustomerID = Incidents.CustomerID"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Title:
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
            <br />
            Expr1:
            <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
            <br />
            DateOpened:
            <asp:Label ID="DateOpenedLabel" runat="server" Text='<%# Eval("DateOpened") %>' />
            <br />
            DateClosed:
            <asp:Label ID="DateClosedLabel" runat="server" Text='<%# Eval("DateClosed") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Products.Name, Incidents.Title, Technicians.Name AS Expr1, Incidents.DateOpened, Incidents.DateClosed FROM Incidents INNER JOIN Products ON Incidents.ProductCode = Products.ProductCode INNER JOIN Technicians ON Incidents.TechID = Technicians.TechID WHERE (Incidents.CustomerID = @CustomerID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="CustomerID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
                
</asp:Content>

