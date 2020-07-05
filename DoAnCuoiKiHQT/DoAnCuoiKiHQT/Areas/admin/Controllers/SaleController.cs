using DoAnCuoiKiHQT.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnCuoiKiHQT.Areas.admin.Controllers
{
    public class SaleController : Controller
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
                var a = db.ViewSales.ToList();
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
        public ActionResult Create(Sale sale)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var a = db.Sale_I(sale.MaSale, sale.PtSale, sale.Tgbd, sale.Tgkt);
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
                var kq = db.Sale_SId(id).First();
            Sale sale = new Sale();
            sale.MaSale = kq.MaSale;
            sale.PtSale = kq.PtSale;
            sale.Tgbd = kq.Tgbd;
            sale.Tgkt = kq.Tgkt;
            return View(sale);
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
                var kq = db.Sale_SId(id).First();
            Sale sale = new Sale();
            sale.MaSale = kq.MaSale;
            sale.PtSale = kq.PtSale;
            sale.Tgbd = kq.Tgbd;
            sale.Tgkt = kq.Tgkt;
            return View(sale);
            }
        }
        [HttpPost]
        public ActionResult Edit(Sale sale)
        {
            if (Session["Ad"] == null)
            {
                return RedirectToAction("Login", "Home", new { area = "" });
            }
            else
            {
                var a = db.Sale_U(sale.MaSale, sale.PtSale, sale.Tgbd, sale.Tgkt);
            return RedirectToAction("Details", new { id = sale.MaSale });
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
                var a = db.Sale_D(id);
            return RedirectToAction("Index");
            }
        }

    }
}