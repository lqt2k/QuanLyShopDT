using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyShopDT
{
    static class Program
    {
        public static DangNhap frmDangNhap = null;
        public static Main frmMain = null;
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            frmDangNhap = new DangNhap();
            frmMain = new Main();
            Application.Run(frmDangNhap);
        }
    }
}
