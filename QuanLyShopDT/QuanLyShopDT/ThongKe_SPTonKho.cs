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
    public partial class ThongKe_SPTonKho : Form
    {
        SqlCommand cmd;
        SqlConnection conn;
        DataSet dsSanPhamAdd = new DataSet();
        public ThongKe_SPTonKho()
        {
            InitializeComponent();
        }

        private void ThongKe_SPTonKho_Load(object sender, EventArgs e)
        {
            //load_cbo_TenNSX();
            load_cbo_SP();
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




        private void load_cbo_TenNSX()
        {

            conn = new SqlConnection("Data Source=WIN2K\\WIN2K;Initial Catalog=QL_ShopDT;User ID=sa;Password=sa2012");
            conn.Open();
            string commandString = "select * from NhaCungUng";          
            cmd = new SqlCommand(commandString, conn);
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                cmb_TenNSX.Items.Add(new TTNCU { MaNCU = rd["MaCU"].ToString(), TenNCU = rd["TenNCU"].ToString() });
            }
            cmb_TenNSX.ValueMember = "MaCU";
            cmb_TenNSX.DisplayMember = "TenNCU";

            rd.Close();
            conn.Close();
        }

        private void load_lsV_HangTonKho()
        {
            conn = new SqlConnection("Data Source=WIN2K\\WIN2K;Initial Catalog=QL_ShopDT;User ID=sa;Password=sa2012");
            string commandString;
            listV_TKSanPham.Items.Clear(); 
            if (rdb_SPTheoten.Checked)
            {
                TTNhaSX NSX = cmb_TenNSX.SelectedItem as TTNhaSX;
                TTSanPham SP = cmb_TenSP.SelectedItem as TTSanPham;
                commandString = "select * from sanpham where masx = '" + NSX.MaNSX.ToString() + "' and masp = '" + SP.MaSP.ToString() + "'";
            }
            else if (rdb_SPCon.Checked)
                commandString = "select * from sanpham where slton > 0";
            else
                commandString = "select * from sanpham where slton <= 0";

            try
            {
                conn.Open();
                cmd = new SqlCommand(commandString, conn);
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    listV_TKSanPham.Items.Add(rd["masp"].ToString()).SubItems.AddRange(new[] { rd["masx"].ToString(), rd["tensp"].ToString(), rd["slton"].ToString() });
                }

                rd.Close();
                conn.Close();
                
            }
            catch
            {
                MessageBox.Show("Loi load so luong ton");
            }           
        }

        private void btn_ThongKe_Click(object sender, EventArgs e)
        {
            load_lsV_HangTonKho();
        }

        private void cmb_TenNSX_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmb_TenNSX.Items.Clear();
            conn.Open();
            TTNCU mlt = cmb_TenNSX.SelectedItem as TTNCU;

            string commandString = "select * from SanPham where MaCU = '" + mlt.MaNCU.ToString() + "'";

            cmd = new SqlCommand(commandString, conn);

            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                cmb_TenNSX.Items.Add(new TTSanPham { MaSP = rd["MaSP"].ToString(), TenSP = rd["TenSP"].ToString() });
            }

            cmb_TenSP.ValueMember = "MaSP";
            cmb_TenSP.DisplayMember = "TenSP";

            rd.Close();

            conn.Close();
        
        }

        private void rdb_SPTheoten_CheckedChanged(object sender, EventArgs e)
        {
            if (rdb_SPTheoten.Checked)
            {
                cmb_TenNSX.Enabled = true;
                cmb_TenSP.Enabled = true;
            }
            else
            {
                cmb_TenNSX.Enabled = false;
                cmb_TenSP.Enabled = false;
            }
        }

        private void btn_Thoat_Click(object sender, EventArgs e)
        {

            DialogResult dial = MessageBox.Show("Bạn có muốn thoát không ?", "Thông báo", MessageBoxButtons.YesNo);
            if (dial != DialogResult.No)
                Application.Exit();
        }
    }
}
