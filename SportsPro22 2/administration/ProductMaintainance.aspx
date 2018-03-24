<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProductMaintainance.aspx.cs" Inherits="administration_ProductMaintainance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
   
   
    <div class="col-xs-12 table-responsive">
                <h1>Product Maintenance</h1>
                <asp:GridView ID="GridView1" runat="server"
                    AutoGenerateColumns="False" DataKeyNames="ProductCode"
                    DataSourceID="SqlDataSource1"
                    CssClass="table table-bordered table-condensed "
                    OnPreRender="GridView1_PreRender"
                    OnRowDeleted="GridView1_RowDeleted"
                    OnRowUpdated="GridView1_RowUpdated">
                    <Columns>
                        <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" 
                            ReadOnly="True" SortExpression="ProductCode">
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Version" HeaderText="Version" SortExpression="Version" />
                        <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" DataFormatString="{0:d}" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    
                    <AlternatingRowStyle CssClass="altRow" />
                    <EditRowStyle CssClass="warning" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    ConflictDetection="CompareAllValues" 
                    OldValuesParameterFormatString="original_{0}"
                    SelectCommand="SELECT * FROM [Products]"
                    DeleteCommand="DELETE FROM [Products] WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [Version] = @original_Version AND [ReleaseDate] = @original_ReleaseDate" 
                    InsertCommand="INSERT INTO [Products] ([ProductCode], [Name], [Version], [ReleaseDate]) VALUES (@ProductCode, @Name, @Version, @ReleaseDate)" 
                    UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Version] = @Version, [ReleaseDate] = @ReleaseDate WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [Version] = @original_Version AND [ReleaseDate] = @original_ReleaseDate">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ProductCode" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_Name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_Version" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="original_ReleaseDate" Type="DateTime" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ProductCode" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Version" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="ReleaseDate" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Version" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="ReleaseDate" Type="DateTime"></asp:Parameter>
                        <asp:Parameter Name="original_ProductCode" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_Name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_Version" Type="Decimal" />
                        <asp:Parameter Name="original_ReleaseDate" Type="DateTime" />
                    </UpdateParameters>
                </asp:SqlDataSource>  
                
                <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                    HeaderText="Please correct the following errors:" 
                    ValidationGroup="Edit" CssClass="text-danger" />  
            </div>

            <div class="col-xs-12">
                <p>To create a new Product, enter the Product Information and click add product</p>
                <p><asp:Label ID="lblError" runat="server" EnableViewState="false" 
                        CssClass="text-danger"></asp:Label></p>

                <div class="form-group">
                    <label for="txtID" class="col-sm-2" style="left: 0px; top: 9px; height: 21px">ProductCode</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="ProductID" runat="server" MaxLength="10" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-offset-3 col-sm-4">
                        <asp:RequiredFieldValidator ID="rfvID" runat="server" 
                            ControlToValidate="ProductID" CssClass="text-danger" 
                            ErrorMessage="Product Code is a required field">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="Name" class="col-sm-2">Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="Name" runat="server" MaxLength="15" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-offset-2 col-sm-4">
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                        ControlToValidate="Name" CssClass="text-danger" 
                        ErrorMessage="Name is a required">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>              
                <div class="form-group">
                    <label for="Version" class="col-sm-2">Version</label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="Version" runat="server" MaxLength="50" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:RequiredFieldValidator ID="rfv_version" runat="server" 
                        ControlToValidate="Version" CssClass="text-danger" 
                        ErrorMessage="Version is a required field">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="Date" class="col-sm-2">Date</label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="Date" runat="server" MaxLength="50" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="Date" CssClass="text-danger" 
                        ErrorMessage="Date is a required field">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

                <asp:Button ID="Button1" runat="server" Text="Add New Product" 
                    CssClass="bg-primary" OnClick="Button1_Click" />
            </div>  
</asp:Content>

