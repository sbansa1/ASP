using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CustomerSurvey : System.Web.UI.Page
{


        private Survey customerSurvey;
        private Incident incident;
        private int cusId;
        private bool ckbox;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.getCustomerInstance();
                this.deactivatePageControls();

            }

            // ListIncidents.Items.Add(new ListItem("--Select an Incident--"));


        }

        protected void IncidentButton_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {

                cusId = int.Parse(txtboxcCustID.Text);
                ListIncidents.Items.Clear();
                this.getCustomerInstance();


                //  ListIncidents.Items.Add(incident.CustDisplay());
                //ListIncidents.SelectedIndex = -1;

            }
            if (ListIncidents.Items.Count > 1)
            {
                this.validPage();
                ListIncidents.SelectedIndex = -1;


            }
        }



        protected Boolean validPage()


        {
            if (Page.IsValid)
            {
                RadioButtonList1.Enabled = true;
                RadioButtonList2.Enabled = true;
                RadioButtonList3.Enabled = true;
                RadioButtonList4.Enabled = true;
                CheckBox1.Enabled = true;
                Submit.Enabled = true;
                return true;
            }
            else
            {
                ListIncidents.Items.Clear();
                ValidationSummary1.HeaderText = "No instance for this Customer exist";
                return false;
            }

        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            customerSurvey = new Survey();
            customerSurvey.CustomerID = (int)cusId;
            customerSurvey.IncidentID = ListIncidents.SelectedIndex;
            customerSurvey.ResponseTime = (int.Parse)(RadioButtonList1.SelectedValue);
            customerSurvey.TechEfficiency = int.Parse(RadioButtonList2.SelectedValue);
            customerSurvey.Resolution = int.Parse(RadioButtonList3.SelectedValue);
            customerSurvey.Comments = TextBox2.Text;
            if (CheckBox1.Checked)
            {
                ckbox = true;
            }
            else
            {

                ckbox = false;
            }

            Session.Add("CheckBoxSession", ckbox);
            Response.Redirect("~/SurveyComplete");

        }

        private void getCustomerInstance()
        {
            DataView IncidentsTable = (DataView)
                SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            IncidentsTable.RowFilter = "DateClosed IS NOT NULL AND CustomerID = ' " + cusId + " ' ";
            ListIncidents.Items.Add(new ListItem("--Select an Incident--"));

            foreach (DataRowView rows in IncidentsTable)
            {
                DataRow row = rows.Row;


                incident = new Incident();
                incident.IncidentID = (int)row["IncidentID"];
                incident.CustomerID = (int)row["CustomerID"];
                incident.ProductCode = row["ProductCode"].ToString();
                incident.TechID = (int)row["TechID"];
                incident.Title = row["Title"].ToString();
                incident.DateOpened = (DateTime)row["DateOpened"];
                incident.DateClosed = (DateTime)row["DateClosed"];
                incident.Description = row["Description"].ToString();
                ListIncidents.Items.Add(incident.CustDisplay());



            }
        }
        protected Boolean deactivatePageControls()


        {
            RadioButtonList1.Enabled = false;
            RadioButtonList2.Enabled = false;
            RadioButtonList3.Enabled = false;
            RadioButtonList4.Enabled = false;
            CheckBox1.Enabled = false;
            Submit.Enabled = false;
            return true;

        }

    }









