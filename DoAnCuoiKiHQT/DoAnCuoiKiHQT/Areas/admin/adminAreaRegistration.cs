using System.Web.Mvc;
using System.Web.Routing;

namespace DoAnCuoiKi1.Areas.admin
{
    public class adminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "admin_default",
                "admin/{controller}/{action}/{id}",
                new { action = "Index", Controller = "Giay", area = "admin", id = UrlParameter.Optional },
                new[] { "DoAnCuoiKiHQT.Areas.admin.Controllers" }
            );
        }
    }
}