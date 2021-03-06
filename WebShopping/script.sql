USE [master]
GO
/****** Object:  Database [ShopOnline]    Script Date: 11/25/2021 12:53:00 PM ******/
CREATE DATABASE [ShopOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopOnline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopOnline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopOnline] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopOnline] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopOnline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopOnline] SET  MULTI_USER 
GO
ALTER DATABASE [ShopOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopOnline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopOnline] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShopOnline] SET QUERY_STORE = OFF
GO
USE [ShopOnline]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 11/25/2021 12:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSX]    Script Date: 11/25/2021 12:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSX](
	[MaNSX] [nvarchar](10) NULL,
	[TenNSX] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/25/2021 12:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNSX] [nvarchar](10) NULL,
	[TenSP] [nvarchar](50) NULL,
	[CauHinh] [text] NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP01', N'Cao Cấp')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP02', N'Trung Bình')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'SP03', N'Sang Chảnh')
GO
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX01', N'iPhone')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX02', N'SamSung')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX03', N'Oppo')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX04', N'Xiaomi')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (NULL, NULL)
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'NSX01', N'iPhone X 64GB', N'Chua Xac Dinh', N'1.png', NULL, NULL, NULL, 8890000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP02', N'LSP01', N'NSX01', N'iPhone XR 64GB', N'Chua Xac Dinh', N'2.png', NULL, NULL, NULL, 13490000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP03', N'LSP03', N'NSX01', N'iPhone 11 Pro Max 64GB', N'Chua Xac Dinh', N'3.png', NULL, NULL, NULL, 21990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP04', N'LSP03', N'NSX01', N'iPhone 12 Pro Max 128GB', N'Chua Xac Dinh', N'4.png', NULL, NULL, NULL, 32990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP05', N'LSP03', N'NSX02', N'Samsung Galaxy S20+', N'Chua Xac Dinh', N'5.png', NULL, NULL, NULL, 14990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP06', N'LSP03', N'NSX02', N'Samsung Galaxy Z Flip', N'Chua Xac Dinh', N'6.png', NULL, NULL, NULL, 24990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP07', N'LSP03', N'NSX02', N'Samsung Galaxy Z Fold3 5G 512GB', N'Chua Xac Dinh', N'7.png', NULL, NULL, NULL, 44990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP08', N'LSP01', N'NSX02', N'Samsung Galaxy A52s 5G (8GB/256GB)', N'Chua Xac Dinh', N'8.png', NULL, NULL, NULL, 9790000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP09', N'LSP01', N'NSX03', N'OPPO Reno6 5G', N'Chua Xac Dinh', N'9.png', NULL, NULL, NULL, 12990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP10', N'LSP01', N'NSX03', N'OPPO Find X3 Pro 5G', N'Chua Xac Dinh', N'10.png', NULL, NULL, NULL, 19990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP11', N'LSP02', N'NSX03', N'OPPO A54 4GB-128GB', N'Chua Xac Dinh', N'11.png', NULL, NULL, NULL, 4690000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP12', N'LSP02', N'NSX03', N'OPPO A95 ', N'Chua Xac Dinh', N'12.png', NULL, NULL, NULL, 6990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP13', N'LSP02', N'NSX04', N'Xiaomi Mi 11 Lite', N'Chua Xac Dinh', N'13.png', NULL, NULL, NULL, 9490000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP14', N'LSP01', N'NSX04', N'Xiaomi 11T 5G 128GB', N'Chua Xac Dinh', N'14.png', NULL, NULL, NULL, 10990000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP15', N'LSP02', N'NSX04', N'Xiaomi Redmi 9A', N'Chua Xac Dinh', N'15.png', NULL, NULL, NULL, 2290000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNSX], [TenSP], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP16', N'LSP04', N'NSX04', N'Xiaomi Redmi 10 (4GB/128GB)', N'Chua Xac Dinh', N'16.png', NULL, NULL, NULL, 4290000, 0, 0, N'0         ')
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
USE [master]
GO
ALTER DATABASE [ShopOnline] SET  READ_WRITE 
GO
