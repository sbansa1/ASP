using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;
using Microsoft.AspNet.FriendlyUrls.Resolvers;

namespace SportsPro22
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Temporary;
            routes.EnableFriendlyUrls(settings, new Class1());

            
            routes.MapPageRoute("ProductMaintainance", "ProductMaintainance", "~/administration/ProductMaintainance.aspx");
            routes.MapPageRoute("CustomerMaintainance", "CustomerMaintainance", "~/Administration/CustomerMaintainance.aspx");
            routes.MapPageRoute("TechnicianMaintainance", "TechnicianMaintainance", "~/Administration/TechnicianMaintainance.aspx");
            routes.MapPageRoute("DisplayIncidents", "IncidentDisplay", "~/Administration/IncidentDisplay.aspx");
            routes.MapPageRoute("DisplayIncidentsTechnician", "TechinicianIncidentSummary", "~/Administration/TechinicianIncidentSummary.aspx");
            routes.MapPageRoute("DisplayCustomers", "CustomerDisplay", "~/Administration/CustomerDisplay.aspx");
            routes.MapPageRoute("ProductRegistration", "ProductRegistration", "~/ProductRegistration.aspx");
            routes.MapPageRoute("ContactUs", "ContactUs", "~/ContactUs.aspx");
            routes.MapPageRoute("CustomerSurvey", "CustomerSurvey", "~/CustomerSurvey.aspx");
            routes.MapPageRoute("CustomerIncidentDisplay", "CustomerIncidentDisplay", "~/CustomerIncidentDisplay.aspx");
            routes.MapPageRoute("UpdateIncidents", "IncidentUpdate", "~/IncidentUpdate.aspx");
            routes.MapPageRoute("SurveyComplete", "SurveyComplete", "~/SurveyComplete.aspx");
            routes.MapPageRoute("Default", "Default", "~/Default.aspx");
            routes.MapPageRoute("ContactDisplay", "ContactDisplay", "~/administration/ContactDisplay.aspx");




        }
    }
}