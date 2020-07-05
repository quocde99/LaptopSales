using DoAnCuoiKiHQT.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnCuoiKiHQT.Areas.admin.Controllers
{
    public class HangGiayController : Controller
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
                var a = db.ViewHangGiays.ToList();
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
        public ActionResult Create(HangGiay hang)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var a = db.HangGiay_I(hang.MaHang, hang.TenHang);
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
                var kq = db.HangGiay_SD(id).First();
            HangGiay hang = new HangGiay();
            hang.MaHang = kq.MaHang;
            hang.TenHang = kq.TenHang;

            return View(hang);
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
                var kq = db.HangGiay_SD(id).First();
            HangGiay hang = new HangGiay();
            hang.MaHang = kq.MaHang;
            hang.TenHang = kq.TenHang;

            return View(hang);
            }
        }
        [HttpPost]
        public ActionResult Edit(HangGiay hang)
        {

            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var a = db.HangGiay_U(hang.TenHang, hang.MaHang);
            return RedirectToAction("Details", new { id = hang.MaHang });
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

                var a = db.HangGiay_D(id);
            return RedirectToAction("Index");
            }
        }
    }
}