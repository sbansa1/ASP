using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class administration_ProductMaintainance : System.Web.UI.Page
{
    protected void GridView1_PreRender(object sender, EventArgs e)
    {
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = DatabaseErrorMessage(e.Exception.Message);
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else if (e.AffectedRows == 0)
        {
           lblError.Text = ConcurrencyErrorMessage();
        }
    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        { 
           lblError.Text = DatabaseErrorMessage(e.Exception.Message);
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
           lblError.Text = ConcurrencyErrorMessage();
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
        if (e.Exception != null)
        {
            lblError.Text = DatabaseErrorMessage(e.Exception.Message);
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
        }
        else
            GridView1.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            var parameters = SqlDataSource1.InsertParameters;
            parameters["ProductCode"].DefaultValue = ProductID.Text;
            parameters["Version"].DefaultValue = Version.Text;
            parameters["Name"].DefaultValue = Name.Text;
            parameters["ReleaseDate"].DefaultValue = Date.Text;
        }
        try
        {
            SqlDataSource1.Insert();
            ProductID.Text = "";
            Version.Text = "";
            Name.Text = "";
            Date.Text = "";
        }
        catch (Exception ex)
        {
            lblError.Text = DatabaseErrorMessage(ex.Message);
        }
    }
}
