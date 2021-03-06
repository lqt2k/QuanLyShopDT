USE [QL_ShopDT]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[MaAD] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[CMND] [nvarchar](9) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DT] [nvarchar](11) NULL,
	[Email] [nvarchar](50) NULL,
	[UserName] [nvarchar](30) NULL,
	[PassWord] [nvarchar](15) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[MaAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDonBan]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonBan](
	[MaHDBan] [nvarchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[GiaBan] [int] NULL,
	[SLBan] [int] NULL,
	[MaKM] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHDBan] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDonMua]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonMua](
	[MaHDMua] [nvarchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[MaSX] [nvarchar](10) NOT NULL,
	[SLMua] [int] NULL,
	[GiaMua] [int] NULL,
 CONSTRAINT [PK_CTHDM] PRIMARY KEY CLUSTERED 
(
	[MaHDMua] ASC,
	[MaSP] ASC,
	[MaSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPN_SANPHAM]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTPN_SANPHAM](
	[MAPN] [varchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[SOLUONGNHAPSANPHAM] [int] NOT NULL,
	[THANHTIENNT] [decimal](18, 0) NOT NULL,
	[DONGIABAN] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[MaFB] [nvarchar](10) NOT NULL,
	[MaKH] [nvarchar](10) NOT NULL,
	[ChuDe] [nvarchar](100) NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Ngay] [date] NULL,
	[NoiDung] [nvarchar](1000) NULL,
	[TinhTrang] [nvarchar](20) NULL,
 CONSTRAINT [PK_FB] PRIMARY KEY CLUSTERED 
(
	[MaFB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[MaHDBan] [nvarchar](10) NOT NULL,
	[NgayBan] [date] NULL,
	[MaKH] [nvarchar](10) NOT NULL,
	[TinhTrang] [nvarchar](30) NULL,
	[NguoiGiao] [nvarchar](10) NOT NULL,
	[NgayGiao] [date] NULL,
 CONSTRAINT [PK_HDB] PRIMARY KEY CLUSTERED 
(
	[MaHDBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonMua]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonMua](
	[MaHDMua] [nvarchar](10) NOT NULL,
	[NgayMua] [date] NULL,
	[NguoiDat] [nvarchar](10) NOT NULL,
	[NguoiNhan] [nvarchar](10) NOT NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[NhaCungUng] [nvarchar](10) NOT NULL,
	[NgayNhan] [date] NULL,
 CONSTRAINT [PK_HDM] PRIMARY KEY CLUSTERED 
(
	[MaHDMua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[CMND] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DT] [nvarchar](11) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [nvarchar](10) NOT NULL,
	[NgayBD] [datetime] NULL,
	[NgayKT] [datetime] NULL,
	[NoiDung] [nvarchar](100) NULL,
	[KhuyenMai] [int] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manager]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[MaM] [nvarchar](10) NOT NULL,
	[TenM] [nvarchar](50) NULL,
	[MASTER] [bit] NULL,
	[MI_VIEW] [bit] NULL,
	[MI_CHANGE] [bit] NULL,
	[ME_DIRECTOR] [bit] NULL,
	[ME_VIEW] [bit] NULL,
	[ME_CHANGE] [bit] NULL,
	[ME_ADD] [bit] NULL,
	[ME_DELETE] [bit] NULL,
	[MP_DIRECTOR] [bit] NULL,
	[MP_VIEW] [bit] NULL,
	[MP_CHANGE] [bit] NULL,
	[MP_ADD] [bit] NULL,
	[MP_DELETE] [bit] NULL,
	[MM_VIEW] [bit] NULL,
	[MM_CHANGE] [bit] NULL,
	[MM_ADD] [bit] NULL,
	[MN_DELETE] [bit] NULL,
	[MC_DIRECTOR] [bit] NULL,
	[MC_VIEW] [bit] NULL,
	[MC_CHANGE] [bit] NULL,
	[MC_ADD] [bit] NULL,
	[MC_DELETE] [bit] NULL,
	[MS_DIRECTOR] [bit] NULL,
	[MS_VIEW] [bit] NULL,
	[MS_CHANGE] [bit] NULL,
	[MS_ADD] [bit] NULL,
	[MS_DELETE] [bit] NULL,
	[MB_DIRECTOR] [bit] NULL,
	[MB_VIEW] [bit] NULL,
	[MB_CHANGE] [bit] NULL,
	[MB_ADD] [bit] NULL,
	[MB_DELETE] [bit] NULL,
	[ST_VIEW] [bit] NULL,
	[ST_PRINT] [bit] NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[MaM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungUng]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungUng](
	[MaCU] [nvarchar](10) NOT NULL,
	[TenNCU] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DT] [nchar](10) NULL,
 CONSTRAINT [PK_NhaCungUng] PRIMARY KEY CLUSTERED 
(
	[MaCU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaSX] [nvarchar](10) NOT NULL,
	[TenSX] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DT] [int] NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUNHAPSANPHAM]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUNHAPSANPHAM](
	[MAPN] [varchar](10) NOT NULL,
	[NGAYNHAPSP] [date] NOT NULL,
	[GHICHU] [nvarchar](500) NULL,
	[TRANGTHAI] [nvarchar](20) NULL,
	[TONGTIEN] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](10) NOT NULL,
	[MaSX] [nvarchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[GiaMua] [int] NULL,
	[GiaBan] [int] NULL,
	[NgayNhap] [date] NULL,
	[SLTon] [int] NULL,
	[HinhAnh] [nvarchar](200) NULL,
	[PhanLoai] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[CT1] [nvarchar](100) NULL,
	[CT2] [nvarchar](100) NULL,
	[CT3] [nvarchar](100) NULL,
	[CT4] [nvarchar](100) NULL,
	[CT5] [nvarchar](100) NULL,
	[CT6] [nvarchar](100) NULL,
	[CT7] [nvarchar](100) NULL,
	[CT8] [nvarchar](100) NULL,
	[CT9] [nvarchar](100) NULL,
	[CT10] [nvarchar](100) NULL,
	[CT11] [nvarchar](100) NULL,
	[CT12] [nvarchar](100) NULL,
	[CT13] [nvarchar](100) NULL,
	[CT14] [nvarchar](100) NULL,
	[CT15] [nvarchar](100) NULL,
	[CT16] [nvarchar](100) NULL,
	[CT17] [nvarchar](100) NULL,
	[CT18] [nvarchar](100) NULL,
	[CT19] [nvarchar](100) NULL,
	[CT20] [nvarchar](100) NULL,
	[CT21] [nvarchar](100) NULL,
	[CT22] [nvarchar](100) NULL,
	[CT23] [nvarchar](100) NULL,
	[CT24] [nvarchar](100) NULL,
	[CT25] [nvarchar](100) NULL,
	[CT26] [nvarchar](100) NULL,
	[CT27] [nvarchar](100) NULL,
	[CT28] [nvarchar](100) NULL,
	[CT29] [nvarchar](100) NULL,
	[CT30] [nvarchar](100) NULL,
	[NoiBat] [nvarchar](1000) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongKeTaiChinh]    Script Date: 12/29/2020 7:15:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongKeTaiChinh](
	[Nam] [int] NULL,
	[Quy] [int] NULL,
	[Thang] [int] NULL,
	[GiaTriTonKho] [money] NULL,
	[DoanhThu] [money] NULL,
	[Lai] [money] NULL,
	[TienMat] [money] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Admin] ([MaAD], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email], [UserName], [PassWord]) VALUES (N'AD01', N'Lê Quang Trung', CAST(0x00008F0700000000 AS DateTime), N'Nam', N'012346532', N'Go? Vâ?p, TP.HCM', N'1234567890', N'wintrung01@gmail.com', N'admin', N'123456')
INSERT [dbo].[Admin] ([MaAD], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email], [UserName], [PassWord]) VALUES (N'AD02', N'Lê Quang ?a?o', CAST(0x00008F0800000000 AS DateTime), N'Nam', N'012345678', N'Go? Vâ?p, TP.HCM', N'0993307780', N'wintrung01@gmail.com', NULL, N'123456')
INSERT [dbo].[Admin] ([MaAD], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email], [UserName], [PassWord]) VALUES (N'AD03', N'Lê Quang ???c', CAST(0x00008F0900000000 AS DateTime), N'Nam', N'012345677', N'Go? Vâ?p, TP.HCM', N'1234567890', N'wintrung01@gmail.com', NULL, N'123456')
INSERT [dbo].[Admin] ([MaAD], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email], [UserName], [PassWord]) VALUES (N'AD04', N'Lê Quang Tri?', CAST(0x00008F0A00000000 AS DateTime), N'Nam', N'123456742', N'Go? Vâ?p, TP.HCM', N'1234567890', N'wintrung01@gmail.com', NULL, N'123456')
INSERT [dbo].[Admin] ([MaAD], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email], [UserName], [PassWord]) VALUES (N'AD05', N'Lê Quang Tr??c', CAST(0x00008F0B00000000 AS DateTime), N'Nam', N'123123123', N'Go? Vâ?p, TP.HCM', N'1234567890', N'wintrung01@gmail.com', NULL, N'123456')
INSERT [dbo].[Admin] ([MaAD], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email], [UserName], [PassWord]) VALUES (N'AD06', N'Lê Quang Huy', CAST(0x00008EB100000000 AS DateTime), N'Nam', N'123456788', N'Go? Vâ?p, TP.HCM', N'0908764567', N'wintrung01@gmail.com', NULL, N'1234567')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00001', N'SP0013', 1999000, 1, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00002', N'SP0018', 1749000, 1, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00003', N'SP0038', 5789000, 2, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00004', N'SP0051', 2199000, 2, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00005', N'SP0018', 1749000, 3, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00006', N'SP0018', 1749000, 2, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00007', N'SP0028', 1249000, 1, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00008', N'SP0041', 7000000, 1, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00009', N'SP0040', 17693000, 2, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00009', N'SP0041', 7000000, 1, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00010', N'SP0039', 19998000, 1, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00010', N'SP0040', 17693000, 2, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00011', N'SP0038', 5789000, 1, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00011', N'SP0040', 17693000, 2, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00012', N'SP0040', 17693000, 1, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00012', N'SP0045', 3489000, 1, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00013', N'SP0040', 17693000, 4, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00014', N'SP0040', 17693000, 6, N'KM01')
INSERT [dbo].[ChiTietHoaDonBan] ([MaHDBan], [MaSP], [GiaBan], [SLBan], [MaKM]) VALUES (N'HDB00015', N'SP0040', 17693000, 4, N'KM01')
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0001', N'SP0044', N'SX01', 10, 3000000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0001', N'SP0046', N'SX01', 10, 3000000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0001', N'SP0047', N'SX01', 15, 2000000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0001', N'SP0049', N'SX01', 10, 2500000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0001', N'SP0050', N'SX01', 12, 1850000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0001', N'SP0051', N'SX01', 10, 1900000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0002', N'SP0018', N'SX03', 20, 1500000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0002', N'SP0025', N'SX03', 20, 1100000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0002', N'SP0035', N'SX03', 10, 6500000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0002', N'SP0038', N'SX03', 15, 5000000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0003', N'SP0039', N'SX04', 10, 19000000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0003', N'SP0040', N'SX04', 10, 16600000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0003', N'SP0041', N'SX04', 10, 6300000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0004', N'SP0020', N'SX05', 15, 1300000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0004', N'SP0022', N'SX05', 15, 1300000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0004', N'SP0028', N'SX05', 15, 1000000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0004', N'SP0033', N'SX05', 10, 7000000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0004', N'SP0043', N'SX05', 10, 3500000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0004', N'SP0045', N'SX05', 10, 3000000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0005', N'SP0029', N'SX06', 10, 9000000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0005', N'SP0030', N'SX06', 10, 9800000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0005', N'SP0031', N'SX06', 10, 9400000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0005', N'SP0032', N'SX06', 10, 8300000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0005', N'SP0034', N'SX06', 10, 6500000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0005', N'SP0048', N'SX06', 10, 2500000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0006', N'SP0051', N'SX01', 10, 2000000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0007', N'SP0045', N'SX05', 10, 2000000)
INSERT [dbo].[ChiTietHoaDonMua] ([MaHDMua], [MaSP], [MaSX], [SLMua], [GiaMua]) VALUES (N'HDM0008', N'SP0040', N'SX04', 10, 10000000)
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN001', N'SP0010', 10, CAST(25000000 AS Decimal(18, 0)), CAST(2500000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN00112', N'SP0007', 15, CAST(2250000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN002', N'SP0005', 5, CAST(15000000 AS Decimal(18, 0)), CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN002', N'SP0017', 15, CAST(4500000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN0021', N'SP0003', 10, CAST(5000000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN003', N'SP0025', 7, CAST(16100000 AS Decimal(18, 0)), CAST(2300000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN0031', N'SP0012', 10, CAST(15000000 AS Decimal(18, 0)), CAST(1500000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN004', N'SP0007', 6, CAST(30000000 AS Decimal(18, 0)), CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN004', N'SP0011', 5, CAST(10000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN004', N'SP0016', 3, CAST(9400000 AS Decimal(18, 0)), CAST(3200000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN007', N'SP0006', 8, CAST(36000000 AS Decimal(18, 0)), CAST(4500000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN007', N'SP0012', 10, CAST(2250000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN007', N'SP0018', 4, CAST(10000000 AS Decimal(18, 0)), CAST(2500000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN008', N'SP0007', 2, CAST(10000000 AS Decimal(18, 0)), CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN008', N'SP0011', 30, CAST(4500000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN008', N'SP0036', 10, CAST(25000000 AS Decimal(18, 0)), CAST(2500000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN009', N'SP0002', 15, CAST(3000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN009', N'SP0014', 6, CAST(14400000 AS Decimal(18, 0)), CAST(2400000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN0091', N'SP0001', 5, CAST(10000000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)))
INSERT [dbo].[CTPN_SANPHAM] ([MAPN], [MaSP], [SOLUONGNHAPSANPHAM], [THANHTIENNT], [DONGIABAN]) VALUES (N'PN0091', N'SP0012', 20, CAST(30000000 AS Decimal(18, 0)), CAST(1500000 AS Decimal(18, 0)))
INSERT [dbo].[FeedBack] ([MaFB], [MaKH], [ChuDe], [HoTen], [DiaChi], [DT], [Email], [Ngay], [NoiDung], [TinhTrang]) VALUES (N'FB00001', N'KH00001', N'Góp ý khác', N'Lê Quang Trung', N'Go? Vâ?p, TP.HCM', N'0123456789', N'wintrung01@gmail.com', CAST(0x5C410B00 AS Date), N'L?i quá n?ng', N'?ã ??c')
INSERT [dbo].[FeedBack] ([MaFB], [MaKH], [ChuDe], [HoTen], [DiaChi], [DT], [Email], [Ngay], [NoiDung], [TinhTrang]) VALUES (N'FB00002', N'KH00002', N'Góp ý v? Website', N'', N'', N'', N'', CAST(0x5C410B00 AS Date), N'aaaaaaaaaaaaaaaaaa', N'?ã ??c')
INSERT [dbo].[FeedBack] ([MaFB], [MaKH], [ChuDe], [HoTen], [DiaChi], [DT], [Email], [Ngay], [NoiDung], [TinhTrang]) VALUES (N'FB00003', N'KH00003', N'Góp ý khác', N'', N'', N'', N'', CAST(0x5C410B00 AS Date), N'aaaaaaaaaaaaaaaaaaaa', N'?ã ??c')
INSERT [dbo].[FeedBack] ([MaFB], [MaKH], [ChuDe], [HoTen], [DiaChi], [DT], [Email], [Ngay], [NoiDung], [TinhTrang]) VALUES (N'FB00004', N'KH00004', N'Góp ý v? Website', N'', N'', N'', N'', CAST(0x5C410B00 AS Date), N'ddddddd?', N'?ã ??c')
INSERT [dbo].[FeedBack] ([MaFB], [MaKH], [ChuDe], [HoTen], [DiaChi], [DT], [Email], [Ngay], [NoiDung], [TinhTrang]) VALUES (N'FB00005', N'KH00005', N'Góp ý v? Website', N'', N'', N'', N'', CAST(0x7C410B00 AS Date), N'', N'Ch?a ??c')
INSERT [dbo].[FeedBack] ([MaFB], [MaKH], [ChuDe], [HoTen], [DiaChi], [DT], [Email], [Ngay], [NoiDung], [TinhTrang]) VALUES (N'FB00006', N'KH00006', N'Góp ý v? Website', N'ewrwe', N'ewrew', N'ewrew', N'ewrwer', CAST(0x7C410B00 AS Date), N'ewrwer', N'Ch?a ??c')
INSERT [dbo].[FeedBack] ([MaFB], [MaKH], [ChuDe], [HoTen], [DiaChi], [DT], [Email], [Ngay], [NoiDung], [TinhTrang]) VALUES (N'FB00007', N'KH00007', N'Góp ý v? Website', N'dasd', N'', N'ad', N'ada', CAST(0x7C410B00 AS Date), N'adasd', N'?ã ??c')
INSERT [dbo].[FeedBack] ([MaFB], [MaKH], [ChuDe], [HoTen], [DiaChi], [DT], [Email], [Ngay], [NoiDung], [TinhTrang]) VALUES (N'FB00008', N'KH00008', N'Góp ý v? Website', N'fewf', N'sfsd', N'?sf', N'fdsf', CAST(0x7C410B00 AS Date), N'sff', N'Ch?a ??c')
INSERT [dbo].[FeedBack] ([MaFB], [MaKH], [ChuDe], [HoTen], [DiaChi], [DT], [Email], [Ngay], [NoiDung], [TinhTrang]) VALUES (N'FB00009', N'KH00009', N'Góp ý v? Website', N'', N'', N'', N'', CAST(0x7C410B00 AS Date), N'', N'Ch?a ??c')
INSERT [dbo].[FeedBack] ([MaFB], [MaKH], [ChuDe], [HoTen], [DiaChi], [DT], [Email], [Ngay], [NoiDung], [TinhTrang]) VALUES (N'FB00010', N'KH00002', N'Góp ý v? Website', N'hghg', N'', N'', N'fsafsaf@vsfs.dsf', CAST(0x7C410B00 AS Date), N'kkjkjkjk', N'Ch?a ??c')
INSERT [dbo].[FeedBack] ([MaFB], [MaKH], [ChuDe], [HoTen], [DiaChi], [DT], [Email], [Ngay], [NoiDung], [TinhTrang]) VALUES (N'FB00011', N'KH00003', N'Góp ý v? Website', N'dsadsa', N'', N'', N'fsafsaf@vsfs.dsf', CAST(0x7C410B00 AS Date), N'dsadasda', N'Ch?a ??c')
INSERT [dbo].[FeedBack] ([MaFB], [MaKH], [ChuDe], [HoTen], [DiaChi], [DT], [Email], [Ngay], [NoiDung], [TinhTrang]) VALUES (N'FB00012', N'KH00003', N'Góp ý v? Website', N'dsadsa', N'', N'', N'fsafsaf@vsfs.dsf', CAST(0x7C410B00 AS Date), N'ds', N'Ch?a ??c')
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00001', CAST(0x7C410B00 AS Date), N'KH00005', N'Ch?a xác nh?n', N'AD01', NULL)
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00002', CAST(0x7C410B00 AS Date), N'KH00005', N'Ch?a xác nh?n', N'AD01', NULL)
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00003', CAST(0x7D410B00 AS Date), N'KH00001', N'?ã giao hàng', N'AD01', NULL)
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00004', CAST(0x7D410B00 AS Date), N'KH00002', N'?ã giao hàng', N'AD01', NULL)
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00005', CAST(0x7D410B00 AS Date), N'KH00001', N'?ã giao hàng', N'AD01', NULL)
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00006', CAST(0x7D410B00 AS Date), N'KH00001', N'?ã giao hàng', N'AD01', NULL)
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00007', CAST(0x7D410B00 AS Date), N'KH00001', N'?ã giao hàng', N'AD01', NULL)
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00008', CAST(0x7D410B00 AS Date), N'KH00001', N'?ã giao hàng', N'AD01', NULL)
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00009', CAST(0x7D410B00 AS Date), N'KH00014', N'?ã giao hàng', N'AD01', NULL)
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00010', CAST(0x7D410B00 AS Date), N'KH00001', N'Ch?a giao hàng', N'AD01', NULL)
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00011', CAST(0x7D410B00 AS Date), N'KH00015', N'Xác nh?n ??t hàng', N'AD01', NULL)
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00012', CAST(0x7D410B00 AS Date), N'KH00017', N'Xác nh?n ??t hàng', N'AD01', NULL)
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00013', CAST(0x4C410B00 AS Date), N'KH00014', N'?ã giao hàng', N'AD01', CAST(0x4C410B00 AS Date))
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00014', CAST(0x4C410B00 AS Date), N'KH00001', N'?ã giao hàng', N'AD01', CAST(0x4C410B00 AS Date))
INSERT [dbo].[HoaDonBan] ([MaHDBan], [NgayBan], [MaKH], [TinhTrang], [NguoiGiao], [NgayGiao]) VALUES (N'HDB00015', CAST(0x8A410B00 AS Date), N'KH00001', N'?ã giao hàng', N'AD01', CAST(0x8A410B00 AS Date))
INSERT [dbo].[HoaDonMua] ([MaHDMua], [NgayMua], [NguoiDat], [NguoiNhan], [TinhTrang], [NhaCungUng], [NgayNhan]) VALUES (N'HDM0001', CAST(0x7C410B00 AS Date), N'AD01', N'AD01', N'?ã xác nh?n', N'NCU01', CAST(0x7C410B00 AS Date))
INSERT [dbo].[HoaDonMua] ([MaHDMua], [NgayMua], [NguoiDat], [NguoiNhan], [TinhTrang], [NhaCungUng], [NgayNhan]) VALUES (N'HDM0002', CAST(0x7C410B00 AS Date), N'AD01', N'AD01', N'?ã xác nh?n', N'NCU01', CAST(0x7C410B00 AS Date))
INSERT [dbo].[HoaDonMua] ([MaHDMua], [NgayMua], [NguoiDat], [NguoiNhan], [TinhTrang], [NhaCungUng], [NgayNhan]) VALUES (N'HDM0003', CAST(0x3F410B00 AS Date), N'AD01', N'AD01', N'?ã xác nh?n', N'NCU01', CAST(0x7C410B00 AS Date))
INSERT [dbo].[HoaDonMua] ([MaHDMua], [NgayMua], [NguoiDat], [NguoiNhan], [TinhTrang], [NhaCungUng], [NgayNhan]) VALUES (N'HDM0004', CAST(0x7C410B00 AS Date), N'AD01', N'AD01', N'?ã xác nh?n', N'NCU01', CAST(0x7C410B00 AS Date))
INSERT [dbo].[HoaDonMua] ([MaHDMua], [NgayMua], [NguoiDat], [NguoiNhan], [TinhTrang], [NhaCungUng], [NgayNhan]) VALUES (N'HDM0005', CAST(0x7C410B00 AS Date), N'AD01', N'AD01', N'?ã xác nh?n', N'NCU01', CAST(0x7C410B00 AS Date))
INSERT [dbo].[HoaDonMua] ([MaHDMua], [NgayMua], [NguoiDat], [NguoiNhan], [TinhTrang], [NhaCungUng], [NgayNhan]) VALUES (N'HDM0006', CAST(0x7D410B00 AS Date), N'AD02', N'AD03', N'Ch?a xác nh?n', N'NCU01', NULL)
INSERT [dbo].[HoaDonMua] ([MaHDMua], [NgayMua], [NguoiDat], [NguoiNhan], [TinhTrang], [NhaCungUng], [NgayNhan]) VALUES (N'HDM0007', CAST(0x7D410B00 AS Date), N'AD01', N'AD01', N'?ã xác nh?n', N'NCU02', CAST(0x7D410B00 AS Date))
INSERT [dbo].[HoaDonMua] ([MaHDMua], [NgayMua], [NguoiDat], [NguoiNhan], [TinhTrang], [NhaCungUng], [NgayNhan]) VALUES (N'HDM0008', CAST(0x8A410B00 AS Date), N'AD01', N'AD01', N'?ã xác nh?n', N'NCU02', CAST(0x8A410B00 AS Date))
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00001', N'Nguyễn V?n A', CAST(0x0000806800000000 AS DateTime), N'Nam', N'123456789', N's? 3 Lê Du?n', N'0998874563', N'nguyenvana@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00002', N'Nguy?n V?n B', CAST(0x0000806900000000 AS DateTime), N'Nam', N'123456788', N's? 3 Lê Du?n', N'0998874563', N'nguyenvanb@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00003', N'Nguy?n Ti?n D?ng', CAST(0x0000808700000000 AS DateTime), N'Nam', N'123456787', N's? 3 Lê Du?n', N'0998874563', N'nguyentiendung@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00004', N'Di?p Thanh Tâm', CAST(0x000080A300000000 AS DateTime), N'N?', N'123456786', N's? 3 Lê Du?n', N'0998874563', N'diepthanhtam@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00005', N'L??ng V?n Thái', CAST(0x000080E000000000 AS DateTime), N'Nam', N'123456785', N's? 3 Lê Du?n', N'0998874563', N'luongvanthai@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00006', N'Hu?nh Mai', CAST(0x0000806B00000000 AS DateTime), N'N?', N'123456784', N's? 3 Lê Du?n', N'0998874563', N'huynhmai@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00007', N'Nguy?n Quang Ti?n', CAST(0x0000806C00000000 AS DateTime), N'Nam', N'123456783', N's? 3 Lê Du?n', N'0998874563', N'nguyenquangtien@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00008', N'Hoàng Giang', CAST(0x0000816000000000 AS DateTime), N'Nam', N'123456782', N's? 3 Lê Du?n', N'0998874563', N'hoanggiang@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00009', N'?inh Thanh Huy', CAST(0x000080C400000000 AS DateTime), N'Nam', N'123456781', N's? 3 Lê Du?n', N'0998874563', N'dinhthanhhuy@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00010', N'Ph?m Thanh Tùng', CAST(0x0000808A00000000 AS DateTime), N'Nam', N'123456770', N's? 3 Lê Du?n', N'0998874563', N'phamthanhtung@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00011', N'L??ng X??ng Nguyên', CAST(0x0000811F00000000 AS DateTime), N'N?', N'123456771', N's? 3 Lê Du?n', N'0998874563', N'luongxuongnguyen@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00012', N'Bùi Ti?n D?ng', CAST(0x0000812400000000 AS DateTime), N'Nam', N'123456772', N's? 3 Lê Du?n', N'0998874563', N'buitiendung@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00013', N'Nguy?n Qu?c C??ng', CAST(0x0000812500000000 AS DateTime), N'Nam', N'123456773', N's? 3 Lê Du?n', N'0998874563', N'nguyenquoccuong@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00014', N'Nguy?n Qu?c Tuâ?n', CAST(0x0000812500000000 AS DateTime), N'Nam', N'123456773', N's? 3 Lê Du?n', N'0998874563', N'nguyenquoctuan@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00015', N'Trọng Nhân', CAST(0x0000810200000000 AS DateTime), N'Nam', N'464833211', N'so 1 le duan', N'0999333221', N'sdsad@ddd.ccc')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00017', N'dsadsa', CAST(0x0000810200000000 AS DateTime), N'Nam', N'464833211', N'so 1 le duan', N'0999333221', N'sdsad@ddd.ccc')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00018', N'Duy anh', CAST(0x0000810200000000 AS DateTime), N'Nam', N'464833211', N'so 1 le duan', NULL, N'sdsad@ddd.ccc')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [DT], [Email]) VALUES (N'KH00019', N'Thế Sự', CAST(0x0000810200000000 AS DateTime), N'Nam', N'464833211', N'so 1 le duan', NULL, N'sdsad@ddd.ccc')
INSERT [dbo].[KhuyenMai] ([MaKM], [NgayBD], [NgayKT], [NoiDung], [KhuyenMai]) VALUES (N'KM01', NULL, NULL, NULL, NULL)
INSERT [dbo].[Manager] ([MaM], [TenM], [MASTER], [MI_VIEW], [MI_CHANGE], [ME_DIRECTOR], [ME_VIEW], [ME_CHANGE], [ME_ADD], [ME_DELETE], [MP_DIRECTOR], [MP_VIEW], [MP_CHANGE], [MP_ADD], [MP_DELETE], [MM_VIEW], [MM_CHANGE], [MM_ADD], [MN_DELETE], [MC_DIRECTOR], [MC_VIEW], [MC_CHANGE], [MC_ADD], [MC_DELETE], [MS_DIRECTOR], [MS_VIEW], [MS_CHANGE], [MS_ADD], [MS_DELETE], [MB_DIRECTOR], [MB_VIEW], [MB_CHANGE], [MB_ADD], [MB_DELETE], [ST_VIEW], [ST_PRINT]) VALUES (N'M05', N'Boss', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[Manager] ([MaM], [TenM], [MASTER], [MI_VIEW], [MI_CHANGE], [ME_DIRECTOR], [ME_VIEW], [ME_CHANGE], [ME_ADD], [ME_DELETE], [MP_DIRECTOR], [MP_VIEW], [MP_CHANGE], [MP_ADD], [MP_DELETE], [MM_VIEW], [MM_CHANGE], [MM_ADD], [MN_DELETE], [MC_DIRECTOR], [MC_VIEW], [MC_CHANGE], [MC_ADD], [MC_DELETE], [MS_DIRECTOR], [MS_VIEW], [MS_CHANGE], [MS_ADD], [MS_DELETE], [MB_DIRECTOR], [MB_VIEW], [MB_CHANGE], [MB_ADD], [MB_DELETE], [ST_VIEW], [ST_PRINT]) VALUES (N'M06', N'Qua?n Ly?', 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Manager] ([MaM], [TenM], [MASTER], [MI_VIEW], [MI_CHANGE], [ME_DIRECTOR], [ME_VIEW], [ME_CHANGE], [ME_ADD], [ME_DELETE], [MP_DIRECTOR], [MP_VIEW], [MP_CHANGE], [MP_ADD], [MP_DELETE], [MM_VIEW], [MM_CHANGE], [MM_ADD], [MN_DELETE], [MC_DIRECTOR], [MC_VIEW], [MC_CHANGE], [MC_ADD], [MC_DELETE], [MS_DIRECTOR], [MS_VIEW], [MS_CHANGE], [MS_ADD], [MS_DELETE], [MB_DIRECTOR], [MB_VIEW], [MB_CHANGE], [MB_ADD], [MB_DELETE], [ST_VIEW], [ST_PRINT]) VALUES (N'M07', N'Nhân Viên', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[NhaCungUng] ([MaCU], [TenNCU], [DiaChi], [DT]) VALUES (N'NCU00', N'Thêm nhà cung ?ng m?i', N'', N'          ')
INSERT [dbo].[NhaCungUng] ([MaCU], [TenNCU], [DiaChi], [DT]) VALUES (N'NCU01', N'FPT', N'1 Lê Lai', N'0123456789')
INSERT [dbo].[NhaCungUng] ([MaCU], [TenNCU], [DiaChi], [DT]) VALUES (N'NCU02', N'Phong Vu', N'aaaa', N'1234567890')
INSERT [dbo].[NhaSanXuat] ([MaSX], [TenSX], [DiaChi], [DT], [Email]) VALUES (N'SX00', N'Ch?n Hãng', NULL, NULL, NULL)
INSERT [dbo].[NhaSanXuat] ([MaSX], [TenSX], [DiaChi], [DT], [Email]) VALUES (N'SX01', N'Nokia', N'', 0, N'')
INSERT [dbo].[NhaSanXuat] ([MaSX], [TenSX], [DiaChi], [DT], [Email]) VALUES (N'SX02', N'HTC', N'', 0, N'')
INSERT [dbo].[NhaSanXuat] ([MaSX], [TenSX], [DiaChi], [DT], [Email]) VALUES (N'SX03', N'Samsung', N'', 0, N'')
INSERT [dbo].[NhaSanXuat] ([MaSX], [TenSX], [DiaChi], [DT], [Email]) VALUES (N'SX04', N'Apple', N'', 0, N'')
INSERT [dbo].[NhaSanXuat] ([MaSX], [TenSX], [DiaChi], [DT], [Email]) VALUES (N'SX05', N'LG', N'', 0, N'')
INSERT [dbo].[NhaSanXuat] ([MaSX], [TenSX], [DiaChi], [DT], [Email]) VALUES (N'SX06', N'Sony', N'', 0, N'')
INSERT [dbo].[PHIEUNHAPSANPHAM] ([MAPN], [NGAYNHAPSP], [GHICHU], [TRANGTHAI], [TONGTIEN]) VALUES (N'PN001', CAST(0x3C3E0B00 AS Date), N'mua hang1', N'Đã hoàn thành', CAST(25000000 AS Decimal(18, 0)))
INSERT [dbo].[PHIEUNHAPSANPHAM] ([MAPN], [NGAYNHAPSP], [GHICHU], [TRANGTHAI], [TONGTIEN]) VALUES (N'PN00112', CAST(0x3B3B0B00 AS Date), N'hfhfj', N'khong', CAST(2250000 AS Decimal(18, 0)))
INSERT [dbo].[PHIEUNHAPSANPHAM] ([MAPN], [NGAYNHAPSP], [GHICHU], [TRANGTHAI], [TONGTIEN]) VALUES (N'PN002', CAST(0x1D3B0B00 AS Date), NULL, N'Đã hoàn thành', CAST(19500000 AS Decimal(18, 0)))
INSERT [dbo].[PHIEUNHAPSANPHAM] ([MAPN], [NGAYNHAPSP], [GHICHU], [TRANGTHAI], [TONGTIEN]) VALUES (N'PN0021', CAST(0xA13F0B00 AS Date), N'', N'Ðã hoàn thành', CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[PHIEUNHAPSANPHAM] ([MAPN], [NGAYNHAPSP], [GHICHU], [TRANGTHAI], [TONGTIEN]) VALUES (N'PN003', CAST(0xA93A0B00 AS Date), NULL, N'Đã hoàn thành', CAST(16100000 AS Decimal(18, 0)))
INSERT [dbo].[PHIEUNHAPSANPHAM] ([MAPN], [NGAYNHAPSP], [GHICHU], [TRANGTHAI], [TONGTIEN]) VALUES (N'PN0031', CAST(0x763B0B00 AS Date), N'', N'Chua hoàn thành', CAST(15000000 AS Decimal(18, 0)))
INSERT [dbo].[PHIEUNHAPSANPHAM] ([MAPN], [NGAYNHAPSP], [GHICHU], [TRANGTHAI], [TONGTIEN]) VALUES (N'PN0033', CAST(0x3B3B0B00 AS Date), N'khong', N'Chua hoàn thành', NULL)
INSERT [dbo].[PHIEUNHAPSANPHAM] ([MAPN], [NGAYNHAPSP], [GHICHU], [TRANGTHAI], [TONGTIEN]) VALUES (N'PN004', CAST(0xDC3F0B00 AS Date), N'', N'Đã hoàn thành', CAST(49400000 AS Decimal(18, 0)))
INSERT [dbo].[PHIEUNHAPSANPHAM] ([MAPN], [NGAYNHAPSP], [GHICHU], [TRANGTHAI], [TONGTIEN]) VALUES (N'PN007', CAST(0x0A3E0B00 AS Date), N'', N'Chưa hoàn thành', CAST(48250000 AS Decimal(18, 0)))
INSERT [dbo].[PHIEUNHAPSANPHAM] ([MAPN], [NGAYNHAPSP], [GHICHU], [TRANGTHAI], [TONGTIEN]) VALUES (N'PN008', CAST(0x723D0B00 AS Date), N'', N'Chưa hoàn thành', CAST(39500000 AS Decimal(18, 0)))
INSERT [dbo].[PHIEUNHAPSANPHAM] ([MAPN], [NGAYNHAPSP], [GHICHU], [TRANGTHAI], [TONGTIEN]) VALUES (N'PN009', CAST(0x3B3B0B00 AS Date), N'', N'Chưa hoàn thành', CAST(17400000 AS Decimal(18, 0)))
INSERT [dbo].[PHIEUNHAPSANPHAM] ([MAPN], [NGAYNHAPSP], [GHICHU], [TRANGTHAI], [TONGTIEN]) VALUES (N'PN0091', CAST(0x763B0B00 AS Date), N'', N'Chua hoàn thành', CAST(40000000 AS Decimal(18, 0)))
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0001', N'SX02', N'HTC Desire S', 0, 9999000, CAST(0x4F410B00 AS Date), 0, N'Data Image/Dese1rt.jpg', N'Ph? thông', NULL, N'5.0 MP (2592 x 1944 pixels)', N'VGA (0.3 Mpx)', N'HD 720p@30fps', N'DivX, H.263, H.264(MPEG4-AVC), MP4, WMV', N'AAC+, MP3, WAV, WMA', N'FM radio v?i RDS', N'Có', N'-', N'-', N'-', N'1.1 GB', N'768 MB', N'Qualcomm MSM8255 Snapdragon 1 GHz processor', N'MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'HSDPA 900/2100', N'-', N'Up to 114 kbps', N'Wi-Fi 802.11 b/g/n, DLNA, Wi-Fi hotspot', N'Có', N'Micro USB', N'A-GPS', N'Android OS, v2.3 (Gingerbread)', N'C?m ?ng', N'-', N'115 x 59.8 x 11.6 mm', N'130', N'-', N'-', N' - H? ?i?u hành Android OS, v2.3 (Gingerbread)<br /> - CPU Qualcomm MSM8255 Snapdragon 1 GHz processor<br /> - RAM 768 MB<br /> - B? nh? trong 1.1 GB<br /> - Th? nh? ngoài MicroSD (T-Flash)<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0002', N'SX02', N'HTC Sensation 123', 0, 9899000, CAST(0x6E410B00 AS Date), 0, N'Data Image/desireS_b.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'VGA (0.3 Mpx)', N'HD 720p@30fps', N'DivX, H.263, H.264(MPEG4-AVC), MP4, WMV', N'AAC+, MP3, WAV, WMA', N'FM radio v?i RDS', N'Có', N'-', N'-', N'Xem file v?n b?n', N'1 GB', N'768 MB', N'CPU 1.2 GHz dual-core', N'MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'HSDPA 900/2100', N'-', N'Up to 114 kbps', N'Wi-Fi 802.11 b/g/n, DLNA, Wi-Fi hotspot', N'Có', N'Micro USB', N'A-GPS', N' H? ?i?u hành Android 2.3', N'C?m ?ng', N'-', N'115 x 59.8 x 11.6 mm', N'130', N'-', N'-', N' - H? ?i?u hành Android OS, v2.3 (Gingerbread)<br /> - CPU Qualcomm MSM8255 Snapdragon 1 GHz processor<br /> - RAM 768 MB<br /> - B? nh? trong 1.1 GB<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? ?i?u hành  H? ?i?u hành Android 2.3<br /> - CPU CPU 1.2 GHz dual-core<br /> - RAM 768 MB<br /> - B? nh? trong 1 GB<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - H? tr? t?i ?a th? 32 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0003', N'SX02', N'HTC One V', 0, 7498000, CAST(0x7C410B00 AS Date), 0, N'Data Image/dien-thoai-di-dong-htc-one-v-dienmay.com-l.jpg', N'Smart phone', NULL, N'5.0 MP (2592 x 1944 pixels)', N'-', N'HD 720p@24fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'-', N'-', N'Xem file v?n b?n, M?ng xã h?i', N'4 GB', N'512 MB', N'Qualcomm MSM8255 Snapdragon 1 GHz processor', N'Th? nh? ngoài MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 2100', N'-', N'Có', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot', N'Có', N'Micro USB', N'A-GPS', N'Android 4.0', N'Thanh (th?ng) + C?m ?ng', N'Phím ?o', N'120.3 x 59.7 x 9.2 mm', N'115', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Android 4.0<br /> - CPU Qualcomm MSM8255 Snapdragon 1 GHz processor<br /> - RAM 512 MB<br /> - Th? nh? ngoài Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 32 GB<br /> - Quay phim HD 720p@24fps<br /> - B? nh? trong 4 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0004', N'SX02', N'HTC One V', 0, 7498000, CAST(0x7C410B00 AS Date), 0, N'Data Image/dien-thoai-di-dong-htc-one-v-dienmay.com-l.jpg', N'Smart phone', NULL, N'5.0 MP (2592 x 1944 pixels)', N'-', N'HD 720p@24fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'-', N'-', N'Xem file v?n b?n, M?ng xã h?i', N'4 GB', N'512 MB', N'Qualcomm MSM8255 Snapdragon 1 GHz processor', N'Th? nh? ngoài MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 2100', N'-', N'Có', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot', N'Có', N'Micro USB', N'A-GPS', N'Android 4.0', N'Thanh (th?ng) + C?m ?ng', N'Phím ?o', N'120.3 x 59.7 x 9.2 mm', N'115', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Android 4.0<br /> - CPU Qualcomm MSM8255 Snapdragon 1 GHz processor<br /> - RAM 512 MB<br /> - Th? nh? ngoài Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 32 GB<br /> - Quay phim HD 720p@24fps<br /> - B? nh? trong 4 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0005', N'SX02', N'HTC Desire V', 0, 8599000, CAST(0x7C410B00 AS Date), 0, N'Data Image/HTC-Desire-V-l.jpg', N'Smart phone', NULL, N'5.0 MP (2592 x 1944 pixels)', N'-', N'HD 720p@24fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'-', N'-', N'Xem file v?n b?n, M?ng xã h?i', N'4 GB', N'512 MB', N'Qualcomm MSM7227A 1 GHz Processor', N'Th? nh? ngoài MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 2100', N'-', N'Có', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot', N'Có', N'Micro USB', N'A-GPS', N'Android 4.0', N'Thanh (th?ng) + C?m ?ng', N'Phím ?o', N'120.3 x 59.7 x 9.2 mm', N'115', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Android 4.0<br /> - CPU Qualcomm MSM7227A 1 GHz Processor<br /> - RAM 512 MB<br /> - Th? nh? ngoài Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 32 GB<br /> - Quay phim HD 720p@24fps<br /> - B? nh? trong 4 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0006', N'SX02', N'HTC Wildfire S', 0, 4998000, CAST(0x7C410B00 AS Date), 0, N'Data Image/HTC-Desire-V-l.jpg', N'Smart phone', NULL, N'5.0 MP (2592 x 1944 pixels)', N'-', N'HD 720p@24fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'-', N'-', N'Xem file v?n b?n, M?ng xã h?i', N'512 MB', N'512 MB', N'CPU Qualcomm MSM 7227 600 MHz', N'Th? nh? ngoài MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 2100', N'-', N'Có', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot', N'Có', N'Micro USB', N'A-GPS', N'Android 2.3', N'Thanh (th?ng) + C?m ?ng', N'Phím ?o', N'120.3 x 59.7 x 9.2 mm', N'115', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Android 2.3<br /> - CPU CPU Qualcomm MSM 7227 600 MHz<br /> - RAM 512 MB<br /> - Th? nh? ngoài Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 32 GB<br /> - Quay phim HD 720p@24fps<br /> - B? nh? trong 512 MB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0007', N'SX02', N'HTC Rhyme', 0, 10989000, CAST(0x7C410B00 AS Date), 0, N'Data Image/dien-thoai-di-dong-HTC-Rhymedock-dienmay.com-l.jpg', N'Smart phone', NULL, N'5.0 MP (2592 x 1944 pixels)', N'-', N'HD 720p@24fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'-', N'-', N'Xem file v?n b?n, M?ng xã h?i', N'768 MB', N'512 MB', N'Qualcomm MSM8255 Snapdragon, 1 GHz Scorpion', N'Th? nh? ngoài MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 2100', N'-', N'Có', N'Wi-Fi 802.11 b/g/n, Wi-Fi hotspot', N'Có', N'Micro USB', N'A-GPS', N'Android 2.3.4 (Gingerbread)', N'Thanh (th?ng) + C?m ?ng', N'Phím ?o', N'120.3 x 59.7 x 9.2 mm', N'115', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Android 2.3.4 (Gingerbread)<br /> - CPU Qualcomm MSM8255 Snapdragon, 1 GHz Scorpion<br /> - RAM 512 MB<br /> - Th? nh? ngoài Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 32 GB<br /> - Quay phim HD 720p@24fps<br /> - B? nh? trong 768 MB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0008', N'SX02', N'HTC HD7', 0, 9889000, CAST(0x7C410B00 AS Date), 0, N'Data Image/htc-hd7_b.jpg', N'Smart phone', NULL, N'5.0 MP (2592 x 1944 pixels)', N'-', N'HD 720p@24fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'-', N'-', N'Xem file v?n b?n, M?ng xã h?i', N'8 GB', N'576 MB', N'CPU Qualcomm Snapdragon QSD8250 1 GHz', N'Th? nh? ngoài MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 2100', N'-', N'Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps', N'Wi-Fi 802.11 b/g/n', N'Có', N'Micro USB', N'A-GPS', N'Microsoft Windows Phone 7', N'Thanh (th?ng) + C?m ?ng', N'Phím ?o', N'120.3 x 59.7 x 9.2 mm', N'115', N'Ti?ng Anh', N'-', N' - H? ?i?u hành Microsoft Windows Phone 7<br /> - CPU CPU Qualcomm Snapdragon QSD8250 1 GHz<br /> - RAM 576 MB<br /> - Th? nh? ngoài Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 32 GB<br /> - Quay phim HD 720p@24fps<br /> - B? nh? trong 8 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0010', N'SX01', N'Lumia 900', 0, 12249000, CAST(0x7C410B00 AS Date), 0, N'Data Image/dien-thoai-di-dong-nokia-lumina808pureview-dienmay.com-l.jpg', N'Smart phone', NULL, N'41 MP (7152 x 5368 pixels)', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có', N'-', N'Xem file v?n b?n,  So?n th?o v?n b?n', N'16 GB', N'512 MB', N'ARM 11 1.3 GHz Processor', N'Có', N'32 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 2100', N'-', N'Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps', N'Wi-Fi 802.11 b/g/n', N'Ch? k?t n?i v?i tai nghe bluetooth', N'Micro USB', N'A-GPS', N'Symbian Belle OS', N'Thanh (th?ng) + C?m ?ng', N'Phím ?o', N'127.8 x 68.5 x 11.5 mm', N'115', N'Ti?ng Anh', N'-', N' - H? ?i?u hành Symbian Belle OS<br /> - CPU ARM 11 1.3 GHz Processor<br /> - RAM 512 MB<br /> - Th? nh? ngoài Có<br /> - H? tr? t?i ?a th? 32 GB<br /> - Quay phim FullHD 1080p@30fps<br /> - B? nh? trong 16 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0011', N'SX01', N'Nokia Lumia 800', 0, 10599000, CAST(0x7C410B00 AS Date), 0, N'Data Image/dien-thoai-di-dong-Nokia-lumia-800-dienmay.com-b.jpg', N'Smart phone', NULL, N'41 MP (7152 x 5368 pixels)', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có', N'-', N'Xem file v?n b?n,  So?n th?o v?n b?n', N'16 GB', N'512 MB', N'1.4 GHz processor', N'-', N'-', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 2100', N'-', N'Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps', N'Wi-Fi 802.11 b/g/n', N'Ch? k?t n?i v?i tai nghe bluetooth', N'Micro USB', N'A-GPS', N'Microsoft Windows Phone 7.5 Mango', N'Thanh (th?ng) + C?m ?ng', N'Phím ?o', N'127.8 x 68.5 x 11.5 mm', N'115', N'Ti?ng Anh', N'-', N' - H? ?i?u hành Microsoft Windows Phone 7.5 Mango<br /> - CPU 1.4 GHz processor<br /> - RAM 512 MB<br /> - Th? nh? ngoài <br /> - H? tr? t?i ?a th? <br /> - Quay phim FullHD 1080p@30fps<br /> - B? nh? trong 16 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0012', N'SX01', N'Nokia N9 16GB', 0, 8999000, CAST(0x5D410B00 AS Date), 0, N'Data Image/dien-thoai-di-dong-nokia-N9-00-dienmay.com-den-b.jpg', N'Smart phone', NULL, N'8.0 MP v?i ?ng kính Carl Zeiss ', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'-', N'Có', N'Có', N'-', N'Xem file v?n b?n,  So?n th?o v?n b?n', N'16 GB', N'1GB', N'ARM Cortex A8 1GHz processor', N'-', N'-', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 2100', N'-', N'Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP, EDR', N'Micro USB', N'A-GPS', N'MeeGo 1.2 Harmattan ', N'Thanh (th?ng) + C?m ?ng', N'Phím ?o', N'127.8 x 68.5 x 11.5 mm', N'115', N'Ti?ng Anh', N'-', N' - H? ?i?u hành MeeGo 1.2 Harmattan <br /> - CPU ARM Cortex A8 1GHz processor<br /> - RAM 1GB<br /> - Th? nh? ngoài <br /> - H? tr? t?i ?a th? <br /> - Quay phim FullHD 1080p@30fps<br /> - B? nh? trong 16 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0013', N'SX01', N'Nokia Asha 306', 0, 1999000, CAST(0x7C410B00 AS Date), 0, N'Data Image/Nokia-Asha-306-l.jpg', N'Ph? thông', NULL, N'2.0 MP (1600x1200 pixels)', N'-', N'Có', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có', N'Có', N'-', N'64 MB', N'32 MB', N'-', N'MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'-', N'-', N'Có', N'Hô? tr?? Wifi tô?c ?ô? cao Wi-Fi 802.11 b/g', N'Có, V2.1 v?i A2DP, EDR', N'Micro USB', N'-', N'-', N'Thanh (th?ng) + C?m ?ng', N'Phím ?o', N'127.8 x 68.5 x 11.5 mm', N'115', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - WiFi Hô? tr?? Wifi tô?c ?ô? cao Wi-Fi 802.11 b/g<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 32 GB<br /> - Máy ?nh 2.0 MP (1600x1200 pixels)<br /> - Nghe nh?c MP3, WAV, WMA, eAAC+<br /> - FM radio FM radio v?i RDS<br /> - B? nh? trong 64 MB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0014', N'SX01', N'Nokia C2-03', 0, 1799000, CAST(0x5D410B00 AS Date), 0, N'Data Image/dien-thoai-di-dong-nokia-c2-03-dienmay.com-b.jpg', N'Ph? thông', NULL, N'2.0 MP (1600x1200 pixels)', N'-', N'Có', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy, có th? cài thêm', N'MIDP 2.1', N'D? dàng thay ??i Sim v?i khe c?m bên ngoài', N'10 MB', N'32 MB', N'-', N'MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'-', N'2 Sim 2 Sóng online ', N'Có', N'Hô? tr?? Wifi tô?c ?ô? cao Wi-Fi 802.11 b/g', N'Có, V2.1 v?i A2DP, EDR', N'Micro USB', N'-', N'-', N'Tr??t', N'Phím s?', N'127.8 x 68.5 x 11.5 mm', N'115', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - WiFi Hô? tr?? Wifi tô?c ?ô? cao Wi-Fi 802.11 b/g<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 32 GB<br /> - Máy ?nh 2.0 MP (1600x1200 pixels)<br /> - Nghe nh?c MP3, WAV, WMA, eAAC+<br /> - FM radio FM radio v?i RDS<br /> - B? nh? trong 10 MB<br /> - ?a sim 2 Sim 2 Sóng online <br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0016', N'SX01', N'Asha 305', 0, 1899000, CAST(0x7C410B00 AS Date), 0, N'Data Image/Nokia-Asha-305-l.jpg', N'Ph? thông', NULL, N'2.0 MP (1600x1200 pixels)', N'-', N'Có', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy, có th? cài thêm', N'MIDP 2.1', N'D? dàng thay ??i Sim v?i khe c?m bên ngoài', N'10 MB', N'32 MB', N'-', N'MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'-', N'2 Sim 2 Sóng online ', N'Có', N'Hô? tr?? Wifi tô?c ?ô? cao Wi-Fi 802.11 b/g', N'Có, V2.1 v?i A2DP, EDR', N'Micro USB', N'-', N'-', N'Tr??t', N'Phím s?', N'127.8 x 68.5 x 11.5 mm', N'115', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - WiFi Hô? tr?? Wifi tô?c ?ô? cao Wi-Fi 802.11 b/g<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 32 GB<br /> - Máy ?nh 2.0 MP (1600x1200 pixels)<br /> - Nghe nh?c MP3, WAV, WMA, eAAC+<br /> - FM radio FM radio v?i RDS<br /> - B? nh? trong 10 MB<br /> - ?a sim 2 Sim 2 Sóng online <br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0017', N'SX01', N'Nokia C2-01', 0, 1789000, CAST(0x7C410B00 AS Date), 0, N'Data Image/nokia_C2-01_b.jpg', N'Ph? thông', NULL, N'3.2 MP (2048 x 1536 pixels)', N'-', N'QVGA@15fp', N'3GP, MP4', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy, có th? cài thêm', N'MIDP 2.1', N'Flash Lite v3.0', N'43 MB', N'-', N'-', N'MicroSD (T-Flash)', N'16 GB', N'GSM 850/900/1800/1900', N'UMTS 384 Kbps', N'-', N'Có', N'-', N'Có, V2.1 v?i A2DP, EDR', N'Micro USB', N'-', N'-', N'Thanh (th?ng)', N'Phím s?', N'127.8 x 68.5 x 11.5 mm', N'115', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - Máy ?nh 3.2 MP (2048 x 1536 pixels)<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 16 GB<br /> - B?ng t?n 3G UMTS 384 Kbps<br /> - B? nh? trong 43 MB<br /> - Quay phim QVGA@15fp<br /> - Nghe nh?c MP3, WAV, WMA, eAAC+<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0018', N'SX03', N'Samsung C3312', 1500000, 1749000, CAST(0x7C410B00 AS Date), 20, N'Data Image/dien-thoai-did-dong-samsung-c3312-dienmay.com-l.jpg', N'Ph? thông', NULL, N'Máy ?nh 1.3 MP (1280 x 1024 pixels) ', N'-', N'-', N'MP4', N'MP3', N'?ài FM tích h?p s?n ', N'-', N'-', N'-', N'Xem file v?n b?n ', N'10 MB', N'-', N'-', N'MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'-', N'2 Sim 2 sóng', N'Có', N'-', N'Có, V3.0 v?i A2DP', N' 	Micro USB', N'-', N'-', N'D?ng thanh c?m ?ng th?i trang ', N'-', N'102 x 55 x 12 mm', N'100', N'Ti?ng Vi?t, Ti?ng Anh', N'-', N' - Ki?u dáng D?ng thanh c?m ?ng th?i trang <br /> - ?a sim 2 Sim 2 sóng<br /> - Máy ?nh Máy ?nh 1.3 MP (1280 x 1024 pixels) <br /> - FM radio ?ài FM tích h?p s?n <br /> - Nghe nh?c MP3<br /> - Xem phim MP4<br /> - GPRS Có<br /> - ?ng d?ng khác Xem file v?n b?n <br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0019', N'SX01', N'Nokia Asha 202', 0, 1899000, CAST(0x7C410B00 AS Date), 0, N'Data Image/dien-thoai-di-dong-Nokia-asha202-dienmay.com-l.jpg', N'Ph? thông', NULL, N'Máy ?nh 1.3 MP (1280 x 1024 pixels) ', N'-', N'-', N'MP4', N'MP3', N'?ài FM tích h?p s?n ', N'-', N'-', N'-', N'Xem file v?n b?n ', N'10 MB', N'-', N'-', N'MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'-', N'2 Sim 2 sóng', N'Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps', N'-', N'Có, V3.0 v?i A2DP', N' 	Micro USB', N'-', N'-', N'D?ng thanh k?t h?p v?i màn hình c?m ?ng', N'-', N'102 x 55 x 12 mm', N'100', N'Ti?ng Vi?t, Ti?ng Anh', N'-', N' - Ki?u dáng D?ng thanh k?t h?p v?i màn hình c?m ?ng<br /> - ?a sim 2 Sim 2 sóng<br /> - Máy ?nh Máy ?nh 1.3 MP (1280 x 1024 pixels) <br /> - FM radio ?ài FM tích h?p s?n <br /> - Nghe nh?c MP3<br /> - Xem phim MP4<br /> - GPRS Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps<br /> - ?ng d?ng khác Xem file v?n b?n <br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 32 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0020', N'SX05', N'LG T500', 1300000, 1689000, CAST(0x7C410B00 AS Date), 15, N'Data Image/dien-thoai-di-dong-LG-Ego-T500-dienmay.com-den-b.jpg', N'Ph? thông', NULL, N'2.0 MP (1600x1200 pixels)', N'-', N'-', N'MP4', N'MP3', N'?ài FM tích h?p s?n ', N'-', N'-', N'-', N'H? tr? m?ng xã h?i', N'50 MB', N'-', N'-', N'MicroSD (T-Flash)', N'4 GB', N'GSM 850/900/1800/1900', N'-', N'2 Sim 2 sóng', N'Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps', N'-', N'Có, V3.0 v?i A2DP', N' 	Micro USB', N'-', N'-', N'Thanh (th?ng) + C?m ?ng', N'-', N'102 x 55 x 12 mm', N'100', N'Ti?ng Vi?t, Ti?ng Anh', N'-', N' - Ki?u dáng Thanh (th?ng) + C?m ?ng<br /> - ?a sim 2 Sim 2 sóng<br /> - Máy ?nh 2.0 MP (1600x1200 pixels)<br /> - FM radio ?ài FM tích h?p s?n <br /> - Nghe nh?c MP3<br /> - Xem phim MP4<br /> - GPRS Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps<br /> - ?ng d?ng khác H? tr? m?ng xã h?i<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 4 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0022', N'SX05', N'LG S365', 1300000, 1679000, CAST(0x7C410B00 AS Date), 15, N'Data Image/dien-thoai-di-dong-LG-S365-dienmay.com-b.jpg', N'Ph? thông', NULL, N'2.0 MP (1600x1200 pixels)', N'-', N'-', N'MP4', N'MP3', N'?ài FM tích h?p s?n ', N'-', N'Có', N'Có', N'H? tr? m?ng xã h?i', N'10 MB', N'-', N'-', N'MicroSD (T-Flash)', N'4 GB', N'GSM 850/900/1800/1900', N'-', N'2 Sim 2 sóng', N'Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps', N'-', N'Có, V3.0 v?i A2DP', N' 	Micro USB', N'-', N'-', N'Thanh (th?ng) + C?m ?ng', N'-', N'102 x 55 x 12 mm', N'100', N'Ti?ng Vi?t, Ti?ng Anh', N'-', N' - Ki?u dáng Thanh (th?ng) + C?m ?ng<br /> - ?a sim 2 Sim 2 sóng<br /> - Máy ?nh 2.0 MP (1600x1200 pixels)<br /> - FM radio ?ài FM tích h?p s?n <br /> - Nghe nh?c MP3<br /> - Xem phim MP4<br /> - GPRS Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps<br /> - ?ng d?ng khác H? tr? m?ng xã h?i<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 4 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0023', N'SX01', N'Nokia X2-01', 0, 1669000, CAST(0x7C410B00 AS Date), 0, N'Data Image/Nokia_X2-01_b.jpg', N'Ph? thông', NULL, N'VGA (480 x 640 pixcels)', N'-', N'-', N'MP4', N'MP3', N'?ài FM tích h?p s?n ', N'-', N'Adobe Flash 3.0', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'50 MB', N'-', N'-', N'MicroSD (T-Flash)', N'8 GB', N'GSM 850/900/1800/1900', N'-', N'2 Sim 2 sóng', N'Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps', N'-', N'Có, V3.0 v?i A2DP', N'Micro USB', N'-', N'-', N'Thi?t k? m?nh m? v?i bàn phím Qwerty', N'Bàn phím Qwerty', N'102 x 55 x 12 mm', N'100', N'Ti?ng Vi?t, Ti?ng Anh', N'-', N' - Ki?u dáng Thi?t k? m?nh m? v?i bàn phím Qwerty<br /> - ?a sim 2 Sim 2 sóng<br /> - Máy ?nh VGA (480 x 640 pixcels)<br /> - FM radio ?ài FM tích h?p s?n <br /> - Nghe nh?c MP3<br /> - Xem phim MP4<br /> - GPRS Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps<br /> - ?ng d?ng khác H? tr? m?ng xã h?i<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 8 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0024', N'SX01', N'Nokia X2-02', 0, 1649000, CAST(0x7C410B00 AS Date), 0, N'Data Image/Nokia-X2-02-l.jpg', N'Ph? thông', NULL, N'2.0 MP (1600x1200 pixels)', N'-', N'-', N'MP4', N'MP3', N'?ài FM tích h?p s?n ', N'-', N'Adobe Flash 3.0', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'10 MB', N'-', N'-', N'MicroSD (T-Flash)', N'32 GB', N'GSM 850/900/1800/1900', N'-', N'2 Sim 2 sóng', N'Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps', N'-', N'Có, V3.0 v?i A2DP', N'Micro USB', N'-', N'-', N'Thanh (th?ng)', N'Bàn phím Qwerty', N'102 x 55 x 12 mm', N'100', N'Ti?ng Vi?t, Ti?ng Anh', N'-', N' - Ki?u dáng Thanh (th?ng)<br /> - ?a sim 2 Sim 2 sóng<br /> - Máy ?nh 2.0 MP (1600x1200 pixels)<br /> - FM radio ?ài FM tích h?p s?n <br /> - Nghe nh?c MP3<br /> - Xem phim MP4<br /> - GPRS Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps<br /> - ?ng d?ng khác H? tr? m?ng xã h?i<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 32 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0025', N'SX03', N'Samsung C3520', 1100000, 1486000, CAST(0x7C410B00 AS Date), 20, N'Data Image/Samsung-C3520-l.jpg', N'Ph? thông', NULL, N'1.3 MP (1280 x 1024 pixels)', N'-', N'-', N'MP4', N'MP3', N'?ài FM tích h?p s?n ', N'-', N'Adobe Flash 3.0', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'28 MB', N'-', N'-', N'MicroSD (T-Flash)', N'16 GB', N'GSM 850/900/1800/1900', N'-', N'-', N'Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps', N'-', N'Có, V3.0 v?i A2DP', N'Micro USB', N'-', N'-', N'G?p', N'Phím s?', N'102 x 55 x 12 mm', N'100', N'Ti?ng Vi?t, Ti?ng Anh', N'-', N' - Ki?u dáng G?p<br /> - ?a sim <br /> - Máy ?nh 1.3 MP (1280 x 1024 pixels)<br /> - FM radio ?ài FM tích h?p s?n <br /> - Nghe nh?c MP3<br /> - Xem phim MP4<br /> - GPRS Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps<br /> - ?ng d?ng khác H? tr? m?ng xã h?i<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 16 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0026', N'SX01', N'Nokia 112', 0, 1486000, CAST(0x7C410B00 AS Date), 0, N'Data Image/Nokia-112-l.jpg', N'Ph? thông', NULL, N'VGA (480 x 640 pixcels)', N'-', N'-', N'MP4', N'MP3', N'?ài FM tích h?p s?n ', N'Có', N'Adobe Flash 3.0', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'16 MB', N'-', N'-', N'MicroSD (T-Flash)', N'16 GB', N'GSM 850/900/1800/1900', N'-', N'2 Sim 2 sóng ', N'Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps', N'-', N'Có, V3.0 v?i A2DP', N'Micro USB', N'-', N'-', N'Thanh (th?ng)', N'Phím s?', N'102 x 55 x 12 mm', N'100', N'Ti?ng Vi?t, Ti?ng Anh', N'-', N' - Ki?u dáng Thanh (th?ng)<br /> - ?a sim 2 Sim 2 sóng <br /> - Máy ?nh VGA (480 x 640 pixcels)<br /> - FM radio ?ài FM tích h?p s?n <br /> - Nghe nh?c MP3<br /> - Xem phim MP4<br /> - GPRS Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps<br /> - ?ng d?ng khác H? tr? m?ng xã h?i<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 16 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0028', N'SX05', N'LG A290', 1000000, 1249000, CAST(0x5D410B00 AS Date), 22, N'Data Image/LG-A290-l.jpg', N'Ph? thông', NULL, N'1.3 MP (1280 x 1024 pixels)', N'-', N'-', N'MP4', N'MP3', N'?ài FM tích h?p s?n ', N'Có', N'Adobe Flash 3.0', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'19 MB', N'-', N'-', N'MicroSD (T-Flash)', N'4 GB', N'GSM 850/900/1800/1900', N'-', N'3 Sim 3 Sóng ', N'Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps', N'-', N'Có, V3.0 v?i A2DP', N'Micro USB', N'-', N'-', N'Thanh (th?ng)', N'Phím s?', N'102 x 55 x 12 mm', N'100', N'Ti?ng Vi?t, Ti?ng Anh', N'-', N' - Ki?u dáng Thanh (th?ng)<br /> - ?a sim 3 Sim 3 Sóng <br /> - Máy ?nh 1.3 MP (1280 x 1024 pixels)<br /> - FM radio ?ài FM tích h?p s?n <br /> - Nghe nh?c MP3<br /> - Xem phim MP4<br /> - GPRS Class 12 (4+1/3+2/2+3/1+4 slots), 32 - 48 kbps<br /> - ?ng d?ng khác H? tr? m?ng xã h?i<br /> - Th? nh? ngoài MicroSD (T-Flash)<br /> - H? tr? t?i ?a th? 4 GB<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0029', N'SX06', N'XPERIA Arc LT15i', 9000000, 9981000, CAST(0x7C410B00 AS Date), 10, N'Data Image/sony_arc_b.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'-', N'HD 720p@25fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy', N'MIDP 3.0', N'Xem file v?n b?n', N'320 MB', N'512 MB', N'CPU Qualcomm MSM8255 Snapdragon 1 GHz', N'MicroSD (T-Flash)', N'32 GB ', N'GSM 850/900/1800/1900', N'HSDPA 900/2100', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'Micro USB', N'A-GPS', N'Android 2.3', N'C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Android 2.3<br /> - CPU CPU Qualcomm MSM8255 Snapdragon 1 GHz<br /> - RAM 512 MB<br /> - B? nh? trong 320 MB<br /> - H? tr? t?i ?a th? 32 GB <br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - Quay phim HD 720p@25fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0030', N'SX06', N'Galaxy S Advance I9070', 9800000, 9597000, CAST(0x7C410B00 AS Date), 10, N'Data Image/dien-thoai-di-dong-samsung-I9070GalaxySAdvance-dienmay.com-l.jpg', N'Smart phone', NULL, N'5.0 MP (2592 x 1944 pixels)', N'-', N'HD 720p@25fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy', N'MIDP 3.0', N'Xem file v?n b?n', N'8 GB', N'768 MB', N'Dual-core 1 GHz Cortex-A9', N'MicroSD (T-Flash)', N'32 GB ', N'GSM 850/900/1800/1900', N'HSDPA 900/2100', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'Micro USB', N'A-GPS', N'Android 2.3.6 (Gingerbread)', N'C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Android 2.3.6 (Gingerbread)<br /> - CPU Dual-core 1 GHz Cortex-A9<br /> - RAM 768 MB<br /> - B? nh? trong 8 GB<br /> - H? tr? t?i ?a th? 32 GB <br /> - Máy ?nh 5.0 MP (2592 x 1944 pixels)<br /> - Quay phim HD 720p@25fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0031', N'SX06', N'Xperia arc S LT18i', 9400000, 9150000, CAST(0x7C410B00 AS Date), 10, N'Data Image/dien-thoai-di-dong-Sony-Ericsson-Xperia-Arc-Si-dienmay.com-b.jpg', N'Smart phone', NULL, N'8.1 MP', N'-', N'HD 720p@25fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy', N'MIDP 3.0', N'Xem file v?n b?n', N'1 GB', N'512 MB', N'Qualcomm MSM8255T Snapdragon 1.4 GHz Scorpion', N'MicroSD (T-Flash)', N'32 GB ', N'GSM 850/900/1800/1900', N'HSDPA 900/2100', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'Micro USB', N'A-GPS', N'Android 2.3.4 (Gingerbread)', N'C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Android 2.3.4 (Gingerbread)<br /> - CPU Qualcomm MSM8255T Snapdragon 1.4 GHz Scorpion<br /> - RAM 512 MB<br /> - B? nh? trong 1 GB<br /> - H? tr? t?i ?a th? 32 GB <br /> - Máy ?nh 8.1 MP<br /> - Quay phim HD 720p@25fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0032', N'SX06', N'Sony Ericsson LT22i', 8300000, 8990000, CAST(0x7C410B00 AS Date), 10, N'Data Image/dien-thoai-di-dong-sony-xperia-p-dienmay.com-l.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'-', N'HD 720p@25fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy', N'MIDP 3.0', N'Xem file v?n b?n', N'16 GB', N'1GB', N'Dual-core 1 GHz Cortex-A9', N'MicroSD (T-Flash)', N'32 GB ', N'GSM 850/900/1800/1900', N'HSDPA 900/2100', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'Micro USB', N'A-GPS', N'Android 2.3.4 (Gingerbread)', N'C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Android 2.3.4 (Gingerbread)<br /> - CPU Dual-core 1 GHz Cortex-A9<br /> - RAM 1GB<br /> - B? nh? trong 16 GB<br /> - H? tr? t?i ?a th? 32 GB <br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - Quay phim HD 720p@25fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0033', N'SX05', N'LG Optimus L7 P705', 7000000, 7449000, CAST(0x7C410B00 AS Date), 10, N'Data Image/LG-Optimus-L7-P700-l.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'-', N'HD 720p@25fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy', N'MIDP 3.0', N'Xem file v?n b?n', N'4 GB', N'512 MB', N'Qualcomm MSM7227A Snapdragon, 1 GHz Cortex-A5', N'MicroSD (T-Flash)', N'32 GB ', N'GSM 850/900/1800/1900', N'HSDPA 900/2100', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'Micro USB', N'A-GPS', N'Android 4.0', N'C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Android 4.0<br /> - CPU Qualcomm MSM7227A Snapdragon, 1 GHz Cortex-A5<br /> - RAM 512 MB<br /> - B? nh? trong 4 GB<br /> - H? tr? t?i ?a th? 32 GB <br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - Quay phim HD 720p@25fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0034', N'SX06', N'Xperia active ST17i', 6500000, 6990000, CAST(0x7C410B00 AS Date), 10, N'Data Image/dien-thoai-di-dong-sonyericsson-active-dienmay.com-l.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'-', N'HD 720p@25fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy', N'MIDP 3.0', N'Xem file v?n b?n', N'4 GB', N'512 MB', N'Qualcomm MSM7227A Snapdragon, 1 GHz Cortex-A5', N'MicroSD (T-Flash)', N'32 GB ', N'GSM 850/900/1800/1900', N'HSDPA 900/2100', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'Micro USB', N'A-GPS', N'H? ?i?u hành Android 2.3', N'C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành H? ?i?u hành Android 2.3<br /> - CPU Qualcomm MSM7227A Snapdragon, 1 GHz Cortex-A5<br /> - RAM 512 MB<br /> - B? nh? trong 4 GB<br /> - H? tr? t?i ?a th? 32 GB <br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - Quay phim HD 720p@25fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0035', N'SX03', N'Galaxy Ace 2 I8160', 6500000, 6898000, CAST(0x7C410B00 AS Date), 10, N'Data Image/dien-thoai-di-dong-samsung-GalaxyAce2-dienmay.com-l.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'-', N'HD 720p@25fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy', N'MIDP 3.0', N'Xem file v?n b?n', N'4 GB', N'512 MB', N'Qualcomm MSM7227A Snapdragon, 1 GHz Cortex-A5', N'MicroSD (T-Flash)', N'32 GB ', N'GSM 850/900/1800/1900', N'HSDPA 900/2100', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'Micro USB', N'A-GPS', N'H? ?i?u hành Android 2.3', N'C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành H? ?i?u hành Android 2.3<br /> - CPU Qualcomm MSM7227A Snapdragon, 1 GHz Cortex-A5<br /> - RAM 512 MB<br /> - B? nh? trong 4 GB<br /> - H? tr? t?i ?a th? 32 GB <br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - Quay phim HD 720p@25fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0036', N'SX01', N'Nokia Lumia 710', 0, 6299000, CAST(0x7C410B00 AS Date), 0, N'Data Image/dien-thoai-di-dong-Nokia-lumia-710-dienmay.com-b.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'-', N'HD 720p@25fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy', N'MIDP 3.0', N'Xem file v?n b?n', N'8 GB', N'512 MB', N'Qualcomm MSM8255T Snapdragon 1.4 GHz', N'MicroSD (T-Flash)', N'32 GB ', N'GSM 850/900/1800/1900', N'HSDPA 900/2100', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'Micro USB', N'A-GPS', N'Microsoft Windows Phone 7.5 Mango', N'C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Microsoft Windows Phone 7.5 Mango<br /> - CPU Qualcomm MSM8255T Snapdragon 1.4 GHz<br /> - RAM 512 MB<br /> - B? nh? trong 8 GB<br /> - H? tr? t?i ?a th? 32 GB <br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - Quay phim HD 720p@25fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0037', N'SX01', N'Nokia 700', 0, 5999000, CAST(0x7C410B00 AS Date), 0, N'Data Image/dien-thoai-di-dong-nokia-700--dienmay.com-l.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'-', N'HD 720p@25fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy', N'MIDP 3.0', N'Xem file v?n b?n', N'2 GB', N'512 MB', N'1GHz processor', N'MicroSD (T-Flash)', N'32 GB ', N'GSM 850/900/1800/1900', N'HSDPA 900/2100', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'Micro USB', N'A-GPS', N'Symbian Belle', N'C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Symbian Belle<br /> - CPU 1GHz processor<br /> - RAM 512 MB<br /> - B? nh? trong 2 GB<br /> - H? tr? t?i ?a th? 32 GB <br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - Quay phim HD 720p@25fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0038', N'SX03', N'Samsung S5830 Ace', 5000000, 5789000, CAST(0x7C410B00 AS Date), 12, N'Data Image/dien-thoai-di-dong-samsung-galaxy-ace-s5830-dienmay.com-l.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'-', N'HD 720p@25fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Cài ??t s?n trong máy', N'MIDP 3.0', N'Xem file v?n b?n', N'160 GB', N'512 MB', N'QCT MSM7227-1 Turbo 800 MHz', N'MicroSD (T-Flash)', N'32 GB ', N'GSM 850/900/1800/1900', N'HSDPA 900/2100', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'Micro USB', N'A-GPS', N'Andoird 2.2 Froyo', N'C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Andoird 2.2 Froyo<br /> - CPU QCT MSM7227-1 Turbo 800 MHz<br /> - RAM 512 MB<br /> - B? nh? trong 160 GB<br /> - H? tr? t?i ?a th? 32 GB <br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - Quay phim HD 720p@25fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0039', N'SX04', N'iPhone 4S 32GB', 19000000, 19998000, CAST(0x7C410B00 AS Date), 9, N'Data Image/dien-thoai-di-dong-iphone-4s-dienmay.com-l.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có th? cài thêm', N'-', N'Xem file v?n b?n', N'32 GB', N'-', N'ARM Cortex A9 1GHz dual-core processor', N'MicroSD (T-Flash)', N'-', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 1900 / 2100, CDMA2000 1xEV', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'USB 2.0', N'A-GPS', N'iOS 5 ', N'Thanh (th?ng) + C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành iOS 5 <br /> - CPU ARM Cortex A9 1GHz dual-core processor<br /> - RAM <br /> - B? nh? trong 32 GB<br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - ?ng d?ng khác Xem file v?n b?n<br /> - Quay phim FullHD 1080p@30fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0040', N'SX04', N'iPhone 4S 16GB', 10000000, 17693000, CAST(0x7C410B00 AS Date), 0, N'Data Image/dien-thoai-di-dong-apple-iphone-4S-dienmay.com-b.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có th? cài thêm', N'-', N'Xem file v?n b?n', N'16 GB', N'-', N'ARM Cortex A9 1GHz dual-core processor', N'MicroSD (T-Flash)', N'-', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 1900 / 2100, CDMA2000 1xEV', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'USB 2.0', N'A-GPS', N'iOS 5 ', N'Thanh (th?ng) + C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành iOS 5 <br /> - CPU ARM Cortex A9 1GHz dual-core processor<br /> - RAM <br /> - B? nh? trong 16 GB<br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - ?ng d?ng khác Xem file v?n b?n<br /> - Quay phim FullHD 1080p@30fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0041', N'SX04', N'iPhone 3GS 8GB', 6300000, 7000000, CAST(0x7C410B00 AS Date), 10, N'Data Image/iphone_3GS_b.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có th? cài thêm', N'-', N'Xem file v?n b?n', N'8 GB', N'256 MB', N'ARM Cortex A8 600 MHz', N'MicroSD (T-Flash)', N'-', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 1900 / 2100, CDMA2000 1xEV', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'USB 2.0', N'A-GPS', N'iOS 5 ', N'Thanh (th?ng) + C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành iOS 5 <br /> - CPU ARM Cortex A8 600 MHz<br /> - RAM 256 MB<br /> - B? nh? trong 8 GB<br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - ?ng d?ng khác Xem file v?n b?n<br /> - Quay phim FullHD 1080p@30fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0043', N'SX05', N'LG Optimus Net P698', 3500000, 3999000, CAST(0x7C410B00 AS Date), 10, N'Data Image/dien-thoai-di-dong-LG-Optimus-Net-P698-dienmay.com-l.jpg', N'Smart phone', NULL, N'8.0 MP (3264x2448 pixels)', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có th? cài thêm', N'-', N'H? tr? m?ng xã h?i', N'8 GB', N'512 MB', N'Qualcomm MSM7227T 800 MHz ARM v6', N'MicroSD (T-Flash)', N'-', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 1900 / 2100, CDMA2000 1xEV', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'USB 2.0', N'A-GPS', N'Android 2.3.4 (Gingerbread)', N'Thanh (th?ng) + C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - H? ?i?u hành Android 2.3.4 (Gingerbread)<br /> - CPU Qualcomm MSM7227T 800 MHz ARM v6<br /> - RAM 512 MB<br /> - B? nh? trong 8 GB<br /> - Máy ?nh 8.0 MP (3264x2448 pixels)<br /> - ?ng d?ng khác H? tr? m?ng xã h?i<br /> - Quay phim FullHD 1080p@30fps<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0044', N'SX01', N'Nokia X3-02.5', 3000000, 3499000, CAST(0x7C410B00 AS Date), 10, N'Data Image/dien-thoai-di-dong-Nokia-X3-02.5-dienmay.com-metal-b.jpg', N'Ph? thông', NULL, N'5.0 MP (2592 x 1944 pixels)', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có th? cài thêm', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'140 MB', N'128 MB', N'-', N'MicroSD (T-Flash)', N'16 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 1900 / 2100, CDMA2000 1xEV', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'USB 2.0', N'A-GPS', N'-', N'Thanh (th?ng) + C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - Máy ?nh 5.0 MP (2592 x 1944 pixels)<br /> - Quay phim FullHD 1080p@30fps<br /> - Nghe nh?c MP3, WAV, WMA, eAAC+<br /> - FM radio FM radio v?i RDS<br /> - H? tr? t?i ?a th? 16 GB<br /> - B? nh? trong 140 MB<br /> - Xem phim H.263, H.264(MPEG4-AVC), MP4, WMV<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0045', N'SX05', N'LG Optimus L3 E405', 2000000, 3489000, CAST(0x7C410B00 AS Date), 19, N'Data Image/LG-Optimus-L3-E405-l.jpg', N'Ph? thông', NULL, N'5.0 MP (2592 x 1944 pixels)', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có th? cài thêm', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'1GB', N'128 MB', N'-', N'MicroSD (T-Flash)', N'16 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 1900 / 2100, CDMA2000 1xEV', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'USB 2.0', N'A-GPS', N'Android 2.3.6 (Gingerbread)', N'Thanh (th?ng) + C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - Máy ?nh 5.0 MP (2592 x 1944 pixels)<br /> - Quay phim FullHD 1080p@30fps<br /> - Nghe nh?c MP3, WAV, WMA, eAAC+<br /> - FM radio FM radio v?i RDS<br /> - H? tr? t?i ?a th? 16 GB<br /> - B? nh? trong 1GB<br /> - Xem phim H.263, H.264(MPEG4-AVC), MP4, WMV<br /> - H? ?i?u hành Android 2.3.6 (Gingerbread)<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0046', N'SX01', N'Nokia C5-03', 3000000, 3489000, CAST(0x7C410B00 AS Date), 10, N'Data Image/nokia_c5-03_b.jpg', N'Ph? thông', NULL, N'5.0 MP (2592 x 1944 pixels)', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có th? cài thêm', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'1GB', N'128 MB', N'ARM 11 450 MHz processor', N'MicroSD (T-Flash)', N'16 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 1900 / 2100, CDMA2000 1xEV', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'USB 2.0', N'A-GPS', N'Symbian Series 60, 5th', N'Thanh (th?ng) + C?m ?ng', N'Có, phím ?o', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - Máy ?nh 5.0 MP (2592 x 1944 pixels)<br /> - Quay phim FullHD 1080p@30fps<br /> - Nghe nh?c MP3, WAV, WMA, eAAC+<br /> - FM radio FM radio v?i RDS<br /> - H? tr? t?i ?a th? 16 GB<br /> - B? nh? trong 1GB<br /> - Xem phim H.263, H.264(MPEG4-AVC), MP4, WMV<br /> - H? ?i?u hành Symbian Series 60, 5th<br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0047', N'SX01', N'Nokia 303', 2000000, 2489000, CAST(0x7C410B00 AS Date), 15, N'Data Image/dien-thoai-di-dong-nokia-Asha-303-dienmay.com-b.jpg', N'Ph? thông', NULL, N'Máy ?nh 3.2 MP', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có th? cài thêm', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'1GB', N'128 MB', N'ARM 11 450 MHz processor', N'MicroSD (T-Flash)', N'16 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 1900 / 2100, CDMA2000 1xEV', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'USB 2.0', N'A-GPS', N'-', N'Thanh (th?ng) + C?m ?ng', N'Qwerty sành ?i?u ', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - Máy ?nh Máy ?nh 3.2 MP<br /> - Quay phim FullHD 1080p@30fps<br /> - Nghe nh?c MP3, WAV, WMA, eAAC+<br /> - FM radio FM radio v?i RDS<br /> - H? tr? t?i ?a th? 16 GB<br /> - B? nh? trong 1GB<br /> - Xem phim H.263, H.264(MPEG4-AVC), MP4, WMV<br /> - H? ?i?u hành <br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0048', N'SX06', N'Sony Ericsson W20i Zylo', 2500000, 2950000, CAST(0x7C410B00 AS Date), 10, N'Data Image/SE_zylo_b.jpg', N'Ph? thông', NULL, N'Máy ?nh 3.2 MP', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có th? cài thêm', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'1GB', N'128 MB', N'ARM 11 450 MHz processor', N'MicroSD (T-Flash)', N'16 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 1900 / 2100, CDMA2000 1xEV', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'USB 2.0', N'A-GPS', N'-', N'Thanh (th?ng) + C?m ?ng', N'Qwerty sành ?i?u ', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - Máy ?nh Máy ?nh 3.2 MP<br /> - Quay phim FullHD 1080p@30fps<br /> - Nghe nh?c MP3, WAV, WMA, eAAC+<br /> - FM radio FM radio v?i RDS<br /> - H? tr? t?i ?a th? 16 GB<br /> - B? nh? trong 1GB<br /> - Xem phim H.263, H.264(MPEG4-AVC), MP4, WMV<br /> - H? ?i?u hành <br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0049', N'SX01', N'Nokia Asha 311', 2500000, 2950000, CAST(0x7C410B00 AS Date), 10, N'Data Image/Nokia-311-l.jpg', N'Ph? thông', NULL, N'Máy ?nh 3.2 MP', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có th? cài thêm', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'1GB', N'128 MB', N'ARM 11 450 MHz processor', N'MicroSD (T-Flash)', N'16 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 1900 / 2100, CDMA2000 1xEV', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'USB 2.0', N'A-GPS', N'-', N'Thanh (th?ng) + C?m ?ng', N'Qwerty sành ?i?u ', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - Máy ?nh Máy ?nh 3.2 MP<br /> - Quay phim FullHD 1080p@30fps<br /> - Nghe nh?c MP3, WAV, WMA, eAAC+<br /> - FM radio FM radio v?i RDS<br /> - H? tr? t?i ?a th? 16 GB<br /> - B? nh? trong 1GB<br /> - Xem phim H.263, H.264(MPEG4-AVC), MP4, WMV<br /> - H? ?i?u hành <br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0050', N'SX01', N'Nokia X2', 1850000, 2199000, CAST(0x7C410B00 AS Date), 12, N'Data Image/dien-thoai-di-dong-Nokia-X2-dienmay.com-l.jpg', N'Ph? thông', NULL, N'Máy ?nh 3.2 MP', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có th? cài thêm', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'1GB', N'128 MB', N'ARM 11 450 MHz processor', N'MicroSD (T-Flash)', N'16 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 1900 / 2100, CDMA2000 1xEV', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'USB 2.0', N'A-GPS', N'-', N'Thanh (th?ng) + C?m ?ng', N'Qwerty sành ?i?u ', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - Máy ?nh Máy ?nh 3.2 MP<br /> - Quay phim FullHD 1080p@30fps<br /> - Nghe nh?c MP3, WAV, WMA, eAAC+<br /> - FM radio FM radio v?i RDS<br /> - H? tr? t?i ?a th? 16 GB<br /> - B? nh? trong 1GB<br /> - Xem phim H.263, H.264(MPEG4-AVC), MP4, WMV<br /> - H? ?i?u hành <br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0051', N'SX01', N'Nokia C3-00', 1900000, 2199000, CAST(0x7C410B00 AS Date), 8, N'Data Image/no_c3dienmay.com_b.jpg', N'Ph? thông', NULL, N'Máy ?nh 3.2 MP', N'VGA (0.3 Mpx)', N'FullHD 1080p@30fps', N'H.263, H.264(MPEG4-AVC), MP4, WMV', N'MP3, WAV, WMA, eAAC+', N'FM radio v?i RDS', N'Có', N'Có th? cài thêm', N'MIDP 2.1', N'H? tr? m?ng xã h?i', N'1GB', N'128 MB', N'ARM 11 450 MHz processor', N'MicroSD (T-Flash)', N'16 GB', N'GSM 850/900/1800/1900', N'HSDPA 850 / 900 / 1900 / 2100, CDMA2000 1xEV', N'-', N'86 kbps', N'Wi-Fi 802.11 b/g/n', N'Có, V2.1 v?i A2DP', N'USB 2.0', N'A-GPS', N'-', N'Thanh (th?ng) + C?m ?ng', N'Qwerty sành ?i?u ', N'125 x 63 x 8.7 mm', N'117', N'Ti?ng Anh, Ti?ng Vi?t', N'-', N' - Máy ?nh Máy ?nh 3.2 MP<br /> - Quay phim FullHD 1080p@30fps<br /> - Nghe nh?c MP3, WAV, WMA, eAAC+<br /> - FM radio FM radio v?i RDS<br /> - H? tr? t?i ?a th? 16 GB<br /> - B? nh? trong 1GB<br /> - Xem phim H.263, H.264(MPEG4-AVC), MP4, WMV<br /> - H? ?i?u hành <br />')
INSERT [dbo].[SanPham] ([MaSP], [MaSX], [TenSP], [GiaMua], [GiaBan], [NgayNhap], [SLTon], [HinhAnh], [PhanLoai], [GhiChu], [CT1], [CT2], [CT3], [CT4], [CT5], [CT6], [CT7], [CT8], [CT9], [CT10], [CT11], [CT12], [CT13], [CT14], [CT15], [CT16], [CT17], [CT18], [CT19], [CT20], [CT21], [CT22], [CT23], [CT24], [CT25], [CT26], [CT27], [CT28], [CT29], [CT30], [NoiBat]) VALUES (N'SP0053', N'SX00', N'aaaaa', 0, 12121, CAST(0x7D410B00 AS Date), 0, N'Data Image/none.png', N'Ph? thông', NULL, N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'-', N'')
INSERT [dbo].[ThongKeTaiChinh] ([Nam], [Quy], [Thang], [GiaTriTonKho], [DoanhThu], [Lai], [TienMat]) VALUES (2020, 1, 1, 3000000000.0000, NULL, 10000000.0000, NULL)
INSERT [dbo].[ThongKeTaiChinh] ([Nam], [Quy], [Thang], [GiaTriTonKho], [DoanhThu], [Lai], [TienMat]) VALUES (2020, 1, 2, 1000000000.0000, NULL, 12000000.0000, NULL)
INSERT [dbo].[ThongKeTaiChinh] ([Nam], [Quy], [Thang], [GiaTriTonKho], [DoanhThu], [Lai], [TienMat]) VALUES (2020, 1, 3, 1000000000.0000, NULL, 15000000.0000, NULL)
INSERT [dbo].[ThongKeTaiChinh] ([Nam], [Quy], [Thang], [GiaTriTonKho], [DoanhThu], [Lai], [TienMat]) VALUES (2020, 2, 4, 1000000000.0000, NULL, 13000000.0000, NULL)
INSERT [dbo].[ThongKeTaiChinh] ([Nam], [Quy], [Thang], [GiaTriTonKho], [DoanhThu], [Lai], [TienMat]) VALUES (2020, 2, 5, 1000000000.0000, NULL, 20000000.0000, NULL)
INSERT [dbo].[ThongKeTaiChinh] ([Nam], [Quy], [Thang], [GiaTriTonKho], [DoanhThu], [Lai], [TienMat]) VALUES (2020, 2, 6, 2000000000.0000, NULL, 21000000.0000, NULL)
INSERT [dbo].[ThongKeTaiChinh] ([Nam], [Quy], [Thang], [GiaTriTonKho], [DoanhThu], [Lai], [TienMat]) VALUES (2020, 3, 7, 100000000.0000, NULL, 25000000.0000, NULL)
INSERT [dbo].[ThongKeTaiChinh] ([Nam], [Quy], [Thang], [GiaTriTonKho], [DoanhThu], [Lai], [TienMat]) VALUES (2020, 3, 8, 1000000000.0000, NULL, 45000000.0000, NULL)
INSERT [dbo].[ThongKeTaiChinh] ([Nam], [Quy], [Thang], [GiaTriTonKho], [DoanhThu], [Lai], [TienMat]) VALUES (2020, 3, 9, 1000000000.0000, NULL, 120000000.0000, NULL)
INSERT [dbo].[ThongKeTaiChinh] ([Nam], [Quy], [Thang], [GiaTriTonKho], [DoanhThu], [Lai], [TienMat]) VALUES (NULL, NULL, NULL, 30000000.0000, NULL, 60000000.0000, NULL)
ALTER TABLE [dbo].[FeedBack] ADD  CONSTRAINT [DF_Table_1_Ngay]  DEFAULT (getdate()) FOR [Ngay]
GO
ALTER TABLE [dbo].[HoaDonBan] ADD  CONSTRAINT [NgayBan]  DEFAULT (getdate()) FOR [NgayBan]
GO
ALTER TABLE [dbo].[Manager] ADD  CONSTRAINT [DF_Manager1_XemMI]  DEFAULT ('false') FOR [ME_VIEW]
GO
ALTER TABLE [dbo].[Manager] ADD  CONSTRAINT [DF_Manager1_SuaMI]  DEFAULT (N'false') FOR [ME_ADD]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [GiaMua]  DEFAULT ((0)) FOR [GiaMua]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [GiaBan]  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [SLTon]  DEFAULT ((0)) FOR [SLTon]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT1]  DEFAULT ('-') FOR [CT1]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT2]  DEFAULT ('-') FOR [CT2]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT3]  DEFAULT ('-') FOR [CT3]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT4]  DEFAULT ('-') FOR [CT4]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT5]  DEFAULT ('-') FOR [CT5]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT6]  DEFAULT ('-') FOR [CT6]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT7]  DEFAULT ('-') FOR [CT7]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT8]  DEFAULT ('-') FOR [CT8]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT9]  DEFAULT ('-') FOR [CT9]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT10]  DEFAULT ('-') FOR [CT10]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT11]  DEFAULT ('-') FOR [CT11]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT12]  DEFAULT ('-') FOR [CT12]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT13]  DEFAULT ('-') FOR [CT13]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT14]  DEFAULT ('-') FOR [CT14]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT15]  DEFAULT ('-') FOR [CT15]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT16]  DEFAULT ('-') FOR [CT16]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT17]  DEFAULT ('-') FOR [CT17]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT18]  DEFAULT ('-') FOR [CT18]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT19]  DEFAULT ('-') FOR [CT19]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT20]  DEFAULT ('-') FOR [CT20]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT21]  DEFAULT ('-') FOR [CT21]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT22]  DEFAULT ('-') FOR [CT22]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT23]  DEFAULT ('-') FOR [CT23]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT24]  DEFAULT ('-') FOR [CT24]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT25]  DEFAULT ('-') FOR [CT25]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT26]  DEFAULT ('-') FOR [CT26]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT27]  DEFAULT ('-') FOR [CT27]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT28]  DEFAULT ('-') FOR [CT28]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT29]  DEFAULT ('-') FOR [CT29]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [CT30]  DEFAULT ('-') FOR [CT30]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_CTHDB_HDB] FOREIGN KEY([MaHDBan])
REFERENCES [dbo].[HoaDonBan] ([MaHDBan])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan] CHECK CONSTRAINT [FK_CTHDB_HDB]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_CTHDB_KM] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan] CHECK CONSTRAINT [FK_CTHDB_KM]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_CTHDB_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan] CHECK CONSTRAINT [FK_CTHDB_SP]
GO
ALTER TABLE [dbo].[ChiTietHoaDonMua]  WITH CHECK ADD  CONSTRAINT [FK_CTHDM_HDM] FOREIGN KEY([MaHDMua])
REFERENCES [dbo].[HoaDonMua] ([MaHDMua])
GO
ALTER TABLE [dbo].[ChiTietHoaDonMua] CHECK CONSTRAINT [FK_CTHDM_HDM]
GO
ALTER TABLE [dbo].[ChiTietHoaDonMua]  WITH CHECK ADD  CONSTRAINT [FK_CTHDM_NSX] FOREIGN KEY([MaSX])
REFERENCES [dbo].[NhaSanXuat] ([MaSX])
GO
ALTER TABLE [dbo].[ChiTietHoaDonMua] CHECK CONSTRAINT [FK_CTHDM_NSX]
GO
ALTER TABLE [dbo].[ChiTietHoaDonMua]  WITH CHECK ADD  CONSTRAINT [FK_CTHDM_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDonMua] CHECK CONSTRAINT [FK_CTHDM_SP]
GO
ALTER TABLE [dbo].[CTPN_SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_MASP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTPN_SANPHAM] CHECK CONSTRAINT [FK_MASP]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FB_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FB_MaKH]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HDB_Admin] FOREIGN KEY([NguoiGiao])
REFERENCES [dbo].[Admin] ([MaAD])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HDB_Admin]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HDM_KH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HDM_KH]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_MaKH_HDB] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_MaKH_HDB]
GO
ALTER TABLE [dbo].[HoaDonMua]  WITH CHECK ADD  CONSTRAINT [FK_HDM_Admin] FOREIGN KEY([NguoiDat])
REFERENCES [dbo].[Admin] ([MaAD])
GO
ALTER TABLE [dbo].[HoaDonMua] CHECK CONSTRAINT [FK_HDM_Admin]
GO
ALTER TABLE [dbo].[HoaDonMua]  WITH CHECK ADD  CONSTRAINT [FK_HDM_NCU] FOREIGN KEY([NhaCungUng])
REFERENCES [dbo].[NhaCungUng] ([MaCU])
GO
ALTER TABLE [dbo].[HoaDonMua] CHECK CONSTRAINT [FK_HDM_NCU]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NSX] FOREIGN KEY([MaSX])
REFERENCES [dbo].[NhaSanXuat] ([MaSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NSX]
GO
