using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_484LoadDock411.Startup))]
namespace _484LoadDock411
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
