using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Project6v2.Startup))]
namespace Project6v2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
