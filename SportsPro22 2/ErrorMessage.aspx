<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ErrorMessage.aspx.cs" Inherits="ErrorMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1><strong>An unrecoverable Error Has Occured</strong></h1>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<br />
<br />
<asp:Button ID="Button1" runat="server" CssClass="btn-primary" OnClick="Button1_Click" Text="Return" />
</asp:Content>

