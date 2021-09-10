namespace QuanLyShopDT
{
    partial class Main
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Main));
            this.panelRight = new System.Windows.Forms.Panel();
            this.panelLeft = new System.Windows.Forms.Panel();
            this.panelBot = new System.Windows.Forms.Panel();
            this.panelTop = new System.Windows.Forms.Panel();
            this.Menu = new System.Windows.Forms.MenuStrip();
            this.menu_home = new System.Windows.Forms.ToolStripMenuItem();
            this.menu_employee = new System.Windows.Forms.ToolStripMenuItem();
            this.menu_customer = new System.Windows.Forms.ToolStripMenuItem();
            this.menu_products = new System.Windows.Forms.ToolStripMenuItem();
            this.menu_invoice = new System.Windows.Forms.ToolStripMenuItem();
            this.menu_statistics = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.sốLượngTồnKhoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.bánHàngToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.hóaĐơnNhậpSảnPhẩmToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.menuStrip_SanPham = new System.Windows.Forms.MenuStrip();
            this.tool_AddSP = new System.Windows.Forms.ToolStripMenuItem();
            this.lblShowName = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnThoatNick = new System.Windows.Forms.PictureBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.menuStrip_TTCN = new System.Windows.Forms.MenuStrip();
            this.tsTTCN = new System.Windows.Forms.ToolStripMenuItem();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.label3 = new System.Windows.Forms.Label();
            this.panelContent = new System.Windows.Forms.Panel();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.Menu.SuspendLayout();
            this.panel2.SuspendLayout();
            this.menuStrip_SanPham.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.btnThoatNick)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.menuStrip_TTCN.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            this.panelContent.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelRight
            // 
            this.panelRight.BackColor = System.Drawing.Color.OrangeRed;
            this.panelRight.Dock = System.Windows.Forms.DockStyle.Right;
            this.panelRight.Location = new System.Drawing.Point(1068, 10);
            this.panelRight.Name = "panelRight";
            this.panelRight.Size = new System.Drawing.Size(10, 555);
            this.panelRight.TabIndex = 17;
            // 
            // panelLeft
            // 
            this.panelLeft.BackColor = System.Drawing.Color.OrangeRed;
            this.panelLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelLeft.Location = new System.Drawing.Point(0, 10);
            this.panelLeft.Name = "panelLeft";
            this.panelLeft.Size = new System.Drawing.Size(10, 555);
            this.panelLeft.TabIndex = 16;
            // 
            // panelBot
            // 
            this.panelBot.BackColor = System.Drawing.Color.OrangeRed;
            this.panelBot.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelBot.ForeColor = System.Drawing.SystemColors.ControlText;
            this.panelBot.Location = new System.Drawing.Point(0, 565);
            this.panelBot.Name = "panelBot";
            this.panelBot.Size = new System.Drawing.Size(1078, 10);
            this.panelBot.TabIndex = 15;
            // 
            // panelTop
            // 
            this.panelTop.BackColor = System.Drawing.Color.OrangeRed;
            this.panelTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelTop.ForeColor = System.Drawing.SystemColors.ControlText;
            this.panelTop.Location = new System.Drawing.Point(0, 0);
            this.panelTop.Name = "panelTop";
            this.panelTop.Size = new System.Drawing.Size(1078, 10);
            this.panelTop.TabIndex = 14;
            // 
            // Menu
            // 
            this.Menu.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Menu.ImageScalingSize = new System.Drawing.Size(50, 50);
            this.Menu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menu_home,
            this.menu_employee,
            this.menu_customer,
            this.menu_products,
            this.menu_invoice,
            this.menu_statistics,
            this.toolStripMenuItem1,
            this.hóaĐơnNhậpSảnPhẩmToolStripMenuItem});
            this.Menu.Location = new System.Drawing.Point(10, 10);
            this.Menu.Name = "Menu";
            this.Menu.Size = new System.Drawing.Size(1058, 58);
            this.Menu.TabIndex = 18;
            this.Menu.Text = "menuStrip1";
            // 
            // menu_home
            // 
            this.menu_home.ForeColor = System.Drawing.Color.OrangeRed;
            this.menu_home.Image = ((System.Drawing.Image)(resources.GetObject("menu_home.Image")));
            this.menu_home.Name = "menu_home";
            this.menu_home.Size = new System.Drawing.Size(120, 54);
            this.menu_home.Text = "Home";
            this.menu_home.Click += new System.EventHandler(this.menu_home_Click);
            // 
            // menu_employee
            // 
            this.menu_employee.ForeColor = System.Drawing.Color.OrangeRed;
            this.menu_employee.Image = ((System.Drawing.Image)(resources.GetObject("menu_employee.Image")));
            this.menu_employee.Name = "menu_employee";
            this.menu_employee.Size = new System.Drawing.Size(152, 54);
            this.menu_employee.Text = "Employee";
            this.menu_employee.Click += new System.EventHandler(this.menu_employee_Click);
            // 
            // menu_customer
            // 
            this.menu_customer.ForeColor = System.Drawing.Color.OrangeRed;
            this.menu_customer.Image = ((System.Drawing.Image)(resources.GetObject("menu_customer.Image")));
            this.menu_customer.Name = "menu_customer";
            this.menu_customer.Size = new System.Drawing.Size(152, 54);
            this.menu_customer.Text = "Customer";
            this.menu_customer.Click += new System.EventHandler(this.menu_customer_Click);
            // 
            // menu_products
            // 
            this.menu_products.ForeColor = System.Drawing.Color.OrangeRed;
            this.menu_products.Image = ((System.Drawing.Image)(resources.GetObject("menu_products.Image")));
            this.menu_products.Name = "menu_products";
            this.menu_products.Size = new System.Drawing.Size(145, 54);
            this.menu_products.Text = "Products";
            this.menu_products.Click += new System.EventHandler(this.menu_products_Click);
            // 
            // menu_invoice
            // 
            this.menu_invoice.ForeColor = System.Drawing.Color.OrangeRed;
            this.menu_invoice.Image = ((System.Drawing.Image)(resources.GetObject("menu_invoice.Image")));
            this.menu_invoice.Name = "menu_invoice";
            this.menu_invoice.Size = new System.Drawing.Size(131, 54);
            this.menu_invoice.Text = "Invoice";
            // 
            // menu_statistics
            // 
            this.menu_statistics.ForeColor = System.Drawing.Color.OrangeRed;
            this.menu_statistics.Image = ((System.Drawing.Image)(resources.GetObject("menu_statistics.Image")));
            this.menu_statistics.Name = "menu_statistics";
            this.menu_statistics.Size = new System.Drawing.Size(146, 54);
            this.menu_statistics.Text = "Statistics";
            this.menu_statistics.Click += new System.EventHandler(this.menu_statistics_Click);
            // 
            // toolStripMenuItem1
            // 
            this.toolStripMenuItem1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.sốLượngTồnKhoToolStripMenuItem,
            this.bánHàngToolStripMenuItem});
            this.toolStripMenuItem1.ForeColor = System.Drawing.Color.OrangeRed;
            this.toolStripMenuItem1.Name = "toolStripMenuItem1";
            this.toolStripMenuItem1.Size = new System.Drawing.Size(100, 54);
            this.toolStripMenuItem1.Text = "Thống kê";
            // 
            // sốLượngTồnKhoToolStripMenuItem
            // 
            this.sốLượngTồnKhoToolStripMenuItem.ForeColor = System.Drawing.Color.OrangeRed;
            this.sốLượngTồnKhoToolStripMenuItem.Name = "sốLượngTồnKhoToolStripMenuItem";
            this.sốLượngTồnKhoToolStripMenuItem.Size = new System.Drawing.Size(237, 26);
            this.sốLượngTồnKhoToolStripMenuItem.Text = "Số Lượng Tồn Kho";
            this.sốLượngTồnKhoToolStripMenuItem.Click += new System.EventHandler(this.sốLượngTồnKhoToolStripMenuItem_Click);
            // 
            // bánHàngToolStripMenuItem
            // 
            this.bánHàngToolStripMenuItem.ForeColor = System.Drawing.Color.OrangeRed;
            this.bánHàngToolStripMenuItem.Name = "bánHàngToolStripMenuItem";
            this.bánHàngToolStripMenuItem.Size = new System.Drawing.Size(237, 26);
            this.bánHàngToolStripMenuItem.Text = "Bán Hàng";
            this.bánHàngToolStripMenuItem.Click += new System.EventHandler(this.bánHàngToolStripMenuItem_Click);
            // 
            // hóaĐơnNhậpSảnPhẩmToolStripMenuItem
            // 
            this.hóaĐơnNhậpSảnPhẩmToolStripMenuItem.Name = "hóaĐơnNhậpSảnPhẩmToolStripMenuItem";
            this.hóaĐơnNhậpSảnPhẩmToolStripMenuItem.Size = new System.Drawing.Size(233, 54);
            this.hóaĐơnNhậpSảnPhẩmToolStripMenuItem.Text = "Hóa Đơn Nhập Sản Phẩm";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.OrangeRed;
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.panel1.Location = new System.Drawing.Point(10, 68);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1058, 10);
            this.panel1.TabIndex = 19;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.OrangeRed;
            this.panel2.Controls.Add(this.menuStrip_SanPham);
            this.panel2.Controls.Add(this.lblShowName);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.btnThoatNick);
            this.panel2.Controls.Add(this.pictureBox1);
            this.panel2.Controls.Add(this.menuStrip_TTCN);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel2.Location = new System.Drawing.Point(10, 78);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(255, 487);
            this.panel2.TabIndex = 20;
            // 
            // menuStrip_SanPham
            // 
            this.menuStrip_SanPham.Dock = System.Windows.Forms.DockStyle.None;
            this.menuStrip_SanPham.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuStrip_SanPham.ImageScalingSize = new System.Drawing.Size(30, 30);
            this.menuStrip_SanPham.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tool_AddSP});
            this.menuStrip_SanPham.LayoutStyle = System.Windows.Forms.ToolStripLayoutStyle.VerticalStackWithOverflow;
            this.menuStrip_SanPham.Location = new System.Drawing.Point(26, 141);
            this.menuStrip_SanPham.Name = "menuStrip_SanPham";
            this.menuStrip_SanPham.Size = new System.Drawing.Size(193, 40);
            this.menuStrip_SanPham.TabIndex = 6;
            // 
            // tool_AddSP
            // 
            this.tool_AddSP.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tool_AddSP.ForeColor = System.Drawing.Color.Black;
            this.tool_AddSP.Image = ((System.Drawing.Image)(resources.GetObject("tool_AddSP.Image")));
            this.tool_AddSP.ImageTransparentColor = System.Drawing.Color.Transparent;
            this.tool_AddSP.Name = "tool_AddSP";
            this.tool_AddSP.Size = new System.Drawing.Size(186, 34);
            this.tool_AddSP.Text = "Thêm Sản Phẩm";
            this.tool_AddSP.Click += new System.EventHandler(this.tool_AddSP_Click);
            // 
            // lblShowName
            // 
            this.lblShowName.AutoSize = true;
            this.lblShowName.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblShowName.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.lblShowName.Location = new System.Drawing.Point(116, 277);
            this.lblShowName.Name = "lblShowName";
            this.lblShowName.Size = new System.Drawing.Size(0, 22);
            this.lblShowName.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label2.Location = new System.Drawing.Point(96, 433);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(59, 22);
            this.label2.TabIndex = 2;
            this.label2.Text = "Thoát";
            // 
            // btnThoatNick
            // 
            this.btnThoatNick.Image = ((System.Drawing.Image)(resources.GetObject("btnThoatNick.Image")));
            this.btnThoatNick.Location = new System.Drawing.Point(46, 419);
            this.btnThoatNick.Name = "btnThoatNick";
            this.btnThoatNick.Size = new System.Drawing.Size(44, 47);
            this.btnThoatNick.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.btnThoatNick.TabIndex = 1;
            this.btnThoatNick.TabStop = false;
            this.btnThoatNick.MouseClick += new System.Windows.Forms.MouseEventHandler(this.btnThoatNick_MouseClick);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(47, 6);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(108, 108);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // menuStrip_TTCN
            // 
            this.menuStrip_TTCN.Dock = System.Windows.Forms.DockStyle.None;
            this.menuStrip_TTCN.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuStrip_TTCN.ImageScalingSize = new System.Drawing.Size(30, 30);
            this.menuStrip_TTCN.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsTTCN});
            this.menuStrip_TTCN.LayoutStyle = System.Windows.Forms.ToolStripLayoutStyle.VerticalStackWithOverflow;
            this.menuStrip_TTCN.Location = new System.Drawing.Point(9, 141);
            this.menuStrip_TTCN.Name = "menuStrip_TTCN";
            this.menuStrip_TTCN.Size = new System.Drawing.Size(222, 40);
            this.menuStrip_TTCN.TabIndex = 5;
            // 
            // tsTTCN
            // 
            this.tsTTCN.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tsTTCN.ForeColor = System.Drawing.Color.Black;
            this.tsTTCN.Image = ((System.Drawing.Image)(resources.GetObject("tsTTCN.Image")));
            this.tsTTCN.ImageTransparentColor = System.Drawing.Color.Transparent;
            this.tsTTCN.Name = "tsTTCN";
            this.tsTTCN.Size = new System.Drawing.Size(215, 34);
            this.tsTTCN.Text = "Thông Tin Cá Nhân";
            this.tsTTCN.Click += new System.EventHandler(this.tsTTCN_Click);
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox2.Image")));
            this.pictureBox2.Location = new System.Drawing.Point(70, 173);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(702, 267);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox2.TabIndex = 23;
            this.pictureBox2.TabStop = false;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 33F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.OrangeRed;
            this.label3.Location = new System.Drawing.Point(126, 36);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(621, 102);
            this.label3.TabIndex = 24;
            this.label3.Text = "CHÀO MỪNG BẠN ĐẾN VỚI \r\nTRUNG VIỆT SHOP";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // panelContent
            // 
            this.panelContent.Controls.Add(this.label3);
            this.panelContent.Controls.Add(this.pictureBox2);
            this.panelContent.Location = new System.Drawing.Point(271, 83);
            this.panelContent.Name = "panelContent";
            this.panelContent.Size = new System.Drawing.Size(791, 476);
            this.panelContent.TabIndex = 21;
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(61, 4);
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1078, 575);
            this.Controls.Add(this.panelContent);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.Menu);
            this.Controls.Add(this.panelRight);
            this.Controls.Add(this.panelLeft);
            this.Controls.Add(this.panelBot);
            this.Controls.Add(this.panelTop);
            this.MainMenuStrip = this.menuStrip_TTCN;
            this.Name = "Main";
            this.Text = "Main";
            this.Load += new System.EventHandler(this.Main_Load);
            this.Menu.ResumeLayout(false);
            this.Menu.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.menuStrip_SanPham.ResumeLayout(false);
            this.menuStrip_SanPham.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.btnThoatNick)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.menuStrip_TTCN.ResumeLayout(false);
            this.menuStrip_TTCN.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            this.panelContent.ResumeLayout(false);
            this.panelContent.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panelRight;
        private System.Windows.Forms.Panel panelLeft;
        private System.Windows.Forms.Panel panelBot;
        private System.Windows.Forms.Panel panelTop;
        private System.Windows.Forms.MenuStrip Menu;
        private System.Windows.Forms.ToolStripMenuItem menu_home;
        private System.Windows.Forms.ToolStripMenuItem menu_employee;
        private System.Windows.Forms.ToolStripMenuItem menu_customer;
        private System.Windows.Forms.ToolStripMenuItem menu_products;
        private System.Windows.Forms.ToolStripMenuItem menu_invoice;
        private System.Windows.Forms.ToolStripMenuItem menu_statistics;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.PictureBox btnThoatNick;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblShowName;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Panel panelContent;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.MenuStrip menuStrip_TTCN;
        private System.Windows.Forms.ToolStripMenuItem tsTTCN;
        private System.Windows.Forms.MenuStrip menuStrip_SanPham;
        private System.Windows.Forms.ToolStripMenuItem tool_AddSP;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem sốLượngTồnKhoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem bánHàngToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem hóaĐơnNhậpSảnPhẩmToolStripMenuItem;
    }
}

