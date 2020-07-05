﻿using DoAnCuoiKiHQT.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnCuoiKiHQT.Areas.admin.Controllers
{
    public class KhachHangController : Controller
    {
        CuoiKi_HQTCSDLEntities db = new CuoiKi_HQTCSDLEntities();
        // GET: admin/Table
        public ActionResult Index()
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var a = db.ViewKhacHangs.ToList();
            return View(a);
            }
        }
      
    }
}