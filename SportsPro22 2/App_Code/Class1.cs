using System.Web;
using Microsoft.AspNet.FriendlyUrls.Resolvers;
using Microsoft.AspNet.FriendlyUrls;

namespace SportsPro22
{



    public class Class1 : WebFormsFriendlyUrlResolver
    {
        protected override bool TrySetMobileMasterPage(HttpContextBase ex, System.Web.UI.Page page, string mobileSuffix)
        {
            return false;
        }


        public override string ConvertToFriendlyUrl(string path)
        {
            if (!string.IsNullOrEmpty(path))
            {
                if (path.Contains("ProductMaintainance") || path.Contains("CustomerMaintainance") || path.Contains("TechnicianMaintainance") || 
                    path.Contains("IncidentDisplay") ||path.Contains("CustomerDisplay") || path.Contains("TechinicianIncidentSummary"))
                {
                    path = "/Administration" + path.Replace(".aspx", "");

                }
                if(path.Contains("CustomerSurvey") || path.Contains("ProductRegistration"))
                {
                    path = "/CustomerSupport" + path.Replace(".aspx", "");
                }
                if(path.Contains("CustomerIncidentDisplay") || path.Contains("IncidentUpdate"))
                {
                    path = "/TechSupport" + path.Replace(".aspx", "");
                }
                if(path.Contains("ContactUs"))
                {
                    path = "/ContactUs" + path.Replace(".aspx", "");
                }
                if (path.Contains("Default"))
                {
                    path = "/Default" + path.Replace(".aspx", "");
                }
                if (path.Contains("SurveyComplete"))
                {
                    path = "/SurveyComplete" + path.Replace(".aspx", "");
                }
                if (path.Contains("ContactDisplay"))
                {
                    path = "ContactDisplay" + path.Replace(".aspx", "");
                }
            }
            return base.ConvertToFriendlyUrl(path);

        }
    }
}