using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SportsPro22.Startup))]
namespace SportsPro22
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
