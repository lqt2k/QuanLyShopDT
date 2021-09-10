using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyShopDT
{
    public partial class ThongTinCaNhan : Form
    {
        XuLy dt = new XuLy();
        public ThongTinCaNhan()
        {
            InitializeComponent();
        }
        public ThongTinCaNhan(string MaCN)
        {
            InitializeComponent();
            DataTable row = dt.loadTTCN(MaCN);
            //txtbTen.Text = ["HoTen"].ToString();
            //txtbNgaySinh.Text = row["NgaySinh"].ToString();
            //txtbDT.Text = row["DT"].ToString();
            //txtbEmail.Text = row["Email"].ToString();
            //txtbDiaChi.Text = row["DiaChi"].ToString();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            tab_tip.Visible = true;
        }

        private void ThongTinCaNhan_Load(object sender, EventArgs e)
        {
            //DataTable row = dt.loadTTCN(txtbTen.Text);
        }
    }
}
