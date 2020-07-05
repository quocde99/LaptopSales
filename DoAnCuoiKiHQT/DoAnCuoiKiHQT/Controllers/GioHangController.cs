using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAnCuoiKiHQT.Models;
namespace DoAnCuoiKiHQT.Controllers
{
    public class GioHangController : Controller
    {
        LaptopSaleEntities lap = new LaptopSaleEntities();
        // GET: Cart
        public ActionResult Index()
        {

            //var cart = Session[CartSession];
            if (Session["A"] == null)
            {
                return RedirectToAction("Index","Home");
            }
            else
            {
                string tendn = Session["A"].ToString();
                // return View(db.Showgiohang(tendn).ToList());
                return View(lap.Carts.ToList());
            }
        }
        //
        public RedirectToRouteResult SuaSoLuong(int SanPhamID,string ID, int soluongmoi)
        {
            if (Session["A"] == null)
            {
                return RedirectToAction("Index");
            }
            else
            {
                // update 
                lap.Update_Cart(SanPhamID, ID, soluongmoi);
                return RedirectToAction("Index");
            }
        }
        public RedirectToRouteResult XoaKhoiGio(int SanPhamID)
        {
            if (Session["A"] == null)
            {
                return RedirectToAction("Index");
            }
            else
            {
                // tìm carditem muon sửa
                lap.Delete_Cart(SanPhamID, Session["A"].ToString());
                return RedirectToAction("Index");
            }

        }
        //thêm vào giỏ hàng
        
        public RedirectToRouteResult ThemVaoGio(int sanPhamID)
        {
            if (Session["A"] == null)
            {
                return RedirectToAction("Login", "Home");
            }
            else
            {
                var product = lap.Products.Find(sanPhamID);
                //ViewBag.Tendn = Session["A"];
                var userId = Session["A"].ToString();
                int soluong = Convert.ToInt32(Request["quantity"]);
                //proc add vào giỏ hàng
                //kiểm tra trùng thì tăng số lượng
                // lấy ra tất cả sp của khách hàng a
                var khA = lap.Carts.Where(p => p.UserID == userId && p.ProductID == sanPhamID).ToList();
                
                if(khA.Count != 0)
                {
                    lap.Update_Cart(product.ProductID, userId, soluong+khA[0].Quantity );
                }
                else
                {
                    lap.Add_Cart(sanPhamID, userId, product.ProductName, product.Price, soluong, product.Picture);
                }
                return RedirectToAction("Index", "GioHang");
            }
        }
        [HttpGet]
        public ActionResult Payment(string MaKh)
        {
            if (Session["A"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
                //string tendn = Session["A"].ToString();
                DateTime tg = DateTime.Now;
                // thêm khi bấm thanh toán 
                var khachHang = lap.Users.Where(p => p.UserID == MaKh).ToList();
                var cartKH = lap.Carts.Where(P => P.UserID == MaKh).ToList();
                int countOrder = lap.Orders.Count();
                if (cartKH != null)
                {
                    // thêm vào order
                    lap.Add_Order(countOrder + 1, tg, tg, 0, khachHang[0].Address, MaKh);
                    foreach (var item in cartKH)
                    {
                        //thêm order detail
                        lap.Add_OrderDetail(countOrder + 1, item.ProductID, item.ProductName, item.Price, item.Quantity);
                        // xóa item trong giỏ
                        lap.Delete_Cart(item.ProductID, MaKh);
                    }
                }
                return RedirectToAction("Index", "GioHang");
            }
        }

       
    }
}