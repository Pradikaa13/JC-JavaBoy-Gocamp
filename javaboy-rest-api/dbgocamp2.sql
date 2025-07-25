USE [master]
GO
/****** Object:  Database [dbgocamp2]    Script Date: 18/07/2025 16:09:09 ******/
CREATE DATABASE [dbgocamp2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbgocamp2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\dbgocamp2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbgocamp2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\dbgocamp2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dbgocamp2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbgocamp2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbgocamp2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbgocamp2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbgocamp2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbgocamp2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbgocamp2] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbgocamp2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbgocamp2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbgocamp2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbgocamp2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbgocamp2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbgocamp2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbgocamp2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbgocamp2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbgocamp2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbgocamp2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbgocamp2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbgocamp2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbgocamp2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbgocamp2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbgocamp2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbgocamp2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbgocamp2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbgocamp2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbgocamp2] SET  MULTI_USER 
GO
ALTER DATABASE [dbgocamp2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbgocamp2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbgocamp2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbgocamp2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbgocamp2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbgocamp2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dbgocamp2] SET QUERY_STORE = OFF
GO
USE [dbgocamp2]
GO
/****** Object:  Table [dbo].[booking]    Script Date: 18/07/2025 16:09:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[no_booking] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[users_id] [bigint] NULL,
	[product_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 18/07/2025 16:09:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NULL,
	[product_id] [bigint] NULL,
	[product_name] [varchar](255) NULL,
	[quantity] [int] NULL,
	[borrow_date] [date] NULL,
	[return_date] [date] NULL,
	[total_price] [decimal](10, 2) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kabupaten]    Script Date: 18/07/2025 16:09:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kabupaten](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[provinsi_id] [bigint] NULL,
	[nama_kabupaten] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 18/07/2025 16:09:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NULL,
	[product_id] [bigint] NULL,
	[product_name] [varchar](255) NULL,
	[status] [int] NULL,
	[quantity] [int] NULL,
	[borrow_date] [date] NULL,
	[return_date] [date] NULL,
	[price] [decimal](10, 2) NULL,
	[penalty] [decimal](10, 2) NULL,
	[total_price] [decimal](10, 2) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 18/07/2025 16:09:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[no_hp] [bigint] NULL,
	[photo_id] [varchar](255) NULL,
	[photo_transfer] [varchar](255) NULL,
	[address] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 18/07/2025 16:09:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](255) NULL,
	[product_description] [text] NULL,
	[photo] [varchar](255) NULL,
	[price] [decimal](8, 2) NULL,
	[category1] [varchar](255) NULL,
	[category2] [varchar](255) NULL,
	[stock] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[provinsi]    Script Date: 18/07/2025 16:09:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[provinsi](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[nama_provinsi] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[return_orders]    Script Date: 18/07/2025 16:09:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[return_orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NULL,
	[product_id] [bigint] NULL,
	[product_name] [varchar](255) NULL,
	[quantity] [int] NULL,
	[borrow_date] [date] NULL,
	[return_date] [date] NULL,
	[total_price] [decimal](10, 2) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 18/07/2025 16:09:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[email_verified_at] [datetime] NULL,
	[password] [varchar](255) NULL,
	[no_hp] [bigint] NULL,
	[provinsi_id] [bigint] NULL,
	[kabupaten_id] [bigint] NULL,
	[usertype] [varchar](255) NULL,
	[remember_token] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[booking]  WITH CHECK ADD  CONSTRAINT [FK_booking_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[booking] CHECK CONSTRAINT [FK_booking_products]
GO
ALTER TABLE [dbo].[booking]  WITH CHECK ADD  CONSTRAINT [FK_booking_users] FOREIGN KEY([users_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[booking] CHECK CONSTRAINT [FK_booking_users]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[kabupaten]  WITH CHECK ADD FOREIGN KEY([provinsi_id])
REFERENCES [dbo].[provinsi] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[return_orders]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[return_orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD FOREIGN KEY([kabupaten_id])
REFERENCES [dbo].[kabupaten] ([id])
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD FOREIGN KEY([provinsi_id])
REFERENCES [dbo].[provinsi] ([id])
GO
USE [master]
GO
ALTER DATABASE [dbgocamp2] SET  READ_WRITE 
GO
