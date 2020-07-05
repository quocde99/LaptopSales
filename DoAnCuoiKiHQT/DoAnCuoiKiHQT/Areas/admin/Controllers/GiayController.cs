using DoAnCuoiKiHQT.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnCuoiKiHQT.Areas.admin.Controllers
{
    public class GiayController : Controller
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
                var a = db.ViewGiays.ToList();
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
        public ActionResult Create(Giay giay)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var a = db.Giay_I(giay.MaGiay,giay.TenGiay, giay.Gia, giay.MaHang,giay.MaTheLoai,giay.MaSale,giay.HinhAnh);
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
                var kq = db.Giay_SD(id).First();
            Giay giay = new Giay();
            giay.MaGiay = kq.MaGiay;
            giay.TenGiay = kq.TenGiay;
            giay.Gia = kq.Gia;
            giay.MaHang = kq.MaHang;
            giay.MaTheLoai = kq.MaTheLoai;
            giay.MaSale = kq.MaSale;
            giay.HinhAnh = kq.HinhAnh;

            return View(giay);
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
                var kq = db.Giay_SD(id).First();
            Giay giay = new Giay();
            giay.MaGiay = kq.MaGiay;
            giay.TenGiay = kq.TenGiay;
            giay.Gia = kq.Gia;
            giay.MaHang = kq.MaHang;
            giay.MaTheLoai = kq.MaTheLoai;
            giay.MaSale = kq.MaSale;
            giay.HinhAnh = kq.HinhAnh;

            return View(giay);
            }
        }
        [HttpPost]
        public ActionResult Edit(Giay giay)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var a = db.Giay_U(giay.MaGiay, giay.TenGiay, giay.Gia, giay.MaHang, giay.MaTheLoai, giay.MaSale, giay.HinhAnh);
                return RedirectToAction("Details", new { id = giay.MaGiay });
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
                var a = db.Giay_D(id);
            return RedirectToAction("Index");
            }
        }
    }
}