using DoAnCuoiKiHQT.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnCuoiKiHQT.Areas.admin.Controllers
{
    public class KhoController : Controller
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
                var a = db.ViewKhoes.ToList();
            return View(a);
            }
        }
        [HttpGet]
        public ActionResult Create()
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                return View();
            }
        }
        [HttpPost]
        public ActionResult Create(Kho kho)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var a = db.Kho_I(kho.MaGiay,kho.Size,kho.SoLuong);
            return RedirectToAction("Index");
            }
        }
        public ActionResult Details(int? id)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var kq = db.Kho_SD(id).First();
            Kho kho = new Kho();
            kho.MaGiay = kq.MaGiay;
            kho.Size = kq.Size;
            kho.SoLuong = kq.SoLuong;

            return View(kho);
            }
        }

        public ActionResult Edit(int? id)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var kq = db.Kho_SD(id).First();
            Kho kho = new Kho();
            kho.MaGiay = kq.MaGiay;
            kho.Size = kq.Size;
            kho.SoLuong = kq.SoLuong;

            return View(kho);
            }
        }
        [HttpPost]
        public ActionResult Edit(Kho kho)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var a = db.Kho_U(kho.MaGiay, kho.Size,kho.SoLuong);
            return RedirectToAction("Details", new { id = kho.MaGiay });
            }
        }
        public ActionResult Delete(int id)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var a = db.Kho_D(id);
            return RedirectToAction("Index");
            }
        }
    }
}