using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyShopDT
{
    public partial class DangNhap : Form
    {
        XuLy dt = new XuLy();
        public DangNhap()
        {
            InitializeComponent();
        }

        private void btnDongY_Click(object sender, EventArgs e)
        {
            if (txtbTK.Text == "")
                MessageBox.Show("Bạn chưa nhập tên đăng nhập", "Thông báo");
            if (txtbMK.Text == "")
                MessageBox.Show("Bạn chưa nhập mật khẩu", "Thông báo");
            if (dt.checkDangNhap(txtbTK.Text, txtbMK.Text) == false)
            {
                MessageBox.Show("Bạn đã nhập sai, vui lòng nhập lại", "Thông báo");
                return;
            }
            else
            {
                Program.frmMain = new Main();
                Program.frmMain.Show();
                Program.frmDangNhap.Hide();
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult dial = MessageBox.Show("Bạn có muốn thoát không ?", "Thông báo", MessageBoxButtons.YesNo);
            if (dial != DialogResult.No)
                Application.Exit();
        }

        private void DangNhap_Load(object sender, EventArgs e)
        {
            dt.loadAdmin();
        }
    }
}
