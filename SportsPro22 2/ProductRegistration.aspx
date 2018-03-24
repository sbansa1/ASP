<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProductRegistration.aspx.cs" Inherits="ProductRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="row">
        <div class="form-inline">
            <div class="col-xs-3">
                Enter customer ID</div>
            <asp:TextBox ID="txtboxcCustID" runat="server" CssClass="col-md-3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredCustID" runat="server" ControlToValidate="txtboxcCustID" CssClass="col-sm-3" Display="Dynamic" ErrorMessage="Enter your Customer ID number" ValidationGroup="cust1"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidCustID" runat="server" ControlToValidate="txtboxcCustID" CssClass="col-sm-3" Display="Dynamic" ErrorMessage="DataType does not match" Operator="DataTypeCheck" Type="Integer" ValidationGroup="cust1"></asp:CompareValidator>
            <br />
            <br />
            <div class="col-xs-3">
               customer</div>
               <asp:TextBox ID="TextBox1" runat="server" CssClass="col-md-3"></asp:TextBox>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="btn-danger" ValidationGroup="cust1" />
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="No Instance of the customer exists" ControlToValidate="txtboxcCustID" ValidationGroup ="cust1"></asp:CustomValidator>
            <br />
            <br />
            <br />
        </div>
        <div class="col-sm-6">
            <div class="btn-group-vertical">
                <asp:Button ID="CustomerButton" runat="server" CssClass="btn btn-primary"  Text="Get Customers" ValidationGroup="cust1" OnClick="CustomerButton_Click" />
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
            <br />
            <br />
            <div class="col-xs-3">
               Products</div>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="col-md-3 black-type" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="ProductCode" Width="198px" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductCode], [Name] FROM [Products] ORDER BY [Name]"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1"
                    Display="Dynamic" ErrorMessage="You must select a product." InitialValue="None"
ValidationGroup="RegisterProduct" Width="183px" ForeColor="Red"></asp:RequiredFieldValidator>

            <br />
            <br />

            <br />

            <br />

        </div>
        <div class="col-sm-12">
            <div class="btn-group-vertical">
        <asp:Button ID="btnRegister" CssClass="btn btn-primary" runat="server" Text="Register Product" 
        Enabled="False" ValidationGroup="RegisterProduct" onclick="btnRegister_Click" /><br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        DeleteCommand="DELETE FROM [Registrations] WHERE [CustomerID] = @CustomerID AND [ProductCode] = @ProductCode"
        InsertCommand="INSERT INTO [Registrations] ([CustomerID], [ProductCode], [RegistrationDate]) VALUES (@CustomerID, @ProductCode, @RegistrationDate)"
        SelectCommand="SELECT CustomerID, ProductCode, RegistrationDate FROM Registrations WHERE (CustomerID = @CustomerID)"
        UpdateCommand="UPDATE [Registrations] SET [RegistrationDate] = @RegistrationDate WHERE [CustomerID] = @CustomerID AND [ProductCode] = @ProductCode">
        <DeleteParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="ProductCode" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="RegistrationDate" Type="DateTime" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="ProductCode" Type="String" />
        </UpdateParameters>
       <SelectParameters>
            <asp:ControlParameter ControlID= "txtboxcCustID" Name="CustomerID" PropertyName="Text"
Type="Int32" />
       </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="ProductCode" Type="String" />
            <asp:Parameter Name="RegistrationDate" Type="DateTime" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblErrorMessage" runat="server" EnableViewState="False" ForeColor="Red"></asp:Label><br />
                </div>
            <br />
</div>
   


    </div>
</asp:Content>

