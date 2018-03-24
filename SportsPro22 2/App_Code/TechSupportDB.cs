using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TechSupportDB
/// </summary>
public class TechSupportDB
{
    public static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings[
            "ConnectionString"].ConnectionString;
    }
}