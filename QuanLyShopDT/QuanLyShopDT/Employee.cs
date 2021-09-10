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
    public partial class Employee : Form
    {
        XuLy dt = new XuLy();
        public Employee()
        {
            InitializeComponent();
        }

        bool chk = false;

        private void Employee_Load(object sender, EventArgs e)
        {
            dgv_Emp.DataSource = dt.loadAdmin();
            //cmbGioiTinh.DataSource = dt.loadAdmin();
            //cmbGioiTinh.DisplayMember = "GioiTinh";
            //cmbGioiTinh.ValueMember = "MaAD";
            btnLuu.Enabled = btnSua.Enabled = btnXoa.Enabled = false;
            txtbID.Enabled = false;
            txtbTenNV.Enabled = false;
            txtbIDcard.Enabled = false;
            txtbDT.Enabled = false;
            txtbEmail.Enabled = false;
            txtbDiaChi.Enabled = false;
            txtbBirthday.Enabled = false;
            txtbGioiTinh.Enabled = false;

            txtbID.Text = "";
            txtbTenNV.Text = "";
            txtbIDcard.Text = "";
            txtbDT.Text = "";
            txtbEmail.Text = "";
            txtbDiaChi.Text = "";
            txtbBirthday.Text = "";
            txtbGioiTinh.Text = "";
            chk = true;
        }

        private void dgv_Emp_SelectionChanged(object sender, EventArgs e)
        {
            if (dgv_Emp.CurrentRow != null)
            {
                txtbTenNV.Text = dgv_Emp.CurrentRow.Cells[1].Value.ToString();
                txtbID.Text = dgv_Emp.CurrentRow.Cells[0].Value.ToString();
                txtbDT.Text = dgv_Emp.CurrentRow.Cells[6].Value.ToString();
                txtbDiaChi.Text = dgv_Emp.CurrentRow.Cells[5].Value.ToString();
                txtbIDcard.Text = dgv_Emp.CurrentRow.Cells[4].Value.ToString();
                txtbBirthday.Text = dgv_Emp.CurrentRow.Cells[2].Value.ToString();
                //txtbPass.Text = dgv_Emp.CurrentRow.Cells[10].Value.ToString();
                //txtbCPass.Text = dgv_Emp.CurrentRow.Cells[10].Value.ToString();
                txtbEmail.Text = dgv_Emp.CurrentRow.Cells[7].Value.ToString();
                txtbGioiTinh.Text = dgv_Emp.CurrentRow.Cells[3].Value.ToString();
            }
            btnSua.Enabled = btnXoa.Enabled = true;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2) == System.Windows.Forms.DialogResult.Yes)
            {
                if (dt.XoaNV(txtbID.Text))
                {
                    MessageBox.Show("Xoa thanh cong");
                }
                else
                {
                    MessageBox.Show("Xoa that bai");

                }
            }
            dt.LuuNV();
            btnLuu.Enabled = true;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtbID.Text == string.Empty)
            {
                MessageBox.Show("Chưa nhập mã nhân viên");
                txtbID.Focus();
                return;
            }
            if (txtbTenNV.Text == string.Empty)
            {
                MessageBox.Show("Chưa nhập tên nhân viên");
                txtbTenNV.Focus();
                return;
            }
            if (txtbDiaChi.Text == string.Empty)
            {
                MessageBox.Show("Chưa nhập số điện thoại");
                txtbDiaChi.Focus();
                return;
            }
            if (txtbEmail.Text == string.Empty)
            {
                MessageBox.Show("Chưa nhập Email");
                txtbEmail.Focus();
                return;
            }
            if (txtbDiaChi.Text == string.Empty)
            {
                MessageBox.Show("Chưa nhập địa chỉ");
                txtbDiaChi.Focus();
                return;
            }
            if (txtbIDcard.Text == string.Empty)
            {
                MessageBox.Show("Chưa nhập CMND");
                txtbIDcard.Focus();
                return;
            }
            //them
            if (txtbID.Enabled == true)
            {
                dt.ThemNV(txtbID.Text, txtbTenNV.Text, txtbBirthday.Text, txtbGioiTinh.Text, txtbIDcard.Text, txtbDiaChi.Text, txtbDT.Text, txtbEmail.Text);
            }
            //sua
            else
            {
                dt.SuaNV(txtbID.Text, txtbTenNV.Text,txtbBirthday.Text,txtbGioiTinh.Text ,txtbIDcard.Text,txtbDiaChi.Text, txtbDT.Text, txtbEmail.Text);
            }

            if (dt.LuuNV())
                MessageBox.Show("Lưu thành công !", "Thông báo");
            else
                MessageBox.Show("Lưu thất bại !", "Thông báo");
            btnLuu.Enabled = true;
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            txtbID.Enabled = true;
            txtbTenNV.Enabled = true;
            txtbIDcard.Enabled = true;
            txtbDT.Enabled = true;
            txtbEmail.Enabled = true;
            txtbDiaChi.Enabled = true;
            txtbBirthday.Enabled = true;
            btnLuu.Enabled = true;
            txtbGioiTinh.Enabled = true;
            txtbID.Focus();
            //if (txtbID.Text != "" && txtbTenNV.Text != "" && txtbBirthday.Text != "" && cmbGioiTinh.Text != "" && txtbIDcard.Text != "" && txtbDiaChi.Text != "" && txtbDT.Text != "" && txtbEmail.Text != "" && dt.ThemNV(txtbID.Text, txtbTenNV.Text, txtbBirthday.Text, cmbGioiTinh.Text, txtbIDcard.Text, txtbDiaChi.Text, txtbDT.Text, txtbEmail.Text))
            //{
            //    MessageBox.Show("Thêm thành công", "Thông báo");
            //    //if (dt.LuuNV())
            //    //    MessageBox.Show("Lưu thành công !", "Thông báo");
            //    //else
            //    //    MessageBox.Show("Lưu thất bại !", "Thông báo");
            //}
            //else
            //    MessageBox.Show("Thêm thất bại", "Thông báo");
        }


        
        

        private void btnSua_Click(object sender, EventArgs e)
        {
            btnLuu.Enabled = true;
            txtbID.Enabled = false;
            txtbTenNV.Enabled = true;
            txtbIDcard.Enabled = true;
            txtbDT.Enabled = true;
            txtbEmail.Enabled = true;
            txtbDiaChi.Enabled = true;
            txtbGioiTinh.Enabled = true;
            txtbBirthday.Enabled = true;
           
        }

        private void txtbDT_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtbIDcard_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        }

    }

