namespace QuanLyShopDT
{
    partial class HoaDonNhapSP
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.treeV_PN = new System.Windows.Forms.TreeView();
            this.listView1 = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader4 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader5 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btn_Sua = new System.Windows.Forms.Button();
            this.btn_Xoa = new System.Windows.Forms.Button();
            this.btn_Them = new System.Windows.Forms.Button();
            this.datetime_SP = new System.Windows.Forms.DateTimePicker();
            this.txt_TrangThai = new System.Windows.Forms.TextBox();
            this.txt_GhiChu = new System.Windows.Forms.TextBox();
            this.txt_TongTien = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.lbl_MaPNSP = new System.Windows.Forms.Label();
            this.lbl_NgayNhapSP = new System.Windows.Forms.Label();
            this.txt_MaPN = new System.Windows.Forms.TextBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.txt_ThanhTien = new System.Windows.Forms.TextBox();
            this.txt_DonGia = new System.Windows.Forms.TextBox();
            this.txt_SL = new System.Windows.Forms.TextBox();
            this.cmb_MaSP = new System.Windows.Forms.ComboBox();
            this.lbl_ThanhTien = new System.Windows.Forms.Label();
            this.lbl_DonGia = new System.Windows.Forms.Label();
            this.lbl_SL = new System.Windows.Forms.Label();
            this.lbl_MaSP = new System.Windows.Forms.Label();
            this.btn_SuaSP = new System.Windows.Forms.Button();
            this.btn_XoaSP = new System.Windows.Forms.Button();
            this.btn_ThemSP = new System.Windows.Forms.Button();
            this.btn_Luu = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.treeV_PN);
            this.groupBox1.Location = new System.Drawing.Point(13, 13);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(134, 438);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "NHẬP HÀNG";
            // 
            // treeV_PN
            // 
            this.treeV_PN.Location = new System.Drawing.Point(6, 19);
            this.treeV_PN.Name = "treeV_PN";
            this.treeV_PN.Size = new System.Drawing.Size(121, 413);
            this.treeV_PN.TabIndex = 0;
            this.treeV_PN.AfterSelect += new System.Windows.Forms.TreeViewEventHandler(this.treeView1_AfterSelect);
            // 
            // listView1
            // 
            this.listView1.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3,
            this.columnHeader4,
            this.columnHeader5});
            this.listView1.Location = new System.Drawing.Point(153, 303);
            this.listView1.Name = "listView1";
            this.listView1.Size = new System.Drawing.Size(782, 143);
            this.listView1.TabIndex = 1;
            this.listView1.UseCompatibleStateImageBehavior = false;
            this.listView1.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Mã SP";
            this.columnHeader1.Width = 123;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Tên SP";
            this.columnHeader2.Width = 142;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Đơn Giá";
            this.columnHeader3.Width = 142;
            // 
            // columnHeader4
            // 
            this.columnHeader4.Text = "Số Lượng";
            this.columnHeader4.Width = 121;
            // 
            // columnHeader5
            // 
            this.columnHeader5.Text = "Thành Tiền";
            this.columnHeader5.Width = 142;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btn_Luu);
            this.groupBox2.Controls.Add(this.btn_Sua);
            this.groupBox2.Controls.Add(this.btn_Xoa);
            this.groupBox2.Controls.Add(this.btn_Them);
            this.groupBox2.Controls.Add(this.datetime_SP);
            this.groupBox2.Controls.Add(this.txt_TrangThai);
            this.groupBox2.Controls.Add(this.txt_GhiChu);
            this.groupBox2.Controls.Add(this.txt_TongTien);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.lbl_MaPNSP);
            this.groupBox2.Controls.Add(this.lbl_NgayNhapSP);
            this.groupBox2.Controls.Add(this.txt_MaPN);
            this.groupBox2.Location = new System.Drawing.Point(153, 22);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(347, 280);
            this.groupBox2.TabIndex = 2;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "THÔNG TIN";
            // 
            // btn_Sua
            // 
            this.btn_Sua.Location = new System.Drawing.Point(266, 230);
            this.btn_Sua.Name = "btn_Sua";
            this.btn_Sua.Size = new System.Drawing.Size(75, 34);
            this.btn_Sua.TabIndex = 55;
            this.btn_Sua.Text = "SỬA";
            this.btn_Sua.UseVisualStyleBackColor = true;
            // 
            // btn_Xoa
            // 
            this.btn_Xoa.Location = new System.Drawing.Point(174, 230);
            this.btn_Xoa.Name = "btn_Xoa";
            this.btn_Xoa.Size = new System.Drawing.Size(75, 34);
            this.btn_Xoa.TabIndex = 54;
            this.btn_Xoa.Text = "XÓA";
            this.btn_Xoa.UseVisualStyleBackColor = true;
            // 
            // btn_Them
            // 
            this.btn_Them.Location = new System.Drawing.Point(6, 230);
            this.btn_Them.Name = "btn_Them";
            this.btn_Them.Size = new System.Drawing.Size(75, 34);
            this.btn_Them.TabIndex = 53;
            this.btn_Them.Text = "THÊM";
            this.btn_Them.UseVisualStyleBackColor = true;
            this.btn_Them.Click += new System.EventHandler(this.btn_Them_Click);
            // 
            // datetime_SP
            // 
            this.datetime_SP.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.datetime_SP.Location = new System.Drawing.Point(154, 48);
            this.datetime_SP.Name = "datetime_SP";
            this.datetime_SP.Size = new System.Drawing.Size(162, 20);
            this.datetime_SP.TabIndex = 52;
            // 
            // txt_TrangThai
            // 
            this.txt_TrangThai.Location = new System.Drawing.Point(154, 82);
            this.txt_TrangThai.Name = "txt_TrangThai";
            this.txt_TrangThai.Size = new System.Drawing.Size(162, 20);
            this.txt_TrangThai.TabIndex = 51;
            // 
            // txt_GhiChu
            // 
            this.txt_GhiChu.Location = new System.Drawing.Point(154, 119);
            this.txt_GhiChu.Name = "txt_GhiChu";
            this.txt_GhiChu.Size = new System.Drawing.Size(162, 20);
            this.txt_GhiChu.TabIndex = 50;
            // 
            // txt_TongTien
            // 
            this.txt_TongTien.Location = new System.Drawing.Point(154, 160);
            this.txt_TongTien.Name = "txt_TongTien";
            this.txt_TongTien.Size = new System.Drawing.Size(162, 20);
            this.txt_TongTien.TabIndex = 49;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 89);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(73, 13);
            this.label5.TabIndex = 48;
            this.label5.Text = "TRẠNG THÁI";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 126);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(52, 13);
            this.label3.TabIndex = 47;
            this.label3.Text = "GHI CHÚ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 167);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(66, 13);
            this.label4.TabIndex = 46;
            this.label4.Text = "TỔNG TIỀN";
            // 
            // lbl_MaPNSP
            // 
            this.lbl_MaPNSP.AutoSize = true;
            this.lbl_MaPNSP.Location = new System.Drawing.Point(6, 20);
            this.lbl_MaPNSP.Name = "lbl_MaPNSP";
            this.lbl_MaPNSP.Size = new System.Drawing.Size(109, 13);
            this.lbl_MaPNSP.TabIndex = 42;
            this.lbl_MaPNSP.Text = "MÃ PHIẾU NHẬP SP";
            // 
            // lbl_NgayNhapSP
            // 
            this.lbl_NgayNhapSP.AutoSize = true;
            this.lbl_NgayNhapSP.Location = new System.Drawing.Point(6, 55);
            this.lbl_NgayNhapSP.Name = "lbl_NgayNhapSP";
            this.lbl_NgayNhapSP.Size = new System.Drawing.Size(87, 13);
            this.lbl_NgayNhapSP.TabIndex = 41;
            this.lbl_NgayNhapSP.Text = "NGÀY NHẬP SP";
            // 
            // txt_MaPN
            // 
            this.txt_MaPN.Location = new System.Drawing.Point(154, 17);
            this.txt_MaPN.Name = "txt_MaPN";
            this.txt_MaPN.Size = new System.Drawing.Size(162, 20);
            this.txt_MaPN.TabIndex = 1;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.txt_ThanhTien);
            this.groupBox3.Controls.Add(this.txt_DonGia);
            this.groupBox3.Controls.Add(this.txt_SL);
            this.groupBox3.Controls.Add(this.cmb_MaSP);
            this.groupBox3.Controls.Add(this.lbl_ThanhTien);
            this.groupBox3.Controls.Add(this.lbl_DonGia);
            this.groupBox3.Controls.Add(this.lbl_SL);
            this.groupBox3.Controls.Add(this.lbl_MaSP);
            this.groupBox3.Controls.Add(this.btn_SuaSP);
            this.groupBox3.Controls.Add(this.btn_XoaSP);
            this.groupBox3.Controls.Add(this.btn_ThemSP);
            this.groupBox3.Location = new System.Drawing.Point(506, 32);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(429, 270);
            this.groupBox3.TabIndex = 3;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "SẢN PHẨM";
            // 
            // txt_ThanhTien
            // 
            this.txt_ThanhTien.Location = new System.Drawing.Point(144, 170);
            this.txt_ThanhTien.Name = "txt_ThanhTien";
            this.txt_ThanhTien.Size = new System.Drawing.Size(128, 20);
            this.txt_ThanhTien.TabIndex = 67;
            // 
            // txt_DonGia
            // 
            this.txt_DonGia.Location = new System.Drawing.Point(144, 119);
            this.txt_DonGia.Name = "txt_DonGia";
            this.txt_DonGia.Size = new System.Drawing.Size(128, 20);
            this.txt_DonGia.TabIndex = 65;
            this.txt_DonGia.TextChanged += new System.EventHandler(this.txt_DonGia_TextChanged);
            // 
            // txt_SL
            // 
            this.txt_SL.Location = new System.Drawing.Point(144, 69);
            this.txt_SL.Name = "txt_SL";
            this.txt_SL.Size = new System.Drawing.Size(128, 20);
            this.txt_SL.TabIndex = 56;
            // 
            // cmb_MaSP
            // 
            this.cmb_MaSP.FormattingEnabled = true;
            this.cmb_MaSP.Location = new System.Drawing.Point(144, 12);
            this.cmb_MaSP.Name = "cmb_MaSP";
            this.cmb_MaSP.Size = new System.Drawing.Size(128, 21);
            this.cmb_MaSP.TabIndex = 63;
            // 
            // lbl_ThanhTien
            // 
            this.lbl_ThanhTien.AutoSize = true;
            this.lbl_ThanhTien.Location = new System.Drawing.Point(18, 170);
            this.lbl_ThanhTien.Name = "lbl_ThanhTien";
            this.lbl_ThanhTien.Size = new System.Drawing.Size(73, 13);
            this.lbl_ThanhTien.TabIndex = 62;
            this.lbl_ThanhTien.Text = "THÀNH TIỀN";
            // 
            // lbl_DonGia
            // 
            this.lbl_DonGia.AutoSize = true;
            this.lbl_DonGia.Location = new System.Drawing.Point(23, 122);
            this.lbl_DonGia.Name = "lbl_DonGia";
            this.lbl_DonGia.Size = new System.Drawing.Size(55, 13);
            this.lbl_DonGia.TabIndex = 60;
            this.lbl_DonGia.Text = "ĐƠN GIÁ ";
            // 
            // lbl_SL
            // 
            this.lbl_SL.AutoSize = true;
            this.lbl_SL.Location = new System.Drawing.Point(18, 72);
            this.lbl_SL.Name = "lbl_SL";
            this.lbl_SL.Size = new System.Drawing.Size(113, 13);
            this.lbl_SL.TabIndex = 59;
            this.lbl_SL.Text = "SỐ LƯỢNG NHẬP SP";
            // 
            // lbl_MaSP
            // 
            this.lbl_MaSP.AutoSize = true;
            this.lbl_MaSP.Location = new System.Drawing.Point(23, 20);
            this.lbl_MaSP.Name = "lbl_MaSP";
            this.lbl_MaSP.Size = new System.Drawing.Size(40, 13);
            this.lbl_MaSP.TabIndex = 57;
            this.lbl_MaSP.Text = "MÃ SP";
            // 
            // btn_SuaSP
            // 
            this.btn_SuaSP.Location = new System.Drawing.Point(230, 220);
            this.btn_SuaSP.Name = "btn_SuaSP";
            this.btn_SuaSP.Size = new System.Drawing.Size(75, 34);
            this.btn_SuaSP.TabIndex = 56;
            this.btn_SuaSP.Text = "SỬA";
            this.btn_SuaSP.UseVisualStyleBackColor = true;
            // 
            // btn_XoaSP
            // 
            this.btn_XoaSP.Location = new System.Drawing.Point(130, 220);
            this.btn_XoaSP.Name = "btn_XoaSP";
            this.btn_XoaSP.Size = new System.Drawing.Size(75, 34);
            this.btn_XoaSP.TabIndex = 56;
            this.btn_XoaSP.Text = "XÓA";
            this.btn_XoaSP.UseVisualStyleBackColor = true;
            // 
            // btn_ThemSP
            // 
            this.btn_ThemSP.Location = new System.Drawing.Point(21, 220);
            this.btn_ThemSP.Name = "btn_ThemSP";
            this.btn_ThemSP.Size = new System.Drawing.Size(75, 34);
            this.btn_ThemSP.TabIndex = 56;
            this.btn_ThemSP.Text = "THÊM";
            this.btn_ThemSP.UseVisualStyleBackColor = true;
            this.btn_ThemSP.Click += new System.EventHandler(this.btn_ThemSP_Click);
            // 
            // btn_Luu
            // 
            this.btn_Luu.Location = new System.Drawing.Point(93, 230);
            this.btn_Luu.Name = "btn_Luu";
            this.btn_Luu.Size = new System.Drawing.Size(75, 34);
            this.btn_Luu.TabIndex = 56;
            this.btn_Luu.Text = "LƯU";
            this.btn_Luu.UseVisualStyleBackColor = true;
            this.btn_Luu.Click += new System.EventHandler(this.btn_Luu_Click);
            // 
            // HoaDonNhapSP
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1014, 458);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.listView1);
            this.Controls.Add(this.groupBox1);
            this.Name = "HoaDonNhapSP";
            this.Text = "HoaDonNhapSP";
            this.Load += new System.EventHandler(this.HoaDonNhapSP_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TreeView treeV_PN;
        private System.Windows.Forms.ListView listView1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btn_Sua;
        private System.Windows.Forms.Button btn_Xoa;
        private System.Windows.Forms.Button btn_Them;
        private System.Windows.Forms.DateTimePicker datetime_SP;
        private System.Windows.Forms.TextBox txt_TrangThai;
        private System.Windows.Forms.TextBox txt_GhiChu;
        private System.Windows.Forms.TextBox txt_TongTien;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label lbl_MaPNSP;
        private System.Windows.Forms.Label lbl_NgayNhapSP;
        private System.Windows.Forms.TextBox txt_MaPN;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.ColumnHeader columnHeader4;
        private System.Windows.Forms.ColumnHeader columnHeader5;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.TextBox txt_ThanhTien;
        private System.Windows.Forms.TextBox txt_DonGia;
        private System.Windows.Forms.TextBox txt_SL;
        private System.Windows.Forms.ComboBox cmb_MaSP;
        private System.Windows.Forms.Label lbl_ThanhTien;
        private System.Windows.Forms.Label lbl_DonGia;
        private System.Windows.Forms.Label lbl_SL;
        private System.Windows.Forms.Label lbl_MaSP;
        private System.Windows.Forms.Button btn_SuaSP;
        private System.Windows.Forms.Button btn_XoaSP;
        private System.Windows.Forms.Button btn_ThemSP;
        private System.Windows.Forms.Button btn_Luu;
    }
}