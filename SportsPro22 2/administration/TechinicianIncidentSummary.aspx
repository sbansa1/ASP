<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="TechinicianIncidentSummary.aspx.cs" Inherits="administration_TechinicianIncidentSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <div class="form-group">
                <label id="SelectTech" class="col-xs-4 col-sm-offset-1 col-sm-3 control-label">
                    Select A technician:</label>
                <div class="col-xs-8 col-sm-5">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="Name" DataValueField="TechID">
    </asp:DropDownList>
                    </div>
         </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllTechinicians" TypeName="TechnicianDB"></asp:ObjectDataSource>    
   

    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource2" AutoGenerateColumns ="False"
        CssClass="table table-bordered table-striped table-condensed">
                        <Columns>
                            <asp:BoundField DataField="DateOpened" HeaderText="DateOpened" DataFormatString="{0:d}">
                                <itemStyle CssClass="col-xs-3" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ProductCode" HeaderText="Product">
                                <itemStyle CssClass="col-xs-3" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Name" HeaderText="Customers">
                                <itemStyle CssClass="col-xs-3" />
                            </asp:BoundField>
                        </Columns>
    </asp:GridView>
   

    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetOpenTechIncidents" TypeName="IncidentDB">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="techID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
   

</asp:Content>

