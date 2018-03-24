using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class administration_CustomerDisplay : System.Web.UI.Page
{

    private Customer customer;
    protected void Page_Load(object sender, EventArgs e)
    {
        //bind drop-down list on first load   
        if (!IsPostBack) ddlCustomers.DataBind();
        customer = this.GetSelectedCustomer();
        address.Text = customer.address + " \n" + customer.city + " , " + customer.state + " " + customer.zipCode;
        phone.Text = customer.phone;
        email.Text = customer.email;


    }
    private Customer GetSelectedCustomer()
    {
        //get row from SqlDataSource based on value in drop-down list
        System.Data.DataView customersTable = (DataView)
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        customersTable.RowFilter =
            "CustomerID = '" + ddlCustomers.SelectedValue + "'";
        DataRowView row = customersTable[0];

        //create a new product object and load with data from row
        Customer c = new Customer();
        c.customerID = row["CustomerID"].ToString();
        c.name = row["Name"].ToString();
        c.address = row["Address"].ToString();
        c.city = row["City"].ToString();
        c.state = row["State"].ToString();
        c.phone = row["Phone"].ToString();
        c.zipCode = row["ZipCode"].ToString();
        c.email = row["Email"].ToString();

        return c;
    }

    protected void add_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //get cart from session and selected item from cart
            CustomerList cust = CustomerList.GetCustomer();
            CustomerItem custom = cust[customer.name];

            if (custom == null)
            {
                cust.AddItem(customer);
                Response.Redirect("~/ContactDisplay", false);


            }
            //  if(custom.Equals(customer.ToSt))
            {

                Label1.Text = "Customer Already Exist";
            }
        }
        // Response.Redirect("~/ContactDisplay.aspx", false);
    }

    protected void display_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ContactDisplay");
    }
}
