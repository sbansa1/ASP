<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NoAccess.aspx.cs" Inherits="NoAccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>You do not have permission to access the page requested</h3>
    <asp:Button ID="Button1" runat="server" Text="ReturnToHomePage" CssClass="btn-primary" OnClick="Button1_Click" />
</asp:Content>

