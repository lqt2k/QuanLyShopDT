namespace QuanLyShopDT
{
    partial class ThongKeNhapHang
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
            this.lbl_TenSP = new System.Windows.Forms.Label();
            this.cmb_TenSP = new System.Windows.Forms.ComboBox();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.dateTimePicker2 = new System.Windows.Forms.DateTimePicker();
            this.lbl_TuNgay = new System.Windows.Forms.Label();
            this.lbl_DenNgay = new System.Windows.Forms.Label();
            this.btn_TK = new System.Windows.Forms.Button();
            this.btn_Thoat = new System.Windows.Forms.Button();
            this.listView1 = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.txtTongSL = new System.Windows.Forms.TextBox();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btn_Thoat);
            this.groupBox1.Controls.Add(this.btn_TK);
            this.groupBox1.Controls.Add(this.lbl_DenNgay);
            this.groupBox1.Controls.Add(this.lbl_TuNgay);
            this.groupBox1.Controls.Add(this.dateTimePicker2);
            this.groupBox1.Controls.Add(this.dateTimePicker1);
            this.groupBox1.Controls.Add(this.cmb_TenSP);
            this.groupBox1.Controls.Add(this.lbl_TenSP);
            this.groupBox1.Location = new System.Drawing.Point(87, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(498, 172);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "THÔNG TIN NHẬP HÀNG";
            // 
            // lbl_TenSP
            // 
            this.lbl_TenSP.AutoSize = true;
            this.lbl_TenSP.Location = new System.Drawing.Point(6, 32);
            this.lbl_TenSP.Name = "lbl_TenSP";
            this.lbl_TenSP.Size = new System.Drawing.Size(43, 13);
            this.lbl_TenSP.TabIndex = 0;
            this.lbl_TenSP.Text = "Tên SP";
            // 
            // cmb_TenSP
            // 
            this.cmb_TenSP.FormattingEnabled = true;
            this.cmb_TenSP.Location = new System.Drawing.Point(83, 29);
            this.cmb_TenSP.Name = "cmb_TenSP";
            this.cmb_TenSP.Size = new System.Drawing.Size(121, 21);
            this.cmb_TenSP.TabIndex = 1;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePicker1.Location = new System.Drawing.Point(335, 29);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(116, 20);
            this.dateTimePicker1.TabIndex = 2;
            // 
            // dateTimePicker2
            // 
            this.dateTimePicker2.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePicker2.Location = new System.Drawing.Point(335, 78);
            this.dateTimePicker2.Name = "dateTimePicker2";
            this.dateTimePicker2.Size = new System.Drawing.Size(116, 20);
            this.dateTimePicker2.TabIndex = 3;
            // 
            // lbl_TuNgay
            // 
            this.lbl_TuNgay.AutoSize = true;
            this.lbl_TuNgay.Location = new System.Drawing.Point(240, 32);
            this.lbl_TuNgay.Name = "lbl_TuNgay";
            this.lbl_TuNgay.Size = new System.Drawing.Size(54, 13);
            this.lbl_TuNgay.TabIndex = 4;
            this.lbl_TuNgay.Text = "Từ Ngày: ";
            // 
            // lbl_DenNgay
            // 
            this.lbl_DenNgay.AutoSize = true;
            this.lbl_DenNgay.Location = new System.Drawing.Point(240, 78);
            this.lbl_DenNgay.Name = "lbl_DenNgay";
            this.lbl_DenNgay.Size = new System.Drawing.Size(61, 13);
            this.lbl_DenNgay.TabIndex = 5;
            this.lbl_DenNgay.Text = "Đến Ngày: ";
            // 
            // btn_TK
            // 
            this.btn_TK.Location = new System.Drawing.Point(37, 119);
            this.btn_TK.Name = "btn_TK";
            this.btn_TK.Size = new System.Drawing.Size(105, 28);
            this.btn_TK.TabIndex = 6;
            this.btn_TK.Text = "THỐNG KÊ";
            this.btn_TK.UseVisualStyleBackColor = true;
            this.btn_TK.Click += new System.EventHandler(this.btn_TK_Click);
            // 
            // btn_Thoat
            // 
            this.btn_Thoat.Location = new System.Drawing.Point(217, 119);
            this.btn_Thoat.Name = "btn_Thoat";
            this.btn_Thoat.Size = new System.Drawing.Size(105, 28);
            this.btn_Thoat.TabIndex = 7;
            this.btn_Thoat.Text = "THOÁT";
            this.btn_Thoat.UseVisualStyleBackColor = true;
            this.btn_Thoat.Click += new System.EventHandler(this.btn_Thoat_Click);
            // 
            // listView1
            // 
            this.listView1.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3});
            this.listView1.Location = new System.Drawing.Point(87, 190);
            this.listView1.Name = "listView1";
            this.listView1.Size = new System.Drawing.Size(498, 134);
            this.listView1.TabIndex = 1;
            this.listView1.UseCompatibleStateImageBehavior = false;
            this.listView1.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Mã phiếu nhập";
            this.columnHeader1.Width = 157;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Ngày nhập";
            this.columnHeader2.Width = 108;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Số lượng";
            this.columnHeader3.Width = 137;
            // 
            // txtTongSL
            // 
            this.txtTongSL.Location = new System.Drawing.Point(617, 246);
            this.txtTongSL.Name = "txtTongSL";
            this.txtTongSL.Size = new System.Drawing.Size(100, 20);
            this.txtTongSL.TabIndex = 2;
            // 
            // ThongKeNhapHang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(761, 353);
            this.Controls.Add(this.txtTongSL);
            this.Controls.Add(this.listView1);
            this.Controls.Add(this.groupBox1);
            this.Name = "ThongKeNhapHang";
            this.Text = "ThongKeNhapHang";
            this.Load += new System.EventHandler(this.ThongKeNhapHang_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btn_Thoat;
        private System.Windows.Forms.Button btn_TK;
        private System.Windows.Forms.Label lbl_DenNgay;
        private System.Windows.Forms.Label lbl_TuNgay;
        private System.Windows.Forms.DateTimePicker dateTimePicker2;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.ComboBox cmb_TenSP;
        private System.Windows.Forms.Label lbl_TenSP;
        private System.Windows.Forms.ListView listView1;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.TextBox txtTongSL;
    }
}