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
    public partial class Main : Form
    {
        public Main()
        {
            InitializeComponent();
        }

        // Nhúng form con vào pannel chính
        public void nhung(Form frm)
        {
            //foreach (Control ctl in panel3.Controls)
            //ctl.Dispose();
            panelContent.Controls.Clear();//Xóa các control trong form cũ
            frm.FormBorderStyle = FormBorderStyle.None;
            frm.TopLevel = false;
            frm.Visible = true;
            frm.Dock = DockStyle.Fill;
            panelContent.Controls.Add(frm);//thêm form mới vào panel
            panelContent.Show();
        }

        private void menu_home_Click(object sender, EventArgs e)
        {
            ShowHome sh = new ShowHome();
            menuStrip_TTCN.Visible = true;
            menuStrip_SanPham.Visible = false;
            nhung(sh);
        }

        private void Main_Load(object sender, EventArgs e)
        {
            menuStrip_SanPham.Visible = false;
        }

        private void menu_products_Click(object sender, EventArgs e)
        {
            SanPham sp = new SanPham();
            menuStrip_TTCN.Visible = false;
            menuStrip_SanPham.Visible = true;
            nhung(sp);
        }

        private void btnThoatNick_MouseClick(object sender, MouseEventArgs e)
        {
            DialogResult dial = MessageBox.Show("Bạn có muốn đăng xuất không ?", "Thông báo!", MessageBoxButtons.YesNo);
            if (dial != DialogResult.No)
            {
                this.Hide();
                Program.frmDangNhap = new DangNhap();
                Program.frmDangNhap.Show();
            }          
        }

        private void menu_employee_Click(object sender, EventArgs e)
        {
            Employee emp = new Employee();
            menuStrip_SanPham.Visible = false;
            menuStrip_TTCN.Visible = false;
            nhung(emp);
        }
        
        private void tsTTCN_Click(object sender, EventArgs e)
        {
            ThongTinCaNhan ttcn = new ThongTinCaNhan();
            menuStrip_TTCN.Visible = false;
            menuStrip_SanPham.Visible = false;
            nhung(ttcn);
        }

        private void tool_AddSP_Click(object sender, EventArgs e)
        {
            AddSanPham addSP = new AddSanPham();
            menuStrip_TTCN.Visible = false;
            menuStrip_SanPham.Visible = false;
            nhung(addSP);
        }

        private void menu_customer_Click(object sender, EventArgs e)
        {
            Customer cus = new Customer();
            menuStrip_TTCN.Visible = false;
            menuStrip_SanPham.Visible = false;
            nhung(cus);
        }

        private void sốLượngTồnKhoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ThongKe_SPTonKho TKKT = new ThongKe_SPTonKho();
            TKKT.Show();
        }

        private void bánHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ThongKeNhapHang TKNH = new ThongKeNhapHang();
            TKNH.Show();
        }

        private void menu_statistics_Click(object sender, EventArgs e)
        {
            HoaDonNhapSP HD = new HoaDonNhapSP();
            menuStrip_TTCN.Visible = false;
            menuStrip_SanPham.Visible = false;
            nhung(HD);
        }
    }
}
