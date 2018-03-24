<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SurveyComplete.aspx.cs" Inherits="SurveyComplete" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="container">  
    
        <br />
       
        <br />
        <div style="margin: auto; width: 50%">

            <asp:Label ID="Thankyou" Text="Thank you for your Feedback !" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Customerexecutive" Text="Customer Service Executive will contact you in 24 hours" runat="server" ForeColor="Blue"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Return to Survey" CssClass="btn btn-primary" PostBackUrl="~/CustomerSurvey.aspx" OnClick="Button1_Click"/>
            </div>
        
    
        </div>
        </asp:Content>



