using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAnCuoiKiHQT.Models;
namespace DoAnCuoiKiHQT.Controllers
{
    public class LoginController : Controller
    {
      
        public ActionResult Index()
        {
            if (Session["A"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            else
            {
                return View("Index");
            }
        }
    }
}