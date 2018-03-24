<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerSurvey.aspx.cs" Inherits="CustomerSurvey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div class="row">
                <div class="form-inline">
                    <div class="col-xs-3">Enter customer Number</div>


                    <asp:TextBox ID="txtboxcCustID" runat="server" CssClass="col-md-3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredCustID" runat="server" ControlToValidate="txtboxcCustID" Display="Dynamic" ErrorMessage="Enter your Customer ID number" ValidationGroup="cust1" CssClass="col-sm-3"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidCustID" runat="server" ControlToValidate="txtboxcCustID" Display="Dynamic" ErrorMessage="CompareValidator" Operator="DataTypeCheck" Type="Integer" ValidationGroup="cust1" CssClass="col-sm-3"></asp:CompareValidator>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="cust1" CssClass="btn-danger" />
                </div>
                <div class="col-sm-6">
                    <div class="btn-group-vertical">
                        <asp:Button ID="IncidentButton" runat="server" Text="Get Incidents" ValidationGroup="cust1" OnClick="IncidentButton_Click" CssClass ="btn-primary" />
                    </div>
                </div>


                <div>
                </div>

                <div>
                    <div>
                    </div>
                </div>
                <div class=" form-group">
                    <div class=" list-group-item-text">
                        <div class="col-sm-9">
                            <asp:ListBox ID="ListIncidents" runat="server" DataSourceID="SqlDataSource1" DataTextField="CustomerID" DataValueField="CustomerID" Width="536px" CssClass="col-sm-6 col-sm-offset-3" style="left: 0px; top: 0px"></asp:ListBox>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Incidents]"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                <div>
                    <div>
                        <div>
                            <div>
                                <div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        <div>Please Rate Incidents by following Category</div>
                    </div>
                    <div>
                    </div>
                    <div>
                        <div>
                        </div>
                    </div>
                </div>
                <div>
                    <div>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-sm-3">Response Time</div>
                    <div class="radio radio-inline form-inline">

                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="col-sm-12" Width ="681px">
                            <asp:ListItem Value="1">Not Satisfied</asp:ListItem>

                            <asp:ListItem Value="2">somewhat satisfied</asp:ListItem>
                            <asp:ListItem Value="3">satisfied</asp:ListItem>
                            <asp:ListItem Value="4">Completely Satisfied</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>

                </div>


                <div class="form-group row">
                    <div class="col-sm-3">Technician Efficiency </div>
                    <div class="radio-inline radio ">
                       <span class ="radiobutton">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" CssClass="col-sm-12"  Width="681px">
                            <asp:ListItem Value="1">Not satisfied</asp:ListItem>
                            <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
                            <asp:ListItem Value="3">Satisfied</asp:ListItem>
                            <asp:ListItem Value="4">Completely Satisfied</asp:ListItem>
                        </asp:RadioButtonList>
                           </span>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-sm-3">Problem Resolution</div>
                    <div class="radio-inline radio">

                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" CssClass="col-sm-12" Width="681px" >
                            <asp:ListItem Value="1">Not Satisfied</asp:ListItem>
                            <asp:ListItem Value="2">Somewhat Satisfied</asp:ListItem>
                            <asp:ListItem Value="3">Satisfied</asp:ListItem>
                            <asp:ListItem Value="4">Completely Satisfied</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>


                <div class="col-sm-3 row">Additional Comments</div>

                <asp:TextBox ID="TextBox2" runat="server" Height="64px" TextMode="MultiLine" Width="872px" CssClass="auto-style2"></asp:TextBox>
                <div>
                    <div>
                    </div>
                </div>
                <div class="form-group col-sm-12">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Please Contact me to discuss this Incident" CssClass="col-sm-3" />
                    <div class="radio col-sm-10">
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" CssClass="col-sm-6 col-sm-push-1">
                            <asp:ListItem>Submit By email</asp:ListItem>
                            <asp:ListItem>Submit by phone</asp:ListItem>
                        </asp:RadioButtonList>

                    </div>
                </div>
                <div class="form-inline col-sm-12 row">
                    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" CssClass="col-sm-3 btn-primary" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ListIncidents" ErrorMessage="No customer with that ID exists"></asp:RequiredFieldValidator>
                </div>
            </div> 
    
</asp:Content>

 


