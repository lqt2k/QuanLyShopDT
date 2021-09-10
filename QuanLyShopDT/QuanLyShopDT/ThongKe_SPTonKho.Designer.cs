namespace QuanLyShopDT
{
    partial class ThongKe_SPTonKho
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
            this.btn_Thoat = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.lbl_TenNSX = new System.Windows.Forms.Label();
            this.btn_ThongKe = new System.Windows.Forms.Button();
            this.cmb_TenSP = new System.Windows.Forms.ComboBox();
            this.cmb_TenNSX = new System.Windows.Forms.ComboBox();
            this.rdb_SPTheoten = new System.Windows.Forms.RadioButton();
            this.rdb_SPHet = new System.Windows.Forms.RadioButton();
            this.rdb_SPCon = new System.Windows.Forms.RadioButton();
            this.listV_TKSanPham = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader4 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btn_Thoat);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.lbl_TenNSX);
            this.groupBox1.Controls.Add(this.btn_ThongKe);
            this.groupBox1.Controls.Add(this.cmb_TenSP);
            this.groupBox1.Controls.Add(this.cmb_TenNSX);
            this.groupBox1.Controls.Add(this.rdb_SPTheoten);
            this.groupBox1.Controls.Add(this.rdb_SPHet);
            this.groupBox1.Controls.Add(this.rdb_SPCon);
            this.groupBox1.Location = new System.Drawing.Point(32, 27);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(560, 148);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "THỐNG KÊ";
            // 
            // btn_Thoat
            // 
            this.btn_Thoat.Location = new System.Drawing.Point(255, 105);
            this.btn_Thoat.Name = "btn_Thoat";
            this.btn_Thoat.Size = new System.Drawing.Size(109, 31);
            this.btn_Thoat.TabIndex = 8;
            this.btn_Thoat.Text = "THOÁT";
            this.btn_Thoat.UseVisualStyleBackColor = true;
            this.btn_Thoat.Click += new System.EventHandler(this.btn_Thoat_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(334, 69);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(78, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "Tên Sản Phẩm";
            // 
            // lbl_TenNSX
            // 
            this.lbl_TenNSX.AutoSize = true;
            this.lbl_TenNSX.Location = new System.Drawing.Point(334, 27);
            this.lbl_TenNSX.Name = "lbl_TenNSX";
            this.lbl_TenNSX.Size = new System.Drawing.Size(51, 13);
            this.lbl_TenNSX.TabIndex = 6;
            this.lbl_TenNSX.Text = "Tên NSX";
            // 
            // btn_ThongKe
            // 
            this.btn_ThongKe.Location = new System.Drawing.Point(47, 105);
            this.btn_ThongKe.Name = "btn_ThongKe";
            this.btn_ThongKe.Size = new System.Drawing.Size(109, 31);
            this.btn_ThongKe.TabIndex = 5;
            this.btn_ThongKe.Text = "THỐNG KÊ";
            this.btn_ThongKe.UseVisualStyleBackColor = true;
            this.btn_ThongKe.Click += new System.EventHandler(this.btn_ThongKe_Click);
            // 
            // cmb_TenSP
            // 
            this.cmb_TenSP.FormattingEnabled = true;
            this.cmb_TenSP.Location = new System.Drawing.Point(418, 65);
            this.cmb_TenSP.Name = "cmb_TenSP";
            this.cmb_TenSP.Size = new System.Drawing.Size(136, 21);
            this.cmb_TenSP.TabIndex = 4;
            // 
            // cmb_TenNSX
            // 
            this.cmb_TenNSX.FormattingEnabled = true;
            this.cmb_TenNSX.Location = new System.Drawing.Point(418, 24);
            this.cmb_TenNSX.Name = "cmb_TenNSX";
            this.cmb_TenNSX.Size = new System.Drawing.Size(136, 21);
            this.cmb_TenNSX.TabIndex = 3;
            this.cmb_TenNSX.SelectedIndexChanged += new System.EventHandler(this.cmb_TenNSX_SelectedIndexChanged);
            // 
            // rdb_SPTheoten
            // 
            this.rdb_SPTheoten.AutoSize = true;
            this.rdb_SPTheoten.Location = new System.Drawing.Point(178, 28);
            this.rdb_SPTheoten.Name = "rdb_SPTheoten";
            this.rdb_SPTheoten.Size = new System.Drawing.Size(124, 17);
            this.rdb_SPTheoten.TabIndex = 2;
            this.rdb_SPTheoten.TabStop = true;
            this.rdb_SPTheoten.Text = "Sản Phẩm Theo Tên";
            this.rdb_SPTheoten.UseVisualStyleBackColor = true;
            this.rdb_SPTheoten.CheckedChanged += new System.EventHandler(this.rdb_SPTheoten_CheckedChanged);
            // 
            // rdb_SPHet
            // 
            this.rdb_SPHet.AutoSize = true;
            this.rdb_SPHet.Location = new System.Drawing.Point(38, 65);
            this.rdb_SPHet.Name = "rdb_SPHet";
            this.rdb_SPHet.Size = new System.Drawing.Size(94, 17);
            this.rdb_SPHet.TabIndex = 1;
            this.rdb_SPHet.TabStop = true;
            this.rdb_SPHet.Text = "Sản Phẩm Hết";
            this.rdb_SPHet.UseVisualStyleBackColor = true;
            // 
            // rdb_SPCon
            // 
            this.rdb_SPCon.AutoSize = true;
            this.rdb_SPCon.Location = new System.Drawing.Point(38, 28);
            this.rdb_SPCon.Name = "rdb_SPCon";
            this.rdb_SPCon.Size = new System.Drawing.Size(96, 17);
            this.rdb_SPCon.TabIndex = 0;
            this.rdb_SPCon.TabStop = true;
            this.rdb_SPCon.Text = "Sản Phẩm Còn";
            this.rdb_SPCon.UseVisualStyleBackColor = true;
            // 
            // listV_TKSanPham
            // 
            this.listV_TKSanPham.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3,
            this.columnHeader4});
            this.listV_TKSanPham.Location = new System.Drawing.Point(32, 198);
            this.listV_TKSanPham.Name = "listV_TKSanPham";
            this.listV_TKSanPham.Size = new System.Drawing.Size(560, 129);
            this.listV_TKSanPham.TabIndex = 1;
            this.listV_TKSanPham.UseCompatibleStateImageBehavior = false;
            this.listV_TKSanPham.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Mã SP";
            this.columnHeader1.Width = 127;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Mã NSX";
            this.columnHeader2.Width = 161;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Tên SP";
            this.columnHeader3.Width = 173;
            // 
            // columnHeader4
            // 
            this.columnHeader4.Text = "Số Lượng Tồn";
            this.columnHeader4.Width = 108;
            // 
            // ThongKe_SPTonKho
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(632, 339);
            this.Controls.Add(this.listV_TKSanPham);
            this.Controls.Add(this.groupBox1);
            this.Name = "ThongKe_SPTonKho";
            this.Text = "ThongKe_SPTonKho";
            this.Load += new System.EventHandler(this.ThongKe_SPTonKho_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btn_Thoat;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lbl_TenNSX;
        private System.Windows.Forms.Button btn_ThongKe;
        private System.Windows.Forms.ComboBox cmb_TenSP;
        private System.Windows.Forms.ComboBox cmb_TenNSX;
        private System.Windows.Forms.RadioButton rdb_SPTheoten;
        private System.Windows.Forms.RadioButton rdb_SPHet;
        private System.Windows.Forms.RadioButton rdb_SPCon;
        private System.Windows.Forms.ListView listV_TKSanPham;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.ColumnHeader columnHeader4;
    }
}