<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FileNotFound.aspx.cs" Inherits="FileNotFound" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1><strong>NOT FOUND</strong></h1>
    <p>The resource you created cannot be found</p>
    <asp:Button ID="Button1" runat="server" Text="ReturnToHomePage" CssClass="btn-primary" OnClick="Button1_Click" />
</asp:Content>

