using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;


namespace QuanLyShopDT
{
    public class XuLy
    {
        SqlConnection conn = new SqlConnection("Data Source=WIN2K\\WIN2K;Initial Catalog=QL_ShopDT;User ID=sa;Password=sa2012");
        SqlDataAdapter da_SanPham;
        SqlDataAdapter da_SanPhamAdd;
        DataSet dsSanPham = new DataSet();
        DataSet dsSanPhamAdd = new DataSet();
        DataSet dsAdmin = new DataSet();
        DataSet dsAdminFull = new DataSet();
        DataSet dsCustomer = new DataSet();
        DataSet dsNSX = new DataSet();
        DataSet dsPL = new DataSet();
        SqlDataAdapter da_Admin;
        SqlDataAdapter da_Customer;
        public XuLy()
        {
            loadSanPham();
            loadSanPhamAdd1();
        }

        public DataTable loadCustomer()
        {
            string lenhSQL = "SELECT MAKH, HOTEN, NGAYSINH, GIOITINH, CMND, DIACHI, DT, EMAIL FROM KHACHHANG";
            da_Customer = new SqlDataAdapter(lenhSQL, conn);
            da_Customer.Fill(dsCustomer, "KhachHang");
            DataColumn[] khoachinh = new DataColumn[1];
            khoachinh[0] = dsCustomer.Tables["KhachHang"].Columns[0];
            dsCustomer.Tables["KhachHang"].PrimaryKey = khoachinh;
            return dsCustomer.Tables["KhachHang"];
        }

        public DataTable loadNSX()
        {
            string lenhSQL = "SELECT * FROM NHASANXUAT";
            SqlDataAdapter da_NSX = new SqlDataAdapter(lenhSQL, conn);
            da_NSX.Fill(dsNSX, "NhaSanXuat");
            DataColumn[] khoachinh = new DataColumn[1];
            khoachinh[0] = dsNSX.Tables["NhaSanXuat"].Columns[0];
            dsNSX.Tables["NhaSanXuat"].PrimaryKey = khoachinh;
            return dsNSX.Tables["NhaSanXuat"];
        }

        public DataTable loadPhanLoai()
        {
            string lenhSQL = "SELECT * FROM SANPHAM";
            SqlDataAdapter da_SanPhamPL = new SqlDataAdapter(lenhSQL, conn);
            da_SanPhamPL.Fill(dsPL, "SANPHAM");
            DataColumn[] khoachinh = new DataColumn[1];
            khoachinh[0] = dsPL.Tables["SANPHAM"].Columns[0];
            dsPL.Tables["SanPham"].PrimaryKey = khoachinh;
            return dsPL.Tables["SanPham"];
        }

        public DataTable loadSanPham()
        {
            string lenhSQL = "SELECT SP.MASP, SP.TENSP, SP.PHANLOAI, SP.GIAMUA, SP.GIABAN, SP.SLTON, SP.HINHANH FROM SANPHAM SP";
            da_SanPham = new SqlDataAdapter(lenhSQL, conn);
            da_SanPham.Fill(dsSanPham, "SanPham");
            DataColumn[] khoachinh = new DataColumn[1];
            khoachinh[0] = dsSanPham.Tables["SanPham"].Columns[0];
            dsSanPham.Tables["SanPham"].PrimaryKey = khoachinh;
            return dsSanPham.Tables["SanPham"];
        }

        public DataTable loadSanPhamAdd()
        {
            string lenhSQL = "SELECT MaSP,MaSX,TenSP, GiaMua, GiaBan,NgayNhap,SLTon,HinhAnh,PhanLoai,GhiChu,CT1,CT2,CT3,CT4,CT5,CT6,CT7,CT8,CT9,CT10,CT11,CT12,CT13,CT14,CT15,CT16,CT17,CT18,CT19,CT20,CT21,CT22,CT23,CT24,CT25,CT26,CT27,CT28,CT29,CT30,NoiBat FROM SANPHAM";
            da_SanPhamAdd = new SqlDataAdapter(lenhSQL, conn);
            da_SanPhamAdd.Fill(dsSanPhamAdd, "SanPham");
            DataColumn[] khoachinh = new DataColumn[1];
            khoachinh[0] = dsSanPhamAdd.Tables["SanPham"].Columns[0];
            dsSanPhamAdd.Tables["SanPham"].PrimaryKey = khoachinh;
            return dsSanPhamAdd.Tables["SanPham"];
        }

