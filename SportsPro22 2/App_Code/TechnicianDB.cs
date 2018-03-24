using System;
using System.Configuration;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

[DataObject]
public class TechnicianDB
{
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetAllTechinicians()
    {
        SqlConnection con = new SqlConnection(TechSupportDB.GetConnectionString());
        string sel =
            "SELECT TechID,Name , Email, Phone " + "FROM Technicians ORDER BY Name";
        SqlCommand cmd = new SqlCommand(sel, con);
        con.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        return rdr;
    }
}