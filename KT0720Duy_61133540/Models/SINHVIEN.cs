//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KT0720Duy_61133540.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SINHVIEN
    {
        public string MaSV { get; set; }
        public string HoSV { get; set; }
        public string TenSV { get; set; }
        public System.DateTime NgaySinh { get; set; }
        public Nullable<bool> GioiTinh { get; set; }
        public string AnhNV { get; set; }
        public string DiaChi { get; set; }
        public string MaLop { get; set; }
    
        public virtual LOP LOP { get; set; }
    }
}
