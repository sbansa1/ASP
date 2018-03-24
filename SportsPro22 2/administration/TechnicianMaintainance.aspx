<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TechnicianMaintainance.aspx.cs" Inherits="administration_TechnicianMaintainance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="form-group">
                <label id="lblState" class="col-xs-4 col-sm-offset-1 col-sm-3 control-label">
                    Choose a Technician:</label>
                <div class="col-xs-8 col-sm-5">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="TechID" CssClass="dropdown-toggle btn-primary active dropdown" style="left: -4px; top: 7px">
    </asp:DropDownList>
                    </div>
        </div>
    <div class="form-group">
        <label id="lblSta">Select A technician:</label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Technicians]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="TechID" DataSourceID="SqlDataSource2" OnItemDeleted ="FormsView1_RowDeleted" OnItemInserted ="FormView1_ItemInserted" OnItemUpdated ="FormView1_RowUpdated" CssClass ="table table-bordered table-condensed">
        <EditItemTemplate>
            TechID:
            <asp:Label ID="TechIDLabel1" runat="server" Text='<%# Eval("TechID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' ControlToValidate="NameTextBox" />
            <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                                    ControlToValidate="NameTextBox" CssClass="text-danger"
                                    ErrorMessage="Name is a required field.">
                                </asp:RequiredFieldValidator>
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                                    ControlToValidate="EmailTextBox" CssClass="text-danger"
                                    ErrorMessage="Email is a required field.">
                                </asp:RequiredFieldValidator>
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="PhoneTextBox" CssClass="text-danger"
                                    ErrorMessage="Phone is a required field.">
                                </asp:RequiredFieldValidator>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        
        <InsertItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' CssClass ="form-control"/>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                                    ControlToValidate="NameTextBox" CssClass="text-danger"
                                    ErrorMessage="Name is a required field.">
                                </asp:RequiredFieldValidator>
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                                    ControlToValidate="EmailTextBox" CssClass="text-danger"
                                    ErrorMessage="Email is a required field.">
                                </asp:RequiredFieldValidator>
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="PhoneTextBox" CssClass="text-danger"
                                    ErrorMessage="Phone is a required field.">
                                </asp:RequiredFieldValidator>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            TechID:
            <asp:Label ID="TechIDLabel" runat="server" Text='<%# Eval("TechID") %>' ValidateRequestMode="Inherit" CssClass="form-control" />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' CssClass ="form-control"/>
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' CssClass ="form-control"/>
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' CssClass ="form-control"/>

            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Technicians] WHERE [TechID] = @TechID" InsertCommand="INSERT INTO [Technicians] ([Name], [Email], [Phone]) VALUES (@Name, @Email, @Phone)" SelectCommand="SELECT * FROM [Technicians] WHERE ([TechID] = @TechID)" UpdateCommand="UPDATE [Technicians] SET [Name] = @Name, [Email] = @Email, [Phone] = @Phone WHERE [TechID] = @TechID">
        <DeleteParameters>
            <asp:Parameter Name="TechID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="TechID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="TechID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" CssClass="alert-danger"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                    HeaderText="Please correct the following errors:" 
                    ValidationGroup="Edit" CssClass="text-danger" />  
    </div>
</asp:Content>

