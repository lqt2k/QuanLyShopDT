using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Drawing.Imaging;
using System.IO;

namespace QuanLyShopDT
{
    public partial class SanPham : Form
    {
        XuLy dt = new XuLy();
        public SanPham()
        {
            InitializeComponent();
        }

        bool chk = false;

        private void SanPham_Load(object sender, EventArgs e)
        {
            dgv_SP.DataSource = dt.loadSanPham();
            cmbTenSP.DataSource = dt.loadSanPham();
            //cmbNSX.DataSource = dt.loadNSX();
            cmbTenSP.DisplayMember = "TenSP";
            cmbTenSP.ValueMember = "MaSP";
            //cmbNSX.DisplayMember = "TenSX";
            //cmbNSX.ValueMember = "TenSX";
            //for (int i = 0; i < dgv_SP.Rows.Count; i++)
            //{
            //    dgv_SP.Rows[i].Cells[7].Value = dt.loadHinh(dgv_SP.Rows[i].Cells[7].Value.ToString());
            //} 

            chk = true;
        }

        private void dgv_SP_SelectionChanged(object sender, EventArgs e)
        {
            if (!chk)
                return;
            if (dgv_SP.CurrentCell != null)
            {
                txtbMaSP.Text = dgv_SP.CurrentRow.Cells[0].Value.ToString();
                cmbTenSP.SelectedValue = dgv_SP.CurrentRow.Cells[1].Value.ToString();
                txtbPhanLoai.Text = dgv_SP.CurrentRow.Cells[2].Value.ToString();
                //cmbNSX.SelectedValue = dgv_SP.CurrentRow.Cells[2].Value.ToString(); 
                txtbGiaMua.Text = dgv_SP.CurrentRow.Cells[3].Value.ToString();
                txtbGiaBan.Text = dgv_SP.CurrentRow.Cells[4].Value.ToString();
                txtbSL.Text = dgv_SP.CurrentRow.Cells[5].Value.ToString();                             
                //picturebox.Image = Image.FromFile(dgv_SP.CurrentRow.Cells[7].ToString().Replace("Data Image/", ""));    
                //picturebox.Image = Image.FromFile(dgv_SP.CurrentRow.Cells[7].Value.ToString().Replace("Data Image/", ""));
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {

            txtbGiaMua.Enabled = true;
            txtbGiaBan.Enabled = true;
            txtbPhanLoai.Enabled = true;
            txtbSL.Enabled = true;
            if (cmbTenSP.Text != "" && txtbPhanLoai.Text != "" && txtbGiaMua.Text != "" && txtbGiaBan.Text != "" && txtbSL.Text != "" && dt.suaTTDT(txtbMaSP.Text, cmbTenSP.Text, txtbPhanLoai.Text, txtbGiaMua.Text, txtbGiaBan.Text, txtbSL.Text))
                MessageBox.Show("Sửa thành công", "Thông báo");
            else
                MessageBox.Show("Sửa thất bại", "Thông báo");
                
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            //if (cmbTenSP.Text != "" && cmbPhanLoai.Text != "" && txtbGiaMua.Text != "" && txtbGiaBan.Text != "" && txtbSL.Text != "" && dt.suaTTDT(txtbMaSP.Text, cmbTenSP.Text, cmbPhanLoai.Text, txtbGiaMua.Text, txtbGiaBan.Text, txtbSL.Text))
            //    MessageBox.Show("Sửa thành công", "Thông báo");
            //else
            //    MessageBox.Show("Sửa thất bại", "Thông báo");
            if (dt.luuTTSP())
                MessageBox.Show("Lưu thành công !", "Thông báo");
            else
                MessageBox.Show("Lưu thất bại !", "Thông báo");
            //btnLuu.Enabled = false;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2) == System.Windows.Forms.DialogResult.Yes)
            {
                if (cmbTenSP.Text != "" && dt.xoaTTDT(txtbMaSP.Text))
                    MessageBox.Show("Xoá thành công", "Thông báo");
                else
                    MessageBox.Show("Xoá thất bại", "Thông báo");
            }
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

        private void btn_LoadAnh_Click(object sender, EventArgs e)
        {
            openFile.ShowDialog();
            string file = openFile.FileName;
            if(string.IsNullOrEmpty(file))
            {
                return;
            }
            Image myIamge = Image.FromFile(file);
            pictureboxAnh.Image = myIamge;

        }


        //private void btnThem_Click(object sender, EventArgs e)
        //{
        //    //txtbMaSP.Enabled = true;
        //    //txtbGiaMua.Enabled = true;
        //    //txtbGiaBan.Enabled = true;
        //    //txtbPhanLoai.Enabled = true;
        //    //txtbSL.Enabled = true;
        //    //if (cmbTenSP.Text != "" && txtbGiaMua.Text != "" && txtbGiaBan.Text != "" && txtbSL.Text != "" && dt.themSP(txtbMaSP.Text, cmbTenSP.Text, txtbGiaMua.Text, txtbGiaBan.Text, txtbSL.Text))
        //    //    MessageBox.Show("Thêm thành công", "Thông báo");
        //    //else
        //    //    MessageBox.Show("Thêm thất bại", "Thông báo");
        //}
    }
}
