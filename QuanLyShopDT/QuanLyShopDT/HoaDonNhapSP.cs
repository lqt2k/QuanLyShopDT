using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace QuanLyShopDT
{
    public partial class HoaDonNhapSP : Form
    {
         SqlCommand cmd;
        SqlConnection conn;
        public HoaDonNhapSP()
        {
            InitializeComponent();
            txt_ThanhTien.Enabled = false;
            txt_TongTien.Enabled = false;
        }

        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {
            conn = new SqlConnection("Data Source=WIN2K\\WIN2K;Initial Catalog=QL_ShopDT;User ID=sa;Password=sa2012");
            listView1.Items.Clear();
           conn.Open();

            string commandString = "select * from CTPN_SANPHAM, SanPham where CTPN_SANPHAM.MaSP = SanPham.MaSP AND MAPN = '" + treeV_PN.SelectedNode.Text + "'";

            cmd = new SqlCommand(commandString, conn);

            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                ListViewItem item = new ListViewItem(new[] {rd["MaSP"].ToString(), rd["TenSP"].ToString(), rd["DONGIABAN"].ToString(), rd["SOLUONGNHAPSANPHAM"].ToString(), rd["THANHTIENNT"].ToString() });
                listView1.Items.Add(item);
            }

            rd.Close();

            commandString = "select * from PHIEUNHAPSANPHAM where MAPN = '" + treeV_PN.SelectedNode.Text + "'";

            cmd = new SqlCommand(commandString, conn);

            rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                txt_MaPN.Text = treeV_PN.SelectedNode.Text;
                datetime_SP.Text = rd["NGAYNHAPSP"].ToString();
                txt_TongTien.Text = rd["TONGTIEN"].ToString();
                txt_GhiChu.Text = rd["GHICHU"].ToString();
                txt_TrangThai.Text = rd["TRANGTHAI"].ToString();
            }
            rd.Close();
            updateTongTien();
           conn.Close();
        }

        private void load_trv_HoaDonNhapHang()
        {
            conn = new SqlConnection("Data Source=WIN2K\\WIN2K;Initial Catalog=QL_ShopDT;User ID=sa;Password=sa2012");
            treeV_PN.Nodes.Clear();
            conn.Open();

            string commandString = "select * from PHIEUNHAPSANPHAM";

            cmd = new SqlCommand(commandString, conn);

            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                treeV_PN.Nodes.Add(rd["MAPN"].ToString());
            }

            rd.Close();
            updateTongTien();
            conn.Close();
        }
        private void HoaDonNhapSP_Load(object sender, EventArgs e)
        {
            load_trv_HoaDonNhapHang();
            load_cmb_MaSP();
            //load_cmb_TenSP();
        }

        private void updateTongTien()
        {
            try
            {
                conn = new SqlConnection("Data Source=WIN2K\\WIN2K;Initial Catalog=QL_ShopDT;User ID=sa;Password=sa2012");
                conn.Open();
                string updateString = "update PHIEUNHAPSANPHAM set TONGTIEN = (select SUM(THANHTIENNT) from PHIEUNHAPSANPHAM, CTPN_SANPHAM where PHIEUNHAPSANPHAM.MAPN = CTPN_SANPHAM.MAPN and PHIEUNHAPSANPHAM.MAPN = '" + txt_MaPN.Text + "') where MAPN = '" + txt_MaPN.Text + "'";
                cmd = new SqlCommand(updateString, conn);

                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch
            {
                MessageBox.Show("Loi update tong tien");
            }
            finally
            {
                conn.Close();
            }
        }

        private void load_cmb_MaSP()
        {
            try
            {
                conn = new SqlConnection("Data Source=WIN2K\\WIN2K;Initial Catalog=QL_ShopDT;User ID=sa;Password=sa2012");
                conn.Open();

                string commandString = "select * from SanPham";

                cmd = new SqlCommand(commandString, conn);
                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())
                {
                    cmb_MaSP.Items.Add(new TTSanPham { MaSP = rd["MaSP"].ToString(), TenSP = rd["TenSP"].ToString() });
                }
                cmb_MaSP.ValueMember = "MaSP";
                cmb_MaSP.DisplayMember = "MaSP";

                rd.Close();

                conn.Close();
            }
            catch
            {
                MessageBox.Show("Loi!!");
            }
            finally
            {
                conn.Close();
            }
        }

        private void btn_Them_Click(object sender, EventArgs e)
        {
            txt_TongTien.Text = "0";
            txt_MaPN.Text = "";
            txt_TrangThai.Text = "";
            txt_GhiChu.Text = "";
            txt_MaPN.Focus();
            btn_Luu.Enabled = true;
        }

        private void btn_Luu_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection("Data Source=WIN2K\\WIN2K;Initial Catalog=QL_ShopDT;User ID=sa;Password=sa2012");
                conn.Open();
                string insertString;
                insertString = "SET DATEFORMAT DMY insert into PHIEUNHAPSANPHAM values ('" +txt_MaPN.Text + "','" + datetime_SP.Text + "','" + txt_GhiChu.Text + "','" + txt_TrangThai.Text + "'," + 0 + " )";
                cmd = new SqlCommand(insertString,conn);

                cmd.ExecuteNonQuery();

                conn.Close();          
                MessageBox.Show("Lưu thành công!!");

                load_trv_HoaDonNhapHang();
               
                btn_Luu.Enabled = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lưu thất bại");
            }
            finally
            {
                load_trv_HoaDonNhapHang();
                
                btn_Luu.Enabled = false;
            }
        }

        private void btn_ThemSP_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection("Data Source=WIN2K\\WIN2K;Initial Catalog=QL_ShopDT;User ID=sa;Password=sa2012");
                conn.Open();
                TTSanPham SP = cmb_MaSP.SelectedItem as TTSanPham;
                string KT;
                KT = "select count(*) from CTPN_SANPHAM where MAPN = '" + txt_MaPN.Text + "' and MaSP = '" + SP.MaSP.ToString() + "'";
                string sua;
                sua = "insert into CTPN_SANPHAM values ('" + txt_MaPN.Text + "','" + SP.MaSP.ToString() + "'," + txt_SL.Text + "," + txt_ThanhTien.Text + "," + txt_DonGia.Text + ")";

                SqlCommand cmd = new SqlCommand(KT,conn);
                int kq = (int)cmd.ExecuteScalar();
                if (kq != 0)
                {
                    MessageBox.Show("Mã phiếu nhập và mã sản phẩm đã được sử dụng");
                    return;
                }
                cmd = new SqlCommand(sua, conn);
                cmd.ExecuteNonQuery();

                conn.Close();
                updateTongTien();
                MessageBox.Show("Thành công!!!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Thất bại");
            }
            finally
            {
                conn.Close();
            }
        }

        private void txt_DonGia_TextChanged(object sender, EventArgs e)
        {
            if (txt_SL.Text.Trim().Length != 0 && txt_DonGia.Text.Trim().Length != 0)
            {
                txt_ThanhTien.Text = (Int32.Parse(txt_SL.Text) * Int32.Parse(txt_DonGia.Text)).ToString();
            }
        }

       

        //private void load_cmb_TenSP()
        //{
        //    try
        //    {
        //        conn = new SqlConnection("Data Source=DESKTOP-3CNFNCJ\\SQLEXPRESS;Initial Catalog=QL_ShopDT;User ID=sa;Password=sa2012");
        //        conn.Open();

        //        string commandString = "select * from SanPham";

        //        cmd = new SqlCommand(commandString, conn);
        //        SqlDataReader rd = cmd.ExecuteReader();

        //        while (rd.Read())
        //        {
        //            cmb_TenSP.Items.Add(new TTSanPham { MaSP = rd["MaSP"].ToString(), TenSP = rd["TenSP"].ToString() });
        //        }
        //        cmb_TenSP.ValueMember = "MaSP";
        //        cmb_TenSP.DisplayMember = "TenSP";

        //        rd.Close();

        //        conn.Close();
        //    }
        //    catch
        //    {
        //        MessageBox.Show("Loi!!");
        //    }
        //    finally
        //    {
        //        conn.Close();
        //    }
        //}
        

       
       

        }
    }

