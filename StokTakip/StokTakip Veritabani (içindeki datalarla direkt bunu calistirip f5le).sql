USE [master]
GO
/****** Object:  Database [StokTakip]    Script Date: 20.02.2022 19:12:18 ******/
CREATE DATABASE [StokTakip]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StokTakip', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StokTakip.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StokTakip_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StokTakip_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StokTakip] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StokTakip].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StokTakip] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StokTakip] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StokTakip] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StokTakip] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StokTakip] SET ARITHABORT OFF 
GO
ALTER DATABASE [StokTakip] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [StokTakip] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StokTakip] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StokTakip] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StokTakip] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StokTakip] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StokTakip] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StokTakip] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StokTakip] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StokTakip] SET  ENABLE_BROKER 
GO
ALTER DATABASE [StokTakip] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StokTakip] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StokTakip] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StokTakip] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StokTakip] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StokTakip] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StokTakip] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StokTakip] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StokTakip] SET  MULTI_USER 
GO
ALTER DATABASE [StokTakip] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StokTakip] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StokTakip] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StokTakip] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StokTakip] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StokTakip] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [StokTakip] SET QUERY_STORE = OFF
GO
USE [StokTakip]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 20.02.2022 19:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[kategori_no] [int] IDENTITY(1,1) NOT NULL,
	[kategori] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[kategori_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 20.02.2022 19:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[model_no] [int] IDENTITY(1,1) NOT NULL,
	[model_ad] [varchar](20) NOT NULL,
	[otomobil_no] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[model_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otomobil]    Script Date: 20.02.2022 19:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otomobil](
	[otomobil_no] [int] IDENTITY(1,1) NOT NULL,
	[otomobil_marka] [varchar](20) NOT NULL,
	[kategori_no] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[otomobil_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parcalari]    Script Date: 20.02.2022 19:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parcalari](
	[parca_no] [int] IDENTITY(1,1) NOT NULL,
	[parca_ad] [varchar](20) NOT NULL,
	[yil_no] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[parca_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yillari]    Script Date: 20.02.2022 19:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yillari](
	[yil_no] [int] IDENTITY(1,1) NOT NULL,
	[yil] [varchar](4) NOT NULL,
	[model_no] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[yil_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([kategori_no], [kategori]) VALUES (3, N'BAHÇE')
INSERT [dbo].[Kategoriler] ([kategori_no], [kategori]) VALUES (2, N'BİLGİSAYAR')
INSERT [dbo].[Kategoriler] ([kategori_no], [kategori]) VALUES (4, N'EV')
INSERT [dbo].[Kategoriler] ([kategori_no], [kategori]) VALUES (5, N'MUTFAK')
INSERT [dbo].[Kategoriler] ([kategori_no], [kategori]) VALUES (1, N'OTOMOBİL')
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Model] ON 

INSERT [dbo].[Model] ([model_no], [model_ad], [otomobil_no]) VALUES (1, N'A1', N'1 ')
INSERT [dbo].[Model] ([model_no], [model_ad], [otomobil_no]) VALUES (2, N'A2', N'1 ')
INSERT [dbo].[Model] ([model_no], [model_ad], [otomobil_no]) VALUES (3, N'C1', N'2 ')
INSERT [dbo].[Model] ([model_no], [model_ad], [otomobil_no]) VALUES (4, N'3.20', N'3 ')
INSERT [dbo].[Model] ([model_no], [model_ad], [otomobil_no]) VALUES (5, N'FOCUS', N'4 ')
INSERT [dbo].[Model] ([model_no], [model_ad], [otomobil_no]) VALUES (6, N'E250', N'5 ')
SET IDENTITY_INSERT [dbo].[Model] OFF
GO
SET IDENTITY_INSERT [dbo].[Otomobil] ON 

INSERT [dbo].[Otomobil] ([otomobil_no], [otomobil_marka], [kategori_no]) VALUES (1, N'Audi', N'1 ')
INSERT [dbo].[Otomobil] ([otomobil_no], [otomobil_marka], [kategori_no]) VALUES (2, N'Citroen', N'1 ')
INSERT [dbo].[Otomobil] ([otomobil_no], [otomobil_marka], [kategori_no]) VALUES (3, N'BMW', N'1 ')
INSERT [dbo].[Otomobil] ([otomobil_no], [otomobil_marka], [kategori_no]) VALUES (4, N'Ford', N'1 ')
INSERT [dbo].[Otomobil] ([otomobil_no], [otomobil_marka], [kategori_no]) VALUES (5, N'Mercedes', N'1 ')
SET IDENTITY_INSERT [dbo].[Otomobil] OFF
GO
SET IDENTITY_INSERT [dbo].[Parcalari] ON 

INSERT [dbo].[Parcalari] ([parca_no], [parca_ad], [yil_no]) VALUES (1, N'KAROSER', N'1 ')
INSERT [dbo].[Parcalari] ([parca_no], [parca_ad], [yil_no]) VALUES (2, N'TEKERLEK', N'1 ')
INSERT [dbo].[Parcalari] ([parca_no], [parca_ad], [yil_no]) VALUES (3, N'TEKERLEK', N'2 ')
INSERT [dbo].[Parcalari] ([parca_no], [parca_ad], [yil_no]) VALUES (4, N'FREN DİSKİ', N'3 ')
INSERT [dbo].[Parcalari] ([parca_no], [parca_ad], [yil_no]) VALUES (5, N'EGZOZ', N'4 ')
INSERT [dbo].[Parcalari] ([parca_no], [parca_ad], [yil_no]) VALUES (6, N'DİREKSİYON', N'5 ')
INSERT [dbo].[Parcalari] ([parca_no], [parca_ad], [yil_no]) VALUES (7, N'KOLTUK', N'6 ')
SET IDENTITY_INSERT [dbo].[Parcalari] OFF
GO
SET IDENTITY_INSERT [dbo].[Yillari] ON 

INSERT [dbo].[Yillari] ([yil_no], [yil], [model_no]) VALUES (1, N'2015', N'1 ')
INSERT [dbo].[Yillari] ([yil_no], [yil], [model_no]) VALUES (2, N'2020', N'2 ')
INSERT [dbo].[Yillari] ([yil_no], [yil], [model_no]) VALUES (3, N'2016', N'3 ')
INSERT [dbo].[Yillari] ([yil_no], [yil], [model_no]) VALUES (4, N'2017', N'4 ')
INSERT [dbo].[Yillari] ([yil_no], [yil], [model_no]) VALUES (5, N'2018', N'5 ')
INSERT [dbo].[Yillari] ([yil_no], [yil], [model_no]) VALUES (6, N'2019', N'6 ')
SET IDENTITY_INSERT [dbo].[Yillari] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Kategori__BFBCD945767D1A1F]    Script Date: 20.02.2022 19:12:18 ******/
ALTER TABLE [dbo].[Kategoriler] ADD UNIQUE NONCLUSTERED 
(
	[kategori] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Otomobil__F4E875E57CAF5C53]    Script Date: 20.02.2022 19:12:18 ******/
ALTER TABLE [dbo].[Otomobil] ADD UNIQUE NONCLUSTERED 
(
	[otomobil_marka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [StokTakip] SET  READ_WRITE 
GO