        public void loadSanPhamAdd1()
        {
            string lenhSQL = "SELECT MaSP,MaSX,TenSP, GiaMua, GiaBan,NgayNhap,SLTon,HinhAnh,PhanLoai,GhiChu,CT1,CT2,CT3,CT4,CT5,CT6,CT7,CT8,CT9,CT10,CT11,CT12,CT13,CT14,CT15,CT16,CT17,CT18,CT19,CT20,CT21,CT22,CT23,CT24,CT25,CT26,CT27,CT28,CT29,CT30,NoiBat FROM SANPHAM";
            da_SanPhamAdd = new SqlDataAdapter(lenhSQL, conn);
            da_SanPhamAdd.Fill(dsSanPhamAdd, "SanPham");
            DataColumn[] khoachinh = new DataColumn[1];
            khoachinh[0] = dsSanPhamAdd.Tables["SanPham"].Columns[0];
            dsSanPhamAdd.Tables["SanPham"].PrimaryKey = khoachinh;
        }

        //public DataTable loadAdmin()
        //{
        //    string lenhSQL = "SELECT * FROM ADMIN";
        //    SqlDataAdapter da_Admin = new SqlDataAdapter(lenhSQL, conn);
        //    da_Admin.Fill(dsAdmin, "Admin");
        //    DataColumn[] khoachinh = new DataColumn[1];
        //    khoachinh[0] = dsAdmin.Tables["Admin"].Columns[0];
        //    dsAdmin.Tables["Admin"].PrimaryKey = khoachinh;
        //    return dsAdmin.Tables["Admin"];
        //}

        public DataTable loadAdmin()
        {
            string lenhSQL = "SELECT MAAD, HOTEN, NGAYSINH, GIOITINH, CMND, DIACHI, DT, EMAIL, PASSWORD FROM ADMIN";
            da_Admin = new SqlDataAdapter(lenhSQL, conn);
            da_Admin.Fill(dsAdmin, "Admin");
            DataColumn[] khoachinh = new DataColumn[1];
            khoachinh[0] = dsAdmin.Tables["Admin"].Columns[0];
            dsAdmin.Tables["Admin"].PrimaryKey = khoachinh;
            return dsAdmin.Tables["Admin"];
        }

        public Image loadHinh(string sDuongDan)
        {
            return Image.FromFile(sDuongDan);
        }

        public bool checkDangNhap(string sMaAD, string sPassWord)
        {
            DataRow dr_Admin = dsAdmin.Tables["Admin"].Rows.Find(sMaAD);
            if (dr_Admin == null)
            {
                return false;
            }
            else
            {
                if (dr_Admin["MaAD"].ToString() != sMaAD || dr_Admin["PassWord"].ToString() != sPassWord)
                    return false;
                else
                    return true;
            }
        }

