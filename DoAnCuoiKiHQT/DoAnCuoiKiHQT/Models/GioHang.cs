//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoAnCuoiKiHQT.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class GioHang
    {
        public int MaDH { get; set; }
        public decimal GiaTriDon { get; set; }
        public string TenDN { get; set; }
        public Nullable<int> MaGiay { get; set; }
        public Nullable<int> Size { get; set; }
        public Nullable<int> Soluong { get; set; }
        public Nullable<bool> ThanhToan { get; set; }
    
        public virtual Giay Giay { get; set; }
        public virtual KhachHang KhachHang { get; set; }
    }
}
