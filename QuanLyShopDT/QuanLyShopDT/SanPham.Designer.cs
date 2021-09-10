namespace QuanLyShopDT
{
    partial class SanPham
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(SanPham));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.btnXoa = new System.Windows.Forms.ToolStripButton();
            this.btnSua = new System.Windows.Forms.ToolStripButton();
            this.btnLuu = new System.Windows.Forms.ToolStripButton();
            this.btnXemIn = new System.Windows.Forms.ToolStripButton();
            this.ShowTT = new System.Windows.Forms.GroupBox();
            this.btn_LoadAnh = new System.Windows.Forms.Button();
            this.txtbPhanLoai = new System.Windows.Forms.TextBox();
            this.cmbTenSP = new System.Windows.Forms.ComboBox();
            this.txtbMaSP = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.pictureboxAnh = new System.Windows.Forms.PictureBox();
            this.txtbSL = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtbGiaBan = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtbGiaMua = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.ShowSP = new System.Windows.Forms.GroupBox();
            this.dgv_SP = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column7 = new System.Windows.Forms.DataGridViewImageColumn();
            this.label10 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.openFile = new System.Windows.Forms.OpenFileDialog();
            this.toolStrip1.SuspendLayout();
            this.ShowTT.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureboxAnh)).BeginInit();
            this.ShowSP.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_SP)).BeginInit();
            this.SuspendLayout();
            // 
            // toolStrip1
            // 
            this.toolStrip1.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.btnXoa,
            this.btnSua,
            this.btnLuu,
            this.btnXemIn});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(810, 31);
            this.toolStrip1.TabIndex = 1;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // btnXoa
            // 
            this.btnXoa.Image = ((System.Drawing.Image)(resources.GetObject("btnXoa.Image")));
            this.btnXoa.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.btnXoa.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(69, 28);
            this.btnXoa.Text = "Xóa";
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnSua
            // 
            this.btnSua.Image = ((System.Drawing.Image)(resources.GetObject("btnSua.Image")));
            this.btnSua.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.btnSua.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(67, 28);
            this.btnSua.Text = "Sửa";
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // btnLuu
            // 
            this.btnLuu.Image = ((System.Drawing.Image)(resources.GetObject("btnLuu.Image")));
            this.btnLuu.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.btnLuu.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(68, 28);
            this.btnLuu.Text = "Lưu";
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // btnXemIn
            // 
            this.btnXemIn.Image = ((System.Drawing.Image)(resources.GetObject("btnXemIn.Image")));
            this.btnXemIn.ImageScaling = System.Windows.Forms.ToolStripItemImageScaling.None;
            this.btnXemIn.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnXemIn.Name = "btnXemIn";
            this.btnXemIn.Size = new System.Drawing.Size(85, 28);
            this.btnXemIn.Text = "Xem In";
            // 
            // ShowTT
            // 
            this.ShowTT.Controls.Add(this.btn_LoadAnh);
            this.ShowTT.Controls.Add(this.txtbPhanLoai);
            this.ShowTT.Controls.Add(this.cmbTenSP);
            this.ShowTT.Controls.Add(this.txtbMaSP);
            this.ShowTT.Controls.Add(this.label7);
            this.ShowTT.Controls.Add(this.label12);
            this.ShowTT.Controls.Add(this.label9);
            this.ShowTT.Controls.Add(this.label8);
            this.ShowTT.Controls.Add(this.pictureboxAnh);
            this.ShowTT.Controls.Add(this.txtbSL);
            this.ShowTT.Controls.Add(this.label6);
            this.ShowTT.Controls.Add(this.txtbGiaBan);
            this.ShowTT.Controls.Add(this.label4);
            this.ShowTT.Controls.Add(this.txtbGiaMua);
            this.ShowTT.Controls.Add(this.label3);
            this.ShowTT.Controls.Add(this.label2);
            this.ShowTT.Controls.Add(this.label1);
            this.ShowTT.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ShowTT.ForeColor = System.Drawing.Color.Red;
            this.ShowTT.Location = new System.Drawing.Point(12, 48);
            this.ShowTT.Name = "ShowTT";
            this.ShowTT.Size = new System.Drawing.Size(787, 207);
            this.ShowTT.TabIndex = 3;
            this.ShowTT.TabStop = false;
            // 
            // btn_LoadAnh
            // 
            this.btn_LoadAnh.Location = new System.Drawing.Point(604, 169);
            this.btn_LoadAnh.Name = "btn_LoadAnh";
            this.btn_LoadAnh.Size = new System.Drawing.Size(75, 32);
            this.btn_LoadAnh.TabIndex = 70;
            this.btn_LoadAnh.Text = "LoadAnh";
            this.btn_LoadAnh.UseVisualStyleBackColor = true;
            this.btn_LoadAnh.Click += new System.EventHandler(this.btn_LoadAnh_Click);
            // 
            // txtbPhanLoai
            // 
            this.txtbPhanLoai.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtbPhanLoai.Enabled = false;
            this.txtbPhanLoai.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtbPhanLoai.Location = new System.Drawing.Point(148, 146);
            this.txtbPhanLoai.Name = "txtbPhanLoai";
            this.txtbPhanLoai.Size = new System.Drawing.Size(236, 22);
            this.txtbPhanLoai.TabIndex = 69;
            // 
            // cmbTenSP
            // 
            this.cmbTenSP.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbTenSP.FormattingEnabled = true;
            this.cmbTenSP.Location = new System.Drawing.Point(148, 19);
            this.cmbTenSP.Name = "cmbTenSP";
            this.cmbTenSP.Size = new System.Drawing.Size(236, 24);
            this.cmbTenSP.TabIndex = 68;
            // 
            // txtbMaSP
            // 
            this.txtbMaSP.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtbMaSP.Enabled = false;
            this.txtbMaSP.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtbMaSP.Location = new System.Drawing.Point(448, 21);
            this.txtbMaSP.Name = "txtbMaSP";
            this.txtbMaSP.Size = new System.Drawing.Size(140, 22);
            this.txtbMaSP.TabIndex = 66;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold);
            this.label7.ForeColor = System.Drawing.Color.Black;
            this.label7.Location = new System.Drawing.Point(18, 146);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(87, 22);
            this.label7.TabIndex = 64;
            this.label7.Text = "Phân loại";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.ForeColor = System.Drawing.Color.Black;
            this.label12.Location = new System.Drawing.Point(348, 58);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(36, 16);
            this.label12.TabIndex = 61;
            this.label12.Text = "VNĐ";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.ForeColor = System.Drawing.Color.Black;
            this.label9.Location = new System.Drawing.Point(348, 85);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(36, 16);
            this.label9.TabIndex = 59;
            this.label9.Text = "VNĐ";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold);
            this.label8.ForeColor = System.Drawing.Color.Black;
            this.label8.Location = new System.Drawing.Point(474, 52);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(84, 22);
            this.label8.TabIndex = 17;
            this.label8.Text = "Hình ảnh";
            // 
            // pictureboxAnh
            // 
            this.pictureboxAnh.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pictureboxAnh.Location = new System.Drawing.Point(448, 76);
            this.pictureboxAnh.Name = "pictureboxAnh";
            this.pictureboxAnh.Size = new System.Drawing.Size(131, 125);
            this.pictureboxAnh.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureboxAnh.TabIndex = 16;
            this.pictureboxAnh.TabStop = false;
            // 
            // txtbSL
            // 
            this.txtbSL.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtbSL.Enabled = false;
            this.txtbSL.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtbSL.Location = new System.Drawing.Point(148, 111);
            this.txtbSL.Name = "txtbSL";
            this.txtbSL.Size = new System.Drawing.Size(236, 22);
            this.txtbSL.TabIndex = 13;
            this.txtbSL.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtbSL_KeyPress);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold);
            this.label6.ForeColor = System.Drawing.Color.Black;
            this.label6.Location = new System.Drawing.Point(17, 114);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(83, 22);
            this.label6.TabIndex = 12;
            this.label6.Text = "Số lượng";
            // 
            // txtbGiaBan
            // 
            this.txtbGiaBan.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtbGiaBan.Enabled = false;
            this.txtbGiaBan.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtbGiaBan.Location = new System.Drawing.Point(148, 82);
            this.txtbGiaBan.Name = "txtbGiaBan";
            this.txtbGiaBan.Size = new System.Drawing.Size(194, 22);
            this.txtbGiaBan.TabIndex = 11;
            this.txtbGiaBan.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtbGiaBan.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtbGiaBan_KeyPress);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold);
            this.label4.ForeColor = System.Drawing.Color.Black;
            this.label4.Location = new System.Drawing.Point(17, 85);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(75, 22);
            this.label4.TabIndex = 10;
            this.label4.Text = "Giá bán";
            // 
            // txtbGiaMua
            // 
            this.txtbGiaMua.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtbGiaMua.Enabled = false;
            this.txtbGiaMua.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtbGiaMua.Location = new System.Drawing.Point(148, 55);
            this.txtbGiaMua.Name = "txtbGiaMua";
            this.txtbGiaMua.Size = new System.Drawing.Size(194, 22);
            this.txtbGiaMua.TabIndex = 9;
            this.txtbGiaMua.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtbGiaMua.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtbGiaMua_KeyPress);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold);
            this.label3.ForeColor = System.Drawing.Color.Black;
            this.label3.Location = new System.Drawing.Point(17, 58);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(80, 22);
            this.label3.TabIndex = 8;
            this.label3.Text = "Giá mua";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Black;
            this.label2.Location = new System.Drawing.Point(17, 23);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(125, 22);
            this.label2.TabIndex = 6;
            this.label2.Text = "Tên sản phẩm";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold);
            this.label1.ForeColor = System.Drawing.Color.Black;
            this.label1.Location = new System.Drawing.Point(415, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(31, 22);
            this.label1.TabIndex = 0;
            this.label1.Text = "ID";
            // 
            // ShowSP
            // 
            this.ShowSP.Controls.Add(this.dgv_SP);
            this.ShowSP.ForeColor = System.Drawing.Color.Black;
            this.ShowSP.Location = new System.Drawing.Point(12, 266);
            this.ShowSP.Name = "ShowSP";
            this.ShowSP.Size = new System.Drawing.Size(791, 255);
            this.ShowSP.TabIndex = 11;
            this.ShowSP.TabStop = false;
            // 
            // dgv_SP
            // 
            this.dgv_SP.AllowUserToAddRows = false;
            this.dgv_SP.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgv_SP.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgv_SP.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_SP.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4,
            this.Column5,
            this.Column6,
            this.Column7});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.OrangeRed;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgv_SP.DefaultCellStyle = dataGridViewCellStyle1;
            this.dgv_SP.Location = new System.Drawing.Point(8, 19);
            this.dgv_SP.Name = "dgv_SP";
            this.dgv_SP.ReadOnly = true;
            this.dgv_SP.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgv_SP.Size = new System.Drawing.Size(779, 185);
            this.dgv_SP.TabIndex = 16;
            this.dgv_SP.SelectionChanged += new System.EventHandler(this.dgv_SP_SelectionChanged);
            // 
            // Column1
            // 
            this.Column1.DataPropertyName = "MaSP";
            this.Column1.HeaderText = "ID";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column2
            // 
            this.Column2.DataPropertyName = "TenSP";
            this.Column2.HeaderText = "Tên sản phẩm";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            // 
            // Column3
            // 
            this.Column3.DataPropertyName = "PhanLoai";
            this.Column3.HeaderText = "Phân loại";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            // 
            // Column4
            // 
            this.Column4.DataPropertyName = "GiaMua";
            this.Column4.HeaderText = "Giá mua";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            // 
            // Column5
            // 
            this.Column5.DataPropertyName = "GiaBan";
            this.Column5.HeaderText = "Giá bán";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            // 
            // Column6
            // 
            this.Column6.DataPropertyName = "SLTon";
            this.Column6.HeaderText = "SL tồn";
            this.Column6.Name = "Column6";
            this.Column6.ReadOnly = true;
            // 
            // Column7
            // 
            this.Column7.DataPropertyName = "HinhAnh";
            this.Column7.HeaderText = "Hình";
            this.Column7.Name = "Column7";
            this.Column7.ReadOnly = true;
            this.Column7.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Column7.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Column7.Visible = false;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.ForeColor = System.Drawing.Color.Red;
            this.label10.Location = new System.Drawing.Point(50, 36);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(89, 22);
            this.label10.TabIndex = 13;
            this.label10.Text = "Thông tin";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.ForeColor = System.Drawing.Color.Red;
            this.label13.Location = new System.Drawing.Point(50, 258);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(91, 22);
            this.label13.TabIndex = 14;
            this.label13.Text = "Sản phẩm";
            // 
            // openFile
            // 
            this.openFile.FileName = "openFileDialog1";
            // 
            // SanPham
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(810, 533);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.ShowSP);
            this.Controls.Add(this.ShowTT);
            this.Controls.Add(this.toolStrip1);
            this.Name = "SanPham";
            this.Text = "SanPham";
            this.Load += new System.EventHandler(this.SanPham_Load);
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.ShowTT.ResumeLayout(false);
            this.ShowTT.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureboxAnh)).EndInit();
            this.ShowSP.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_SP)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton btnXoa;
        private System.Windows.Forms.ToolStripButton btnSua;
        private System.Windows.Forms.ToolStripButton btnLuu;
        private System.Windows.Forms.ToolStripButton btnXemIn;
        private System.Windows.Forms.GroupBox ShowTT;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.PictureBox pictureboxAnh;
        private System.Windows.Forms.TextBox txtbSL;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtbGiaBan;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtbGiaMua;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox ShowSP;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox txtbMaSP;
        private System.Windows.Forms.DataGridView dgv_SP;
        private System.Windows.Forms.ComboBox cmbTenSP;
        private System.Windows.Forms.DataGridViewImageColumn Column8;
        private System.Windows.Forms.TextBox txtbPhanLoai;
        private System.Windows.Forms.Button btn_LoadAnh;
        private System.Windows.Forms.OpenFileDialog openFile;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column6;
        private System.Windows.Forms.DataGridViewImageColumn Column7;
    }
}