using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class administration_TechnicianMaintainance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void FormView1_RowUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            Label1.Text = (e.Exception.Message);
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else
        {
            DropDownList1.DataBind();
            Label1.Text = "Item Successfully Updated";
        }



    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {

        //GridView1.DataBind();
        if (e.Exception != null)
        {
            Label1.Text = (e.Exception.Message);
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;

        }
        else
            DropDownList1.DataBind();
        Label1.Text = "Item successfully Inserted";
    }
    protected void FormsView1_RowDeleted(object sender, FormViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            Label1.Text = "Error occured during the delete operation";
            e.ExceptionHandled = true;

        }
        else
        {
            DropDownList1.DataBind();
            Label1.Text = "Instance deleted Successfully";
        }
    }
}