        public bool suaTTDT(string sMaSP, string sTenSP, string sPhanLoai, string sGiaMua, string sGiaBan, string sSLTon)
        {
            try
            {
                DataRow dr_Sua = dsSanPham.Tables["SanPham"].Rows.Find(sMaSP);
                if (dr_Sua != null || dr_Sua["MaSP"] == sMaSP)
                {
                    dr_Sua["TenSP"] = sTenSP;
                    dr_Sua["PhanLoai"] = sPhanLoai;
                    dr_Sua["GiaMua"] = sGiaMua;
                    dr_Sua["GiaBan"] = sGiaBan;
                    dr_Sua["SLTon"] = sSLTon;
                }
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool xoaTTDT(string sMaSP)
        {
            try
            {
                DataRow dr_Xoa = dsSanPham.Tables["SanPham"].Rows.Find(sMaSP);
                if (dr_Xoa != null)
                {
                    dr_Xoa.Delete();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool themSP(string sMaSP, string sNSX, string sTenSP, string sGiaMua, string sGiaBan, string sNgayNhap, string sSLTon, string sHinhAnh, string sPhanLoai, string sGhiChu, string sCT1, string sCT2, string sCT3, string sCT4,
            string sCT5, string sCT6, string sCT7, string sCT8, string sCT9, string sCT10, string sCT11, string sCT12, string sCT13, string sCT14, string sCT15, string sCT16,
            string sCT17, string sCT18, string sCT19, string sCT20, string sCT21, string sCT22, string sCT23, string sCT24, string sCT25, string sCT26, string sCT27, string sCT28, string sCT29, string sCT30, string sNoiBat)
        {
            try
            {
                DataRow dr_Them = dsSanPhamAdd.Tables["SanPham"].NewRow();
                dr_Them["MaSP"] = sMaSP;
                dr_Them["MaSX"] = sNSX;
                dr_Them["TenSP"] = sTenSP;
                dr_Them["GiaMua"] = sGiaMua;
                dr_Them["GiaBan"] = sGiaBan;
                dr_Them["NgayNhap"] = sNgayNhap;
                dr_Them["SLTon"] = sSLTon;
                dr_Them["HinhAnh"] = sHinhAnh;
                dr_Them["PhanLoai"] = sPhanLoai;
                dr_Them["GhiChu"] = sGhiChu;
                dr_Them["CT1"] = sCT1;
                dr_Them["CT2"] = sCT2;
                dr_Them["CT3"] = sCT3;
                dr_Them["CT4"] = sCT4;
                dr_Them["CT5"] = sCT5;
                dr_Them["CT6"] = sCT6;
                dr_Them["CT7"] = sCT7;
                dr_Them["CT8"] = sCT8;
                dr_Them["CT9"] = sCT9;
                dr_Them["CT10"] = sCT10;
                dr_Them["CT11"] = sCT11;
                dr_Them["CT12"] = sCT12;
                dr_Them["CT13"] = sCT13;
                dr_Them["CT14"] = sCT14;
                dr_Them["CT15"] = sCT15;
                dr_Them["CT16"] = sCT16;
                dr_Them["CT17"] = sCT17;
                dr_Them["CT18"] = sCT18;
                dr_Them["CT19"] = sCT19;
                dr_Them["CT20"] = sCT20;
                dr_Them["CT21"] = sCT21;
                dr_Them["CT22"] = sCT22;
                dr_Them["CT23"] = sCT23;
                dr_Them["CT24"] = sCT24;
                dr_Them["CT25"] = sCT25;
                dr_Them["CT26"] = sCT26;
                dr_Them["CT27"] = sCT27;
                dr_Them["CT28"] = sCT28;
                dr_Them["CT29"] = sCT29;
                dr_Them["CT30"] = sCT30;
                dr_Them["NoiBat"] = sNoiBat;
                dsSanPhamAdd.Tables["SanPham"].Rows.Add(dr_Them);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool luuTTSP()
        {
            try
            {
                SqlCommandBuilder build_SP = new SqlCommandBuilder(da_SanPham);
                da_SanPham.Update(dsSanPham, "SanPham");
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool luuTTSP2()
        {
            try
            {
                SqlCommandBuilder build_SP = new SqlCommandBuilder(da_SanPhamAdd);
                da_SanPhamAdd.Update(dsSanPhamAdd, "SanPham");
                return true;
            }
            catch
            {
                return false;
            }
        }

        public DataTable loadTTCN(string MaCN)
        {
            DataRow dr_Load = dsAdmin.Tables["Admin"].Rows.Find(MaCN);
            return dsAdmin.Tables["Admin"];
        }

        public bool ThemNV(string pMaAD, string pHoTen, string pNgaySinh, string pGioiTinh, string pCMND, string pDiaChi, string pDT, string pEmail)
        {
            try{
                 DataRow dr_Them = dsAdmin.Tables["Admin"].NewRow();
                dr_Them["MaAD"] = pMaAD;
                dr_Them["HoTen"] = pHoTen;
                dr_Them["NgaySinh"] = pNgaySinh;
                dr_Them["GioiTinh"] = pGioiTinh;
                dr_Them["CMND"] = pCMND;
                dr_Them["DiaChi"] = pDiaChi;
                dr_Them["Email"] = pEmail;
                //dr_Them["UserName"] = pUserName;
                //dr_Them["PassWord"] = pPassWord;
                //dr_Them["Manager"] = pManager;
                dsAdmin.Tables["Admin"].Rows.Add(dr_Them);
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool XoaNV(string pMaAD)
        {
            try
            {
                DataRow dr_Xoa = dsAdmin.Tables["Admin"].Rows.Find(pMaAD);
                if (dr_Xoa != null)
                {
                    dr_Xoa.Delete();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        public bool LuuNV()
        {
            try
            {
               // da_Admin.SelectCommand.CommandText = "SELECT MAAD, HOTEN, CMND, DIACHI, DT, EMAIL FROM ADMIN";
                SqlCommandBuilder build_KH = new SqlCommandBuilder(da_Admin);
                da_Admin.Update(dsAdmin, "Admin");
                return true;
            }
            catch
            {
                return false;
            }

        }
        public bool SuaNV(string pMaAD, string pTenNV, string pNgaySinh, string pGioiTinh, string pCMND, string pDiaChi, string pSDT, string pEmail)
        {
            DataRow da_Sua = dsAdmin.Tables["Admin"].Rows.Find(pMaAD);
            try
            {
                if (da_Sua != null || da_Sua["MaAD"] == pMaAD)
                {
                    da_Sua["HoTen"] = pTenNV;
                    da_Sua["NgaySinh"] = pNgaySinh;
                    da_Sua["GioiTinh"] = pGioiTinh;
                    da_Sua["CMND"] = pCMND;
                    da_Sua["DiaChi"] = pDiaChi;
                    da_Sua["DT"] = pSDT;
                    da_Sua["Email"] = pEmail;

                }
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool ThemKH(string pMaKH, string pHoTen, string pNgaySinh, string pGioiTinh, string pCMND, string pDiaChi, string pDT, string pEmail)
        {
            try
            {
                DataRow dr_Them = dsCustomer.Tables["KhachHang"].NewRow();
                dr_Them["MaKH"] = pMaKH;
                dr_Them["HoTen"] = pHoTen;
                dr_Them["NgaySinh"] = pNgaySinh;
                dr_Them["GioiTinh"] = pGioiTinh;
                dr_Them["CMND"] = pCMND;
                dr_Them["DiaChi"] = pDiaChi;
                dr_Them["Email"] = pEmail;
                dsCustomer.Tables["KhachHang"].Rows.Add(dr_Them);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool XoaKH(string pMaKH)
        {
            try
            {
                DataRow dr_Xoa = dsCustomer.Tables["KhachHang"].Rows.Find(pMaKH);
                if (dr_Xoa != null)
                {
                    dr_Xoa.Delete();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }



        public bool LuuKH()
        {
            try
            {
                SqlCommandBuilder build_KH = new SqlCommandBuilder(da_Customer);
                da_Customer.Update(dsCustomer, "KhachHang");
                return true;
            }
            catch
            {
                return false;
            }
        }
        //public bool LuuKH()
        //{
        //    try
        //    {
        //        da_Customer.SelectCommand.CommandText = "SELECT MAKH, HOTEN, NGAYSINH, GIOITINH, CMND, DIACHI, DT, EMAIL FROM KHACHHANG";
        //        SqlCommandBuilder build_KH = new SqlCommandBuilder(da_Customer);
        //        da_Customer.Update(dsCustomer, "KHACHHANG");
        //        return true;
        //    }
        //    catch
        //    {
        //        return false;
        //    }

           
        //}
        public bool SuaKH(string pMaKH, string pTenKH, string pNgaySinh, string pGioiTinh, string pCMND, string pDiaChi, string pSDT, string pEmail)
        {
            DataRow da_Sua = dsCustomer.Tables["KhachHang"].Rows.Find(pMaKH);
            try
            {
                if (da_Sua != null || da_Sua["MaKH"].Equals(pMaKH)) 
                {
                    da_Sua["HoTen"] = pTenKH;
                    da_Sua["NgaySinh"] = pNgaySinh;
                    da_Sua["GioiTinh"] = pGioiTinh; 
                    da_Sua["CMND"] = pCMND;               
                    da_Sua["DiaChi"] = pDiaChi;
                    da_Sua["DT"] = pSDT;
                    da_Sua["Email"] = pEmail;
                }
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool luuPHieuNhap()
        {
            try
            {
                SqlCommandBuilder build_SP = new SqlCommandBuilder(da_SanPhamAdd);
                da_SanPhamAdd.Update(dsSanPhamAdd, "PHIEUNHAPSANPHAM");
                return true;
            }
            catch
            {
                return false;
            }
        }

    }
}

    

