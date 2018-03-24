using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductRegistration : System.Web.UI.Page
{
    private int cusId;
    private Customer customer;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // DropDownList1.Items.Add(new ListItem("--Select a Product--"));

            this.deactivatePageControls();


        }
    }
    protected void CustomerButton_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            cusId = int.Parse(txtboxcCustID.Text);
            this.getCustomerInstance();

        }

        if (DropDownList1.Items.Count >= 0)
        {
            DropDownList1.SelectedIndex = -1;
        }

    }


    private void getCustomerInstance()
    {
        DataView CustomerTable = (DataView)
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        CustomerTable.RowFilter = "CustomerID = ' " + cusId + " ' ";


        foreach (DataRowView rows in CustomerTable)
        {
            DataRow row = rows.Row;
            customer = new Customer();

            if (CustomerTable.Count > 0)
            {
                customer.name = row["Name"].ToString();
                customer.customerID = row["CustomerID"].ToString();
                txtboxcCustID.Text = customer.customerID;
                TextBox1.Text = customer.name;
                validPage();
            }
            else
            {
                deactivatePageControls();
            }
        }


    }

    protected bool validPage()


    {
        if (Page.IsValid)
        {
            DropDownList1.Enabled = true;
            btnRegister.Enabled = true;

            return true;
        }
        else
        {
            ValidationSummary1.HeaderText = "No instance for this Customer exist";
            return false;
        }
    }

    protected Boolean deactivatePageControls()
    {
        DropDownList1.Enabled = false;
        btnRegister.Enabled = false;
        return true;

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        var parameters = SqlDataSource3.InsertParameters;

        parameters["CustomerID"].DefaultValue = txtboxcCustID.Text;
        parameters["ProductCode"].DefaultValue = DropDownList1.SelectedValue;
        parameters["RegistrationDate"].DefaultValue = DateTime.Today.ToShortDateString();

        try
        {
            SqlDataSource3.Insert();

            txtboxcCustID.Text = "";
            DropDownList1.SelectedIndex = -1;
            TextBox1.Text = "";
            mailTextMsg();
            //Response.Redirect("~/ProductRegistration.aspx");

        }
        catch (Exception ex)
        {
            Session["exceptionMessage"] = ex.Message;
            Response.Redirect("~/ErrorMessage.aspx");
            
        }
    }

    private void mailTextMsg()
    {
        MailAddress fromAdd = new MailAddress("SportsPro@SportsSoftware.com");
        MailAddress toAdd = new MailAddress("Papercut@user.com");
        MailAddress toCC = new MailAddress("Saurabh.bnss0123@gmail.com");
        MailMessage message = new MailMessage(fromAdd, toAdd);
        message.Subject = "Regarding Registration of Products";
        message.Body = "The following Product have been Registered ! \n" + "\n" + DropDownList1.SelectedValue + DropDownList1.SelectedItem.Text + "\nThank you for your Business !";
        message.CC.Add(toCC);

        SmtpClient httpClient = new SmtpClient();
        httpClient.Send(message);
    }
}