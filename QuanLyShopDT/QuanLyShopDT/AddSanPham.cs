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
    public partial class AddSanPham : Form
    {
        XuLy dt = new XuLy();
        public AddSanPham()
        {
            InitializeComponent();
        }

        private void tool_AddSP2_Click(object sender, EventArgs e)
        {
            if (txtbMaSP.Text != "" && cmbNSX.Text != "" && txtbTenSP.Text != "" && txtbGiaMua.Text != "" && txtbGiaBan.Text != "" && txtbSL.Text != "" && cmbPhanLoai.Text != "" && dt.themSP(txtbMaSP.Text, cmbNSX.Text, txtbTenSP.Text, txtbGiaMua.Text, txtbGiaBan.Text, txtbNgayNhap.Text, txtbSL.Text, picture.Text, cmbPhanLoai.Text, txtbGhiChu.Text, tb1.Text, tb2.Text, tb3.Text, tb4.Text, tb5.Text, tb6.Text, tb7.Text, tb8.Text, tb9.Text, tb10.Text, tb11.Text, tb12.Text, tb13.Text, tb14.Text, tb15.Text, tb16.Text, tb17.Text, tb18.Text, tb19.Text, tb20.Text, tb21.Text, tb22.Text, tb23.Text, tb24.Text, tb25.Text, tb26.Text, tb27.Text, tb28.Text, tb29.Text, tb30.Text, txtbNoiBat.Text))
            {
                MessageBox.Show("Thêm thành công", "Thông báo");
                if (dt.luuTTSP2())
                    MessageBox.Show("Lưu thành công !", "Thông báo");
                else
                    MessageBox.Show("Lưu thất bại !", "Thông báo");
            }
            else
                MessageBox.Show("Thêm thất bại", "Thông báo");                
        }

        private void txtbGiaMua_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtbGiaBan_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtbSL_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void btnLoadAnh_Click(object sender, EventArgs e)
        {
            string filepath = null;
            OpenFileDialog ofdImages = new OpenFileDialog();
            PictureBox objpt = new PictureBox();
            if (ofdImages.ShowDialog() == DialogResult.OK)
            {
                filepath = ofdImages.FileName;
            }
            MessageBox.Show(filepath);
            picture.Image = Image.FromFile(filepath.ToString());
            picture.SizeMode = PictureBoxSizeMode.StretchImage;
        }
    }
}
