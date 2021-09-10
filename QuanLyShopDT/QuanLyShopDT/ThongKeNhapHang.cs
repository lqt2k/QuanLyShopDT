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
    public partial class ThongKeNhapHang : Form
    {
        SqlCommand cmd;
        SqlConnection conn;
        public ThongKeNhapHang()
        {
            InitializeComponent();
        }

        private void load_cbo_SP()
        {
            conn = new SqlConnection("Data Source=WIN2K\\WIN2K;Initial Catalog=QL_ShopDT;User ID=sa;Password=sa2012");
            conn.Open();
            string commandString = "select * from SanPham";

            cmd = new SqlCommand(commandString, conn);
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                cmb_TenSP.Items.Add(new TTSanPham { MaSP = rd["MaSP"].ToString(), TenSP = rd["TenSP"].ToString() });
            }
            cmb_TenSP.ValueMember = "MaSP";
            cmb_TenSP.DisplayMember = "TenSP";

            rd.Close();

            conn.Close();
        }
        private void load_lsV_NhapHang()
        {
            int tongSL = 0;
            listView1.Items.Clear();
            try
            {
                conn.Open();
                TTSanPham SP = cmb_TenSP.SelectedItem as TTSanPham;
                string commandString = "SET DATEFORMAT DMY select PHIEUNHAPSANPHAM.MAPN, NGAYNHAPSP, SOLUONGNHAPSANPHAM, MaSP from PHIEUNHAPSANPHAM, CTPN_SANPHAM where PHIEUNHAPSANPHAM.MAPN = CTPN_SANPHAM.MAPN and MaSP = '" + SP.MaSP.ToString() + "'  and NGAYNHAPSP <= '" + dateTimePicker1.Text + "' and NGAYNHAPSP >= '" + dateTimePicker2.Text + "'";
                cmd = new SqlCommand(commandString, conn);

                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    listView1.Items.Add(rd["mapn"].ToString()).SubItems.AddRange(new[] { rd["NGAYNHAPSP"].ToString(), rd["SOLUONGNHAPSANPHAM"].ToString() });
                    tongSL += Convert.ToInt32(rd["SOLUONGNHAPSANPHAM"].ToString());
                }

                rd.Close();

                conn.Close();
                txtTongSL.Text = tongSL.ToString();
            }
            catch
            {
                MessageBox.Show("Loi nhap san pham");
            }
            finally
            {
                conn.Close();
            }
        }
        private void ThongKeNhapHang_Load(object sender, EventArgs e)
        {
            load_cbo_SP();
        }

        private void btn_TK_Click(object sender, EventArgs e)
        {
            if (cmb_TenSP.Text.Trim().Length == 0)
            {
                MessageBox.Show("Vui long chon san pham de thong ke");
                return;
            }
           
            load_lsV_NhapHang();
        }

        private void btn_Thoat_Click(object sender, EventArgs e)
        {

            DialogResult dial = MessageBox.Show("Bạn có muốn thoát không ?", "Thông báo", MessageBoxButtons.YesNo);
            if (dial != DialogResult.No)
                Application.Exit();
        }
    }
}
