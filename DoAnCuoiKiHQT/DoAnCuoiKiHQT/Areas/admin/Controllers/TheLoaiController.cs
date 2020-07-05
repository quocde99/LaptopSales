using DoAnCuoiKiHQT.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnCuoiKiHQT.Areas.admin.Controllers
{
    public class TheLoaiController : Controller
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
                var a = db.ViewTheLoais.ToList();
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
        public ActionResult Create(TheLoai theloai)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var a = db.TheLoai_I(theloai.MaTheLoai,theloai.TenTheLoai);
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
                var kq = db.TheLoai_SD(id).First();
            TheLoai theloai = new TheLoai();
            theloai.MaTheLoai = kq.MaTheLoai;
            theloai.TenTheLoai = kq.TenTheLoai;

            return View(theloai);
            }
        }
        //[HttpGet]
        public ActionResult Edit(int? id)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var kq = db.TheLoai_SD(id).First();
            TheLoai theloai = new TheLoai();
            theloai.MaTheLoai = kq.MaTheLoai;
            theloai.TenTheLoai = kq.TenTheLoai;

            return View(theloai);
            }
        }
        [HttpPost]
        public ActionResult Edit(TheLoai theloai)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var a = db.TheLoai_U(theloai.MaTheLoai,theloai.TenTheLoai);
            return RedirectToAction("Details", new { id = theloai.MaTheLoai });
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
                var a = db.TheLoai_D(id);
            return RedirectToAction("Index");
            }
        }

    }
}