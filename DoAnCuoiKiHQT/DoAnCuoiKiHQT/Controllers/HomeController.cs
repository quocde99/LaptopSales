using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAnCuoiKiHQT.Models;
using System.Data;
using PagedList;
namespace DoAnCuoiKiHQT.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        
        
        
        LaptopSaleEntities laptopsale = new LaptopSaleEntities();
        public ActionResult Index()
        {
            return View();
        }
        // show một số sản phẩm nổi bậc
        public PartialViewResult LatestPartial()
        {
            //var sp = db.Showsanpham().ToList();
            var sp = laptopsale.Products.ToList();
            return PartialView(sp);
        }
      

        public ActionResult Login()
        {
            Session.RemoveAll();
            return View("Login");
        }
        // đăng nhập
        [HttpPost]
        public ActionResult Login(FormCollection fc)
        {
            string tendn = fc["tendn"];
            string matkhau = fc["password"];
            bool kiemtra = KiemTraTaiKhoan(tendn, matkhau);
            if (kiemtra)
            {
                Session["A"] = tendn;
                return View("Index");
            }
            //if (kiemtra == 1)
            //{
            //    if (a==1)
            //    {
            //        Session["A"] = tendn;
            //        return View("Index");
            //    }
            //    else if(a==-1)
            //    {
            //        Session["Ad"] = tendn;
            //        return RedirectToAction("Home/Index","admin");
            //    }
            //    else 
            //    {
            //        Session["A"] = null;
            //        ViewBag.ThongTin = "Tên đăng nhập hoặc mật khẩu sai !";
            //        return View();
            //    }
            //}
            // nếu kiem tra nếu k tồn tại thì trả về view
            ViewBag.ThongTin = "Tên đăng nhập không tồn tại !";
            return View();
        }
        // hàm kiểm tra tài khoản
        public bool KiemTraTaiKhoan(string tenDn,string matKhau)
        {
           if (laptopsale.Users.Count(p => p.UserID.ToString() == tenDn & p.Password == matKhau)> 0){
                return true;
             }
            return false;
        }
        public ActionResult Register()
        {
            return View();
        }
        // Đăng kí tài khoản
        [HttpPost]
        public ActionResult Register(FormCollection fc,KhachHang Kh)
        {
            Kh.TenDN = fc["Tendn"];
            Kh.TenKH = fc["TenKH"];
            Kh.MatKhau = fc["MatKhau"];
            Kh.Sdt = fc["telephone"];
            Kh.Email = fc["email"];
            Kh.DiaChi = fc["diachi"];
            string s = Kh.TenDN;
            int kiemTra = laptopsale.Users.Count(p => p.UserID == Kh.TenDN);
            try
            {
                if (kiemTra == 1)
                {
                    ViewBag.Show = "Tên đăng nhập đã tồn tại";                  
                    return View();
                }
                else
                {
                    using (var context = new LaptopSaleEntities())
                    {
                        var users = new User();
                        {
                            users.UserID = Kh.TenDN;
                            users.Password = Kh.MatKhau;
                            users.PhoneNumber = Kh.Sdt;
                            users.isAdmin = false;
                            users.Address = Kh.DiaChi;
                            users.Email = Kh.Email;
                            laptopsale.Users.Add(users);
                        };
                        context.Users.Add(users);
                        context.SaveChanges();
                    }
                    ViewBag.Show = "Đăng ký thành công! Vui lòng đăng nhập";
                    return View();
                }
            }
            catch
            {
                ViewBag.Show = "Vui lòng nhập đầy đủ thông tin";
                return View();

            }
        }
        public ActionResult ForgottenPassword()
        {
            return View();
        }
        // product
        public ActionResult Product(int sanPhamID)
        {
            //var sanPham =  laptopsale.Products.Where(p => p.ProductID == sanPhamID).First();    
            if(sanPhamID == null)
            {
                return View("Index");
            }
            return View(laptopsale.Detail_Product(sanPhamID).First());
        }
       
        public ActionResult ProductList(FormCollection fc,int? page)
        {
            var sp = new List<Product>();
            string timkiem = fc["ten"];
            if (page == null)
                page = 1;
            int PageSize = 16;
            int PageNumber = (page ?? 1);
            if (timkiem==null)
            {
                sp = laptopsale.Products.ToList();
            }
            else
            {
                var all = laptopsale.Products.ToList();
                foreach(var i in all)
                {
                    if (i.ProductName.ToUpper().IndexOf(timkiem.ToUpper()) !=-1)
                    {
                        sp.Add(i);
                    }
                }
            }
            return View(sp.ToPagedList(PageNumber,PageSize));
        }
    }
}