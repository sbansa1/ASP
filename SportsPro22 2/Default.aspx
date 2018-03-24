<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3><strong>Welcome!
        </strong></h3>
     
    <asp:LoginView ID="LoginView1" runat="server">
       <AnonymousTemplate>
           <a runat="server" href="~/Account/login">login</a>
              <a runat="server" href="~/Account/Register">Register</a>
            </AnonymousTemplate>
    <LoggedInTemplate>
                <a runat="server" href="~/Account/Manage">Manage your Account</a>
       <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutText="Logout" OnLoggingOut ="LoginStatus1_LoggingOut" LogoutPageUrl="~/"/>


            </LoggedInTemplate>
    
        </asp:LoginView>
        
     <%--<asp:HyperLink runat="server" NavigateUrl="~/Account/Register">Order a Product</asp:HyperLink><br />
        (All users including <br />anonymous users)--%>

    <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Maintenance">Maintain Users and Roles</asp:HyperLink><br />
        (Only users associated <br />with the Admin role)--%>
</asp:Content>

