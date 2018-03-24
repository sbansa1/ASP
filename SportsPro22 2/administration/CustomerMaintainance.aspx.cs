using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class administration_CustomerMaintainance : System.Web.UI.Page
{
    protected void GridView1_PreRender(object sender, EventArgs e)
    {
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
    }

    protected void DetailsView1_RowUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            Label1.Text = DatabaseErrorMessage(e.Exception.Message);
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else
        {
             GridView1.DataBind();
            Label1.Text = ConcurrencyErrorMessage();
        }
    }

    protected void DetailsView1_RowDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
             Label1.Text = DatabaseErrorMessage(e.Exception.Message);
            e.ExceptionHandled = true;
            
            

        }
        else 
        {
            GridView1.DataBind();
             Label1.Text = ConcurrencyErrorMessage();
        }
    }

    private string DatabaseErrorMessage(string errorMsg)
    {
        return $"<b>A database error has occurred:</b> {errorMsg}";
    }
    private string ConcurrencyErrorMessage()
    {
        return "Another user may have updated that category. Please try again";
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {

        //GridView1.DataBind();
        if (e.Exception != null)
        {
            Label1.Text = DatabaseErrorMessage(e.Exception.Message);
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
            
        }
        else
            GridView1.DataBind();
    }
}