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
    public partial class Customer : Form
    {
        XuLy dt = new XuLy();
        bool chk = false;
        public Customer()
        {
            InitializeComponent();
        }

        private void Customer_Load(object sender, EventArgs e)
        {
            dgv_Customer.DataSource = dt.loadCustomer();
            //cmbGioiTinh.DataSource = dt.loadCustomer();
            //cmbGioiTinh.DisplayMember = "GioiTinh";
            //cmbGioiTinh.ValueMember = "MaKH";
            btnLuu.Enabled = btnSua.Enabled = btnXoa.Enabled = false;
            txtbID.Enabled = false;
            txtbTenKH.Enabled = false;
            txtbIDcard.Enabled = false;
            txtbDT.Enabled = false;
            txtbEmail.Enabled = false;
            txtbDiaChi.Enabled = false;
            txtbBirthday.Enabled = false;
            txtGioiTinh.Enabled = false;
            chk = true;

            txtbID.Text = "";
            txtbTenKH.Text = "";
            txtbIDcard.Text = "";
            txtbDT.Text = "";
            txtbEmail.Text = "";
            txtbDiaChi.Text = "";
            txtbBirthday.Text = "";
            txtGioiTinh.Text = "";
        }

        private void dgv_Customer_SelectionChanged(object sender, EventArgs e)
        {
            if (dgv_Customer.CurrentRow != null)
            {
                txtbTenKH.Text = dgv_Customer.CurrentRow.Cells[1].Value.ToString();
                txtbID.Text = dgv_Customer.CurrentRow.Cells[0].Value.ToString();
                txtbDT.Text = dgv_Customer.CurrentRow.Cells[6].Value.ToString();
                txtbDiaChi.Text = dgv_Customer.CurrentRow.Cells[5].Value.ToString();
                txtbIDcard.Text = dgv_Customer.CurrentRow.Cells[4].Value.ToString();
                txtbBirthday.Text = dgv_Customer.CurrentRow.Cells[2].Value.ToString();
                //txtbPass.Text = dgv_Customer.CurrentRow.Cells[10].Value.ToString();
                //txtbCPass.Text = dgv_Customer.CurrentRow.Cells[10].Value.ToString();
                txtbEmail.Text = dgv_Customer.CurrentRow.Cells[7].Value.ToString();
                txtGioiTinh.Text = dgv_Customer.CurrentRow.Cells[3].Value.ToString();


            }
            btnSua.Enabled = btnXoa.Enabled = true;
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button2) == System.Windows.Forms.DialogResult.Yes)
            {
                if (dt.XoaKH(txtbID.Text))
                {
                    MessageBox.Show("Xoa thanh cong");
                }
                else
                {
                    MessageBox.Show("Xoa that bai");
                }
               
          
            }
            dt.LuuKH();
            btnLuu.Enabled = true;
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            //if (txtbID.Text != "" && txtbTenKH.Text != "" && txtbEmail.Text != "" && txtbDiaChi.Text != "" && txtbDT.Text != "" && dt.SuaKH(txtbID.Text, txtbTenKH.Text, txtbIDcard.Text,txtbDiaChi.Text, txtbDT.Text, txtbEmail.Text ))
            //    MessageBox.Show("Sửa thành công", "Thông báo");
            //else
            //    MessageBox.Show("Sửa thất bại", "Thông báo");

            btnLuu.Enabled = true;
            txtbID.Enabled = false;
            txtbTenKH.Enabled = true;
            txtbIDcard.Enabled = true;
            txtbDT.Enabled = true;
            txtbEmail.Enabled = true;
            txtbDiaChi.Enabled = true;
            txtGioiTinh.Enabled = true;
            txtbBirthday.Enabled = true;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (txtbID.Text == string.Empty)
            {
                MessageBox.Show("Chưa nhập mã khách hàng");
                txtbID.Focus();
                return;
            }
            if (txtbTenKH.Text == string.Empty)
            {
                MessageBox.Show("Chưa nhập tên khách hàng");
                txtbTenKH.Focus();
                return;
            }
            if (txtbDiaChi.Text == string.Empty)
            {
                MessageBox.Show("Chưa nhập số địa chỉ");
                txtbDiaChi.Focus();
                return;
            }
            if (txtbEmail.Text == string.Empty)
            {
                MessageBox.Show("Chưa nhập Email");
                txtbEmail.Focus();
                return;
            }
            if (txtGioiTinh.Text == string.Empty)
            {
                MessageBox.Show("Chưa nhập giới tinh");
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
                dt.ThemKH(txtbID.Text, txtbTenKH.Text, txtbBirthday.Text, txtGioiTinh.Text, txtbIDcard.Text, txtbDiaChi.Text, txtbDT.Text, txtbEmail.Text);
            }
            //sua
            else
            {
                dt.SuaKH(txtbID.Text, txtbTenKH.Text,txtbBirthday.Text, txtGioiTinh.Text, txtbIDcard.Text,txtbDiaChi.Text, txtbDT.Text, txtbEmail.Text);
            }
            if (dt.LuuKH())
                MessageBox.Show("Lưu thành công !", "Thông báo");
            else
                MessageBox.Show("Lưu thất bại !", "Thông báo");
            btnLuu.Enabled = false;
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

        private void btnThem_Click(object sender, EventArgs e)
        {
            txtbID.Enabled = true;
            txtbTenKH.Enabled = true;
            txtbIDcard.Enabled = true;
            txtbDT.Enabled = true;
            txtbEmail.Enabled = true;
            txtbDiaChi.Enabled = true;
            txtbBirthday.Enabled = true;
            btnLuu.Enabled = true;
            txtGioiTinh.Enabled = true;
            txtbID.Focus();
        }
    }
}
