using System;
using System.Configuration;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


[DataObject]
public class IncidentDB
{
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetOpenTechIncidents(int techID)

    {
        SqlConnection con = new SqlConnection(TechSupportDB.GetConnectionString());
        string sel = "SELECT Customers.Name,Incidents.ProductCode,Incidents.DateOpened,Incidents.TechID " +
                     " FROM Customers INNER JOIN " +
                     " Incidents ON Customers.CustomerID = Incidents.CustomerID " +
                      " WHERE(Incidents.TechID = @TechID)" +
                     " ORDER BY Incidents.DateOpened DESC";

        SqlCommand cmd = new SqlCommand(sel, con);
        cmd.Parameters.AddWithValue("TechID", techID);
        con.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        return rdr;
    }
}