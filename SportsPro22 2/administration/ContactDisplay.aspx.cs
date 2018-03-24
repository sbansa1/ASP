using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class administration_ContactDisplay : System.Web.UI.Page
{
    private CustomerList c;
    protected void Page_Load(object sender, EventArgs e)
    {
        c = CustomerList.GetCustomer();
        if (!IsPostBack)

            this.box_SelectedIndexChanged();

    }


    protected void remove_Click(object sender, EventArgs e)
    {
        if (c.Count > 0)
        {
            if (box.SelectedIndex > -1)
            {
                c.RemoveAt(box.SelectedIndex);
                this.box_SelectedIndexChanged();
            }
            else
            {

            }
        }
    }

    protected void empty_Click(object sender, EventArgs e)
    {
        if (c.Count > 0)
        {
            c.Clear();
            box.Items.Clear();
        }

    }

    protected void adcustomers_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CustomerDisplay", false);
    }



    protected void box_SelectedIndexChanged()
    {
        box.Items.Clear();
        CustomerItem cust;
        for (int i = 0; i < c.Count; i++)
        {
            cust = c[i];
            box.Items.Add(cust.Display());

        }
    }
}

