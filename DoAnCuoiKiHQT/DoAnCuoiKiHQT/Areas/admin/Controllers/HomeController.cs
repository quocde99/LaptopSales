using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAnCuoiKiHQT.Models;
namespace DoAnCuoiKiHQT.Areas.admin.Controllers
{
    public class HomeController : Controller
    {
        // GET: admin/Home
        CuoiKi_HQTCSDLEntities db = new CuoiKi_HQTCSDLEntities();
        public ActionResult Index()
        {
            if(Session["Ad"]==null)
            {
                return RedirectToAction("Login","Home", new{ area = "" }); 
             }
            else
            {
                return View(db.LietKeGiayBanChay().ToList());
            }
        }
    }
}