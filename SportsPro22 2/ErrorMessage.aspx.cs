using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ErrorMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Exception error = new Exception();

        Label1.Text = DatabaseErrorMessage("The Selected product already Exists Please choose a different Product");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ProductRegistration.aspx");
    }
    private string DatabaseErrorMessage(string errorMsg)
    {
        return $"<b>A database error has occurred:</b> {errorMsg}";
    }
}