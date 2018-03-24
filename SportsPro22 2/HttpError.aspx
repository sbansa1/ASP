<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HttpError.aspx.cs" Inherits="HttpError" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <h3> An unexpected HTTP error has occurred. </h3>

    <asp:Button ID="Button1" runat="server" Text="ReturnToHomePage" CssClass="btn-primary" OnClick="Button1_Click" />
</asp:Content>

