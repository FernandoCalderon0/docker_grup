USE [master]
GO
/****** Object:  Database [KalakaSupreme]    Script Date: 8/11/2024 08:18:18 ******/
CREATE DATABASE [KalakaSupreme]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KalakaSupreme', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\KalakaSupreme.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KalakaSupreme_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\KalakaSupreme_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [KalakaSupreme] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KalakaSupreme].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KalakaSupreme] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KalakaSupreme] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KalakaSupreme] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KalakaSupreme] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KalakaSupreme] SET ARITHABORT OFF 
GO
ALTER DATABASE [KalakaSupreme] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [KalakaSupreme] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KalakaSupreme] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KalakaSupreme] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KalakaSupreme] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KalakaSupreme] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KalakaSupreme] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KalakaSupreme] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KalakaSupreme] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KalakaSupreme] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KalakaSupreme] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KalakaSupreme] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KalakaSupreme] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KalakaSupreme] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KalakaSupreme] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KalakaSupreme] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KalakaSupreme] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KalakaSupreme] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KalakaSupreme] SET  MULTI_USER 
GO
ALTER DATABASE [KalakaSupreme] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KalakaSupreme] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KalakaSupreme] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KalakaSupreme] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KalakaSupreme] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KalakaSupreme] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KalakaSupreme] SET QUERY_STORE = ON
GO
ALTER DATABASE [KalakaSupreme] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [KalakaSupreme]
GO
/****** Object:  Schema [db_Auditoria]    Script Date: 8/11/2024 08:18:18 ******/
CREATE SCHEMA [db_Auditoria]
GO
/****** Object:  Schema [db_Catalogo]    Script Date: 8/11/2024 08:18:18 ******/
CREATE SCHEMA [db_Catalogo]
GO
/****** Object:  Schema [db_Transac]    Script Date: 8/11/2024 08:18:18 ******/
CREATE SCHEMA [db_Transac]
GO
/****** Object:  Table [db_Auditoria].[CategoriaAuditLog]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Auditoria].[CategoriaAuditLog](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[AuditAccion] [varchar](10) NULL,
	[AuditNombreTabla] [varchar](20) NULL,
	[AuditRegistroId] [int] NULL,
	[AuditFecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_Auditoria].[ClienteAuditLog]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Auditoria].[ClienteAuditLog](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[AuditAccion] [varchar](10) NULL,
	[AuditNombreTabla] [varchar](20) NULL,
	[AuditRegistroId] [int] NULL,
	[AuditFecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_Auditoria].[ProductoAuditLog]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Auditoria].[ProductoAuditLog](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[AuditAccion] [varchar](10) NULL,
	[AuditNombreTabla] [varchar](20) NULL,
	[AuditRegistroId] [int] NULL,
	[AuditFecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_Auditoria].[ProveedorAuditLog]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Auditoria].[ProveedorAuditLog](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[AuditAccion] [varchar](10) NULL,
	[AuditNombreTabla] [varchar](20) NULL,
	[AuditRegistroId] [int] NULL,
	[AuditFecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_Auditoria].[UsuarioAuditLog]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Auditoria].[UsuarioAuditLog](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[AuditAccion] [varchar](10) NULL,
	[AuditNombreTabla] [varchar](20) NULL,
	[AuditRegistroId] [int] NULL,
	[AuditFecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_Auditoria].[VentaAuditLog]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Auditoria].[VentaAuditLog](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[AuditAccion] [varchar](10) NULL,
	[AuditNombreTabla] [varchar](20) NULL,
	[AuditRegistroId] [int] NULL,
	[AuditFecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_Catalogo].[TblProductDetalle]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Catalogo].[TblProductDetalle](
	[IdDetalleProd] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdMedida] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[Marca] [varchar](50) NULL,
 CONSTRAINT [PK_TblProductDetalle] PRIMARY KEY CLUSTERED 
(
	[IdDetalleProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_Catalogo].[TblProducto]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Catalogo].[TblProducto](
	[IdProducto] [uniqueidentifier] NOT NULL,
	[NombreProductos] [varchar](50) NULL,
	[IdCategoria] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TblProducto] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_Catalogo].[TblProveedor]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Catalogo].[TblProveedor](
	[IdProveedor] [uniqueidentifier] NOT NULL,
	[NombreCompañia] [varchar](50) NULL,
	[Correo] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
 CONSTRAINT [PK_TblProveedor] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_Transac].[TblCompra]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Transac].[TblCompra](
	[IdCompra] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [varchar](50) NULL,
	[IdProveedor] [int] NULL,
	[MontoTotal] [decimal](10, 2) NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_Transac].[TblCompraDetalle]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Transac].[TblCompraDetalle](
	[IdDetalleCompra] [int] IDENTITY(1,1) NOT NULL,
	[IdCompra] [int] NOT NULL,
	[IdDetalleProd] [int] NOT NULL,
	[PrecioCompra] [decimal](10, 2) NULL,
	[FechaCreacion] [datetime] NULL,
	[NombreCompra] [varchar](50) NULL,
 CONSTRAINT [PK_TblCompraDetalle] PRIMARY KEY CLUSTERED 
(
	[IdDetalleCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_Transac].[TblDetalleVenta]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Transac].[TblDetalleVenta](
	[IdDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdVenta] [int] NULL,
	[IdProducto] [int] NULL,
	[PrecioVenta] [decimal](10, 2) NULL,
	[Cantidad] [int] NULL,
	[Total] [int] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db_Transac].[TblVenta]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db_Transac].[TblVenta](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[IdCliente] [int] NULL,
	[MontoPago] [decimal](10, 2) NULL,
	[MontoCambio] [decimal](10, 2) NULL,
	[MontoTotal] [decimal](10, 2) NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCategoria]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCategoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCategoria2]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCategoria2](
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
 CONSTRAINT [PK_TblCategoria2] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCliente]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCliente](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[PrimerNombre] [varchar](50) NULL,
	[SegundoNombre] [varchar](50) NULL,
	[PrimerApellido] [varchar](50) NULL,
	[SegundoApellido] [varchar](50) NULL,
	[Correo] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
 CONSTRAINT [PK_TblCliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDetalleProd2]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDetalleProd2](
	[IdDetalleProd] [uniqueidentifier] NOT NULL,
	[IdProducto] [uniqueidentifier] NOT NULL,
	[IdMedida] [uniqueidentifier] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[Marca] [varchar](50) NULL,
 CONSTRAINT [PK_TblDetalleProd2] PRIMARY KEY CLUSTERED 
(
	[IdDetalleProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblInventariado]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblInventariado](
	[IdInventario] [uniqueidentifier] NOT NULL,
	[IdDetalleProd] [uniqueidentifier] NOT NULL,
	[IdProveedor] [uniqueidentifier] NOT NULL,
	[Existencia] [int] NULL,
	[Lote] [nvarchar](50) NULL,
	[PrecioVenta] [decimal](10, 2) NULL,
	[PrecioCompra] [decimal](10, 2) NULL,
	[FechaCompra] [datetime] NULL,
	[FechaVencimiento] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblPermiso]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblPermiso](
	[IdPermiso] [int] IDENTITY(1,1) NOT NULL,
	[IdRol] [int] NULL,
	[NombreMenu] [varchar](100) NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProducto2]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProducto2](
	[IdProducto] [uniqueidentifier] NOT NULL,
	[NombreProducto] [varchar](50) NULL,
	[IdCategoria] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TblProducto2] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblRol]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRol](
	[IdRol] [uniqueidentifier] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[FechaCreacion] [datetime] NULL,
 CONSTRAINT [PK_TblRol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUnidadMedida]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUnidadMedida](
	[IdMedida] [uniqueidentifier] NOT NULL,
	[TipoMedida] [varchar](50) NOT NULL,
	[Abreviatura] [varchar](50) NULL,
 CONSTRAINT [PK_TblUnidadMedida_1] PRIMARY KEY CLUSTERED 
(
	[IdMedida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUsuario3]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUsuario3](
	[IdUsuario] [uniqueidentifier] NOT NULL,
	[IdRol] [uniqueidentifier] NOT NULL,
	[PrimerNombre] [varchar](50) NULL,
	[SegundoNombre] [varchar](50) NULL,
	[PrimerApellido] [varchar](50) NULL,
	[SegundoApellido] [varchar](50) NULL,
	[Correo] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[Sexo] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
	[FechaCreacion] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [db_Catalogo].[TblProducto] ([IdProducto], [NombreProductos], [IdCategoria]) VALUES (N'e1fb0fe8-df16-49dd-ae77-b75b8071a760', N'Huevos', N'e1fb0fe8-df16-49dd-ae77-b75b8071a760')
INSERT [db_Catalogo].[TblProducto] ([IdProducto], [NombreProductos], [IdCategoria]) VALUES (N'9739d78e-9176-458e-8a64-df02ace4d777', N'ProductoEjemplo', N'3c13bebf-a72a-492e-87fc-8dcd659fec81')
INSERT [db_Catalogo].[TblProducto] ([IdProducto], [NombreProductos], [IdCategoria]) VALUES (N'f04a2cf3-e38b-4ba0-9543-df7622b137f1', N'sacate', N'f04a2cf3-e38b-4ba0-9543-df7622b137f1')
GO
INSERT [db_Catalogo].[TblProveedor] ([IdProveedor], [NombreCompañia], [Correo], [Telefono], [Estado], [FechaCreacion]) VALUES (N'268ba626-2e77-4bfb-94e8-14c649801083', N'Picosal', N'fdffd@khhi.com', N'6455654', 0, CAST(N'2024-08-03T01:58:22.000' AS DateTime))
INSERT [db_Catalogo].[TblProveedor] ([IdProveedor], [NombreCompañia], [Correo], [Telefono], [Estado], [FechaCreacion]) VALUES (N'15f4a546-5079-466b-ad00-2760c2291c0d', N'Ins', N'ins@example.com', N'string', 1, CAST(N'2024-06-21T23:29:29.000' AS DateTime))
INSERT [db_Catalogo].[TblProveedor] ([IdProveedor], [NombreCompañia], [Correo], [Telefono], [Estado], [FechaCreacion]) VALUES (N'da13b6ca-9e18-45f7-9ffe-36451dcf259b', N'SA', N'gua@gmail.com', N'25465454', 1, CAST(N'2024-04-03T01:01:58.000' AS DateTime))
INSERT [db_Catalogo].[TblProveedor] ([IdProveedor], [NombreCompañia], [Correo], [Telefono], [Estado], [FechaCreacion]) VALUES (N'6425dd0f-ef7c-4e16-83fa-e592f66d3435', N'SASA', N'kluhiloih@kjhj', N'6545', 1, CAST(N'2024-04-03T01:01:58.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[TblCategoria] ON 

INSERT [dbo].[TblCategoria] ([IdCategoria], [Descripcion], [Estado], [FechaCreacion]) VALUES (1, N'manolo', 1, CAST(N'2024-04-01T01:51:36.467' AS DateTime))
INSERT [dbo].[TblCategoria] ([IdCategoria], [Descripcion], [Estado], [FechaCreacion]) VALUES (4, N'buenisima', 1, CAST(N'2024-04-01T02:14:44.350' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblCategoria] OFF
GO
INSERT [dbo].[TblCategoria2] ([IdCategoria], [Descripcion], [Estado], [FechaCreacion]) VALUES (N'be371ecc-4318-41b3-b65a-3b8fd8344ee5', N'Levadura', 0, CAST(N'2024-08-03T01:58:22.000' AS DateTime))
INSERT [dbo].[TblCategoria2] ([IdCategoria], [Descripcion], [Estado], [FechaCreacion]) VALUES (N'babc874e-6b94-461e-bace-640d19ab12c4', N'Azucar', 1, CAST(N'2024-05-03T01:58:22.000' AS DateTime))
INSERT [dbo].[TblCategoria2] ([IdCategoria], [Descripcion], [Estado], [FechaCreacion]) VALUES (N'27418bc1-f1c8-458c-85ac-74471c6b784d', N'Chocolate', 0, CAST(N'2024-08-03T01:58:22.000' AS DateTime))
INSERT [dbo].[TblCategoria2] ([IdCategoria], [Descripcion], [Estado], [FechaCreacion]) VALUES (N'c8075b31-7035-4255-a513-bc90fbec892c', N'Harina', 1, CAST(N'2024-10-17T14:05:47.723' AS DateTime))
INSERT [dbo].[TblCategoria2] ([IdCategoria], [Descripcion], [Estado], [FechaCreacion]) VALUES (N'5f1b2488-5f5c-4fc0-8393-eb3debad88b9', N'Colorante', 0, CAST(N'2024-05-03T20:52:37.000' AS DateTime))
GO
INSERT [dbo].[TblCliente] ([IdCliente], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Correo], [Telefono], [Estado], [FechaCreacion]) VALUES (N'e0228051-dee9-4e7a-aea9-51b34265eb89', N'pedrog', N'orlando', N'jiron', N'perez', N'juan@gmail.com', N'88579898', 1, CAST(N'2024-10-17T14:00:18.910' AS DateTime))
INSERT [dbo].[TblCliente] ([IdCliente], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Correo], [Telefono], [Estado], [FechaCreacion]) VALUES (N'b3a577da-bb26-4e38-ac77-76ee053bcd68', N'isabel', N'michel', N'Bella', N'Peralta', N'BellaIsa@gmail.com', N'0038377938', 0, CAST(N'2024-05-03T01:58:22.000' AS DateTime))
INSERT [dbo].[TblCliente] ([IdCliente], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Correo], [Telefono], [Estado], [FechaCreacion]) VALUES (N'a2ac0720-4a7e-431a-9a38-8274845ff573', N'Eltan', N'limon', N'chavez', N'lau', N'lau@gmail,com', N'9837394', 0, CAST(N'2024-05-03T01:58:22.000' AS DateTime))
INSERT [dbo].[TblCliente] ([IdCliente], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Correo], [Telefono], [Estado], [FechaCreacion]) VALUES (N'b6d3503e-8397-405a-b7c7-949f8f7ece98', N'arnoldo', N'peralta', N'suniga', N'chepes', N'chepe@gmail.com', N'8973987389', 0, CAST(N'2024-05-03T01:58:22.000' AS DateTime))
INSERT [dbo].[TblCliente] ([IdCliente], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Correo], [Telefono], [Estado], [FechaCreacion]) VALUES (N'a91788d5-5823-4e53-a4ca-a905aefaada5', N'tizon', N'juaquin', N'arnol', N'orlando', N'gaytan@gmail.com', N'55465687897', 1, CAST(N'2024-05-03T01:58:22.000' AS DateTime))
INSERT [dbo].[TblCliente] ([IdCliente], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Correo], [Telefono], [Estado], [FechaCreacion]) VALUES (N'a9461b68-2b1f-4af5-ab63-b76ca52eaf2c', N'pedro', N'juaquin', N'arnol', N'suniga', N'paez123@gmail.com', N'1564689', 1, CAST(N'2024-10-03T01:58:22.000' AS DateTime))
INSERT [dbo].[TblCliente] ([IdCliente], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Correo], [Telefono], [Estado], [FechaCreacion]) VALUES (N'71eba926-3b00-4f97-80e1-bdbe3105da65', N'Jeremias', N'Pandi', N'pedriz', N'Largoo', N'Jeremi@gmail.com', N'9823098907', 0, CAST(N'2024-05-03T01:58:22.000' AS DateTime))
INSERT [dbo].[TblCliente] ([IdCliente], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Correo], [Telefono], [Estado], [FechaCreacion]) VALUES (N'00a0c043-1056-4329-a76d-c3cf654f0f63', N'karolina', N'karol', N'espinoza', N'seledon', N'karol@gmail.com', N'908298', 0, CAST(N'2024-08-03T01:58:22.000' AS DateTime))
GO
INSERT [dbo].[TblDetalleProd2] ([IdDetalleProd], [IdProducto], [IdMedida], [Descripcion], [Estado], [Marca]) VALUES (N'187b2925-171c-475a-8eb8-1a662e3dd033', N'3fa85f64-5717-4562-b3fc-2c963f66afa8', N'3fa85f64-5717-4562-b3fc-2c963f66afa9', N'hollaa', 1, N'SA')
INSERT [dbo].[TblDetalleProd2] ([IdDetalleProd], [IdProducto], [IdMedida], [Descripcion], [Estado], [Marca]) VALUES (N'5cb5f1a7-1cfe-46ca-9049-56dd4ff80c99', N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'string', 1, N'string')
GO
INSERT [dbo].[TblInventariado] ([IdInventario], [IdDetalleProd], [IdProveedor], [Existencia], [Lote], [PrecioVenta], [PrecioCompra], [FechaCompra], [FechaVencimiento]) VALUES (N'8993bef1-8980-4bdb-9626-7236a49ee239', N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'3fa85f64-5717-4562-b3fc-2c963f66afa6', 1, N'marakatuya', CAST(300.00 AS Decimal(10, 2)), CAST(150.00 AS Decimal(10, 2)), CAST(N'1900-05-31T00:00:00.000' AS DateTime), CAST(N'2024-04-18T03:48:16.460' AS DateTime))
INSERT [dbo].[TblInventariado] ([IdInventario], [IdDetalleProd], [IdProveedor], [Existencia], [Lote], [PrecioVenta], [PrecioCompra], [FechaCompra], [FechaVencimiento]) VALUES (N'f77ca28f-def2-45b5-a129-1ed01f1a43dc', N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'3fa85f64-5717-4562-b3fc-2c963f66afa6', 0, N'string', CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(N'2024-04-18T03:59:17.203' AS DateTime), CAST(N'2024-04-18T03:59:17.203' AS DateTime))
GO
INSERT [dbo].[TblProducto2] ([IdProducto], [NombreProducto], [IdCategoria]) VALUES (N'5b380c82-6285-4fc7-b09f-21523c439154', N'huevon', N'3fa85f64-5717-4562-b3fc-2c963f66afa6')
GO
INSERT [dbo].[TblRol] ([IdRol], [Descripcion], [FechaCreacion]) VALUES (N'64f5938f-5db2-4c4c-8cf4-1007e6681fc7', N'Cajero', CAST(N'2024-04-14T23:25:32.630' AS DateTime))
INSERT [dbo].[TblRol] ([IdRol], [Descripcion], [FechaCreacion]) VALUES (N'89032260-ff4f-4d1f-bba0-7ccda8059437', N'Dueño', CAST(N'2024-08-03T01:58:22.000' AS DateTime))
INSERT [dbo].[TblRol] ([IdRol], [Descripcion], [FechaCreacion]) VALUES (N'dfc69b67-4a9c-43bf-af87-9d2a2641be55', N'Gerente', CAST(N'2024-08-03T01:58:22.000' AS DateTime))
GO
INSERT [dbo].[TblUnidadMedida] ([IdMedida], [TipoMedida], [Abreviatura]) VALUES (N'72cf59cb-ec96-44b2-8cf3-3b421f19e19b', N'45 sacos', N'Arina')
INSERT [dbo].[TblUnidadMedida] ([IdMedida], [TipoMedida], [Abreviatura]) VALUES (N'109a9000-895f-4182-8630-74e14a65e889', N'2 quintales', N'levadura')
INSERT [dbo].[TblUnidadMedida] ([IdMedida], [TipoMedida], [Abreviatura]) VALUES (N'6e0396ab-2d0e-41c3-a70c-b1396156c26c', N'50 libras', N'crema')
INSERT [dbo].[TblUnidadMedida] ([IdMedida], [TipoMedida], [Abreviatura]) VALUES (N'e18025a0-38b3-43c2-b5eb-c331d3bb1b93', N'5 baldes', N'Mantequilla')
GO
INSERT [dbo].[TblUsuario3] ([IdUsuario], [IdRol], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Correo], [Estado], [Sexo], [Username], [Contraseña], [FechaCreacion]) VALUES (N'a9f6b7ca-8190-4917-80d1-95b87787e599', N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'juan', N'shg', N'stjuhujg', N'suhg', N'user@example.com', 1, N'strihgg', N'strhg', N'stjhghgg', CAST(N'2024-05-29T01:10:39.000' AS DateTime))
GO
ALTER TABLE [db_Catalogo].[TblProveedor] ADD  CONSTRAINT [DF__TblProvee__Fecha__5BE2A6F2]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [db_Transac].[TblCompra] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [db_Transac].[TblDetalleVenta] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [db_Transac].[TblVenta] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[TblCategoria] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[TblCliente] ADD  CONSTRAINT [DF__TblClient__Fecha__619B8048]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[TblPermiso] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[TblRol] ADD  CONSTRAINT [DF__TblRol__FechaCre__6383C8BA]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [db_Transac].[TblCompraDetalle]  WITH CHECK ADD  CONSTRAINT [FK_TblCompraDetalle_TblCompra] FOREIGN KEY([IdCompra])
REFERENCES [db_Transac].[TblCompra] ([IdCompra])
GO
ALTER TABLE [db_Transac].[TblCompraDetalle] CHECK CONSTRAINT [FK_TblCompraDetalle_TblCompra]
GO
ALTER TABLE [db_Transac].[TblDetalleVenta]  WITH CHECK ADD FOREIGN KEY([IdVenta])
REFERENCES [db_Transac].[TblVenta] ([IdVenta])
GO
/****** Object:  StoredProcedure [dbo].[ObtenerProductosConCategorias2]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerProductosConCategorias2]
AS
BEGIN
    SELECT 
        p.IdProducto, 
        p.NombreProducto, 
        c.Descripcion AS NombreCategoria, 
        c.Estado, 
        c.FechaCreacion
    FROM 
        TblProducto2 p
    INNER JOIN 
        TblCategoria2 c ON p.IdCategoria = c.IdCategoria;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizarCategoriaConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creamos el nuevo procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_ActualizarCategoriaConGuid]
    @IdCategoria UNIQUEIDENTIFIER,
    @Descripcion VARCHAR(100),
    @Estado BIT,
    @FechaCreacion DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    -- Actualizamos el registro correspondiente en la base de datos
    UPDATE TblCategoria2
    SET Descripcion = @Descripcion,
        Estado = @Estado,
        FechaCreacion = @FechaCreacion
    WHERE IdCategoria = @IdCategoria;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AgregarCategoria]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AgregarCategoria](
@Descripcion varchar(100),
@Estado bit,
@FechaCreacion datetime)
as
begin
insert into TblCategoria(Descripcion,Estado,FechaCreacion) values 
(@Descripcion,@Estado,@FechaCreacion)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_agregarDetCompra]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_agregarDetCompra](
@IdCompra int,
@IdDetalleProducto int,
@PrecioCompra decimal(10,2),
@FechaCreacion datetime,
@NombreCompra varchar(50)
)
as begin
insert into db_Transac.TblCompraDetalle(IdCompra,IdDetalleProd,PrecioCompra,FechaCreacion,NombreCompra)
values (@IdCompra,@IdDetalleProducto,@PrecioCompra,@FechaCreacion,@NombreCompra)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_agregarDetVenta]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_agregarDetVenta](
@IdVenta int,
@IdProducto int,
@precioventa decimal (10,2),
@Cantidad int,
@total int,
@fechacreacion datetime
)
as begin
insert into db_Transac.TblDetalleVenta (IdVenta,IdProducto,PrecioVenta,Cantidad,Total,FechaCreacion)
values (@IdVenta,@IdProducto,@precioventa,@Cantidad,@total,@fechacreacion)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AgregarMedida]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AgregarMedida] (
@TipoMedida varchar(50),
@Abreviatura varchar(50))
as begin
insert into TblUnidadMedida ( TipoMedida, Abreviatura )
values ( @TipoMedida, @Abreviatura)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AgregarProdDetalle]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AgregarProdDetalle] (
@IdProducto int,
@IdMedida int,
@Descripcion varchar(50),
@Estado bit,
@Marca varchar(50))
as begin
insert into db_Catalogo.TblProductDetalle ( IdProducto, IdMedida,Descripcion,Estado, Marca)
values ( @IdProducto, @IdMedida, @Descripcion, @Estado, @Marca)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_agregarProducto]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_agregarProducto](
@NombreProducto varchar(50),
@IdCategoria UNIQUEIDENTIFIER
)
as begin
insert into db_Catalogo.TblProducto (NombreProducto,IdCategoria) values (@NombreProducto, @IdCategoria)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AgregarProveedor]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Proc para agregar registrosen la tabla Proveedores
create procedure [dbo].[sp_AgregarProveedor](
@NombreCompañia varchar(50),
@Correo varchar(50),
@Telefono varchar(50),
@Estado bit,
@FechaCreacion datetime)
as
begin
insert into TblProveedor (NombreCompañia,Correo,Telefono,Estado,FechaCreacion) values 
(@NombreCompañia,@Correo,@Telefono,@Estado,@FechaCreacion)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AgregarUsuario]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AgregarUsuario](
@PrimerNombre varchar(50),
@SegundoNombre varchar(50),
@PrimerApellido varchar(50),
@SegundoApellido varchar(50),
@Correo varchar(50),
@Estado bit,
@Sexo varchar (50),
@Username varchar (50),
@Contraseña varchar(50),
@FechaCreacion datetime)
as
begin
insert into db_Catalogo.TblUsuario(PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido,Correo,Estado,Sexo,Username,Contraseña,FechaCreacion) values
(@PrimerNombre,@SegundoNombre,@PrimerApellido,@SegundoApellido,@Correo,@Estado,@Sexo,@Username,@Contraseña,@FechaCreacion)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AgregarVenta]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AgregarVenta](
@IdUsuario int,
@IdCliente int,
@MontoPago decimal,
@MontoCambio decimal,
@MontoTotal decimal,
@FechaCreacion datetime)
as
begin
insert into [db_Transac].[TblVenta] (IdUsuario,IdCliente,MontoPago,MontoCambio,MontoTotal,FechaCreacion) Values (@IdUsuario,@IdCliente,@MontoPago,@MontoCambio
, @MontoTotal,@FechaCreacion)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_EditarCategoria4]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_EditarCategoria4] (
@IdCategoria int,
@Descripcion varchar(100),
@Estado bit,
@Resultado bit output
)as
begin 
SET @Resultado=1
IF NOT EXISTS (SELECT*FROM TblCategoria WHERE Descripcion=@Descripcion and
IdCategoria=@IdCategoria)
update TblCategoria set
Descripcion=@Descripcion,
Estado=@Estado
where IdCategoria=@IdCategoria

ELSE
SET @Resultado=0
end
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarCategoria]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Proc almacenado para eliminar registros de la tabla Categoria
create procedure [dbo].[sp_EliminarCategoria](
@IdCategoria int
)
as
begin
delete from TblCategoria where IdCategoria = @IdCategoria
end
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarCategoria1]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_EliminarCategoria1] 
@IdCategoria int,
@Resultado bit output
as
begin 
SET @Resultado=1

SET NOCOUNT ON;

IF EXISTS (select IdCategoria from TblCategoria where IdCategoria=@IdCategoria)
delete from TblCategoria where IdCategoria= @IdCategoria
ELSE
SET @Resultado=0
end
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarCategoriaConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Creamos el nuevo procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_EliminarCategoriaConGuid]
    @IdCategoria UNIQUEIDENTIFIER
AS
BEGIN
    SET NOCOUNT ON;

    -- Eliminamos el registro correspondiente en la base de datos
    DELETE FROM TblCategoria2
    WHERE IdCategoria = @IdCategoria;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarProveedor]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Proc para eliminar registros e la tabla Producto
create procedure [dbo].[sp_EliminarProveedor](
@IdProveedor int
)
as
begin
delete from TblProveedor where IdProveedor = @IdProveedor
end
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarVenta]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Proc para eliminar registros e la tabla Producto
create procedure [dbo].[sp_EliminarVenta](
@IdVenta int
)
as
begin
delete from db_Catalogo.TblVenta where IdVenta = @IdVenta
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarCategoriaConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Ahora, creamos el procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_ModificarCategoriaConGuid]
    @IdCategoria UNIQUEIDENTIFIER,
    @Descripcion VARCHAR(100),
    @Estado BIT,
    @FechaCreacion DATETIME,
    @Resultado BIT OUTPUT
AS
BEGIN
  
    SET @Resultado = 1
    -- Verificamos si existe otra categoría con la misma descripción pero diferente ID
    IF NOT EXISTS (SELECT * FROM TblCategoria2  WHERE Descripcion = @Descripcion and 
       IdCategoria != @IdCategoria)
 
        -- Si no existe, actualizamos la categoría
        UPDATE TblCategoria2 SET
		Descripcion = @Descripcion,
        Estado = @Estado,
            FechaCreacion = @FechaCreacion
        WHERE IdCategoria = @IdCategoria
    
    ELSE
    
        -- Si existe, establecemos @Resultado en 0 para indicar fallo
        SET @Resultado = 0
    END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarClienteConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarCategoriaConGuid]    Script Date: 16/04/2024 05:24:29 p. m. ******/


-- Ahora, creamos el procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_ModificarClienteConGuid]
     @IdCliente UNIQUEIDENTIFIER,
    @PrimerNombre VARCHAR(50),
	@SegundoNombre VARCHAR(50),
    @PrimerApellido VARCHAR(50),
	@SegundoApellido VARCHAR(50),
	@Correo VARCHAR(50),
	@Telefono VARCHAR(50),
	@Estado BIT,
    @FechaCreacion DATETIME,
    @Resultado BIT OUTPUT
AS
BEGIN
  
    SET @Resultado = 1
    -- Verificamos si existe otra categoría con la misma descripción pero diferente ID
    IF NOT EXISTS (SELECT * FROM TblCliente  WHERE PrimerNombre = @PrimerNombre and 
       IdCliente != @IdCliente)
 
        -- Si no existe, actualizamos la categoría
        UPDATE TblCliente SET
		PrimerNombre = @PrimerNombre,
		SegundoNombre = @SegundoNombre,
		PrimerApellido = @PrimerApellido,
		SegundoApellido = @SegundoApellido,
		Correo = @Correo,
		Telefono = @Telefono,
        Estado = @Estado,
            FechaCreacion = @FechaCreacion
        WHERE IdCliente = @IdCliente
    
    ELSE
    
        -- Si existe, establecemos @Resultado en 0 para indicar fallo
        SET @Resultado = 0
    END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarMedidaConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarRolConGuid]    Script Date: 16/04/2024 04:39:18 p. m. ******/

/****** Object:  StoredProcedure [dbo].[sp_ModificarCategoriaConGuid]    Script Date: 14/04/2024 05:18:36 p. m. ******/


-- Ahora, creamos el procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_ModificarMedidaConGuid]
    @IdMedida UNIQUEIDENTIFIER,
    @TipoMedida VARCHAR(50),
    @Abreviatura VARCHAR(50),
    @Resultado BIT OUTPUT
AS
BEGIN
  
    SET @Resultado = 1
    -- Verificamos si existe otra categoría con la misma descripción pero diferente ID
    IF NOT EXISTS (SELECT * FROM TblUnidadMedida  WHERE TipoMedida = @TipoMedida and 
       IdMedida != @IdMedida)
 
        -- Si no existe, actualizamos la categoría
        UPDATE TblUnidadMedida SET
		TipoMedida = @TipoMedida,
            Abreviatura = @Abreviatura
        WHERE IdMedida = @IdMedida
    
    ELSE
    
        -- Si existe, establecemos @Resultado en 0 para indicar fallo
        SET @Resultado = 0
    END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarProductoConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarCategoriaConGuid]    Script Date: 02/04/2024 06:19:15 p. m. ******/



-- Ahora, creamos el procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_ModificarProductoConGuid]
    @IdProducto UNIQUEIDENTIFIER,
    @NombreProducto VARCHAR(50),
    @IdCategoria UNIQUEIDENTIFIER,
    @Resultado BIT OUTPUT
AS
BEGIN
  
    SET @Resultado = 1
    -- Verificamos si existe otra categoría con la misma descripción pero diferente ID
    IF NOT EXISTS (SELECT * FROM [db_Catalogo].[TblProducto]  WHERE NombreProducto = @NombreProducto and 
       IdProducto != @IdProducto)
 
        -- Si no existe, actualizamos la categoría
        UPDATE [db_Catalogo].[TblProducto] SET
		NombreProducto = @NombreProducto,
		IdCategoria = @IdCategoria
        WHERE IdProducto = @IdProducto
    
    ELSE
    
        -- Si existe, establecemos @Resultado en 0 para indicar fallo
        SET @Resultado = 0
    END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarProveedorConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Ahora, creamos el procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_ModificarProveedorConGuid]
    @IdProveedor UNIQUEIDENTIFIER,
    @NombreCompañia VARCHAR(50),
	@Correo VARCHAR(50),
	@Telefono VARCHAR(50),
    @Estado BIT,
    @FechaCreacion DATETIME,
    @Resultado BIT OUTPUT
AS
BEGIN
  
    SET @Resultado = 1
    -- Verificamos si existe otra categoría con la misma descripción pero diferente ID
    IF NOT EXISTS (SELECT * FROM [db_Catalogo].[TblProveedor]  WHERE NombreCompañia = @NombreCompañia and 
       IdProveedor != @IdProveedor)
 
        -- Si no existe, actualizamos la categoría
        UPDATE [db_Catalogo].[TblProveedor] SET
		NombreCompañia = @NombreCompañia,
		Correo = @Correo,
		Telefono = @Telefono,
        Estado = @Estado,
        FechaCreacion = @FechaCreacion
        WHERE IdProveedor = @IdProveedor
    
    ELSE
    
        -- Si existe, establecemos @Resultado en 0 para indicar fallo
        SET @Resultado = 0
    END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarRolConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarCategoriaConGuid]    Script Date: 14/04/2024 05:18:36 p. m. ******/


-- Ahora, creamos el procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_ModificarRolConGuid]
    @IdRol UNIQUEIDENTIFIER,
    @Descripcion VARCHAR(100),
    @FechaCreacion DATETIME,
    @Resultado BIT OUTPUT
AS
BEGIN
  
    SET @Resultado = 1
    -- Verificamos si existe otra categoría con la misma descripción pero diferente ID
    IF NOT EXISTS (SELECT * FROM TblRol  WHERE Descripcion = @Descripcion and 
       IdRol != @IdRol)
 
        -- Si no existe, actualizamos la categoría
        UPDATE TblRol SET
		Descripcion = @Descripcion,
            FechaCreacion = @FechaCreacion
        WHERE IdRol = @IdRol
    
    ELSE
    
        -- Si existe, establecemos @Resultado en 0 para indicar fallo
        SET @Resultado = 0
    END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModifiUsuariosConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Ahora, creamos el procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_ModifiUsuariosConGuid]
   @IdUsuario UNIQUEIDENTIFIER,
    @PrimerNombre VARCHAR(50),
	@SegundoNombre VARCHAR(50),
    @PrimerApellido VARCHAR(50),
	@SegundoApellido VARCHAR(50),
	@Correo VARCHAR(50),
    @IdRol UNIQUEIDENTIFIER,
	@Estado BIT,
	@Sexo VARCHAR(50),
	@Username VARCHAR(50),
	@Contraseña VARCHAR(50),
    @FechaCreacion DATETIME,
    @Resultado BIT OUTPUT
AS
BEGIN
  
    SET @Resultado = 1
    -- Verificamos si existe otra categoría con la misma descripción pero diferente ID
    IF NOT EXISTS (SELECT * FROM [db_Catalogo].[TblUsuario]  WHERE @PrimerNombre = @PrimerNombre and 
       IdUsuario != @IdUsuario)
 
        -- Si no existe, actualizamos la categoría
        UPDATE [db_Catalogo].[TblUsuario] SET
		PrimerNombre = @PrimerNombre,
		SegundoNombre=@SegundoNombre,
		PrimerApellido= @PrimerApellido,
		SegundoApellido = @SegundoApellido,
		Correo = @Correo,
		IdRol = @IdRol,
        Estado = @Estado,
		Sexo = @Sexo,
		Username = @Username,
		Contraseña = @Contraseña,
        FechaCreacion = @FechaCreacion
        WHERE IdUsuario = @IdUsuario
    
    ELSE
    
        -- Si existe, establecemos @Resultado en 0 para indicar fallo
        SET @Resultado = 0
    END
GO
/****** Object:  StoredProcedure [dbo].[sp_MostrarUsuario]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_MostrarUsuario]
as
begin
select * from TblUsuario2
end
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarCategoria2]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_RegistrarCategoria2] (
@Descripcion varchar(100),
@Estado bit,
@FechaCreacion datetime,
@Resultado bit output
)as
begin 
SET @Resultado=1
IF NOT EXISTS (SELECT*FROM TblCategoria WHERE Descripcion=@Descripcion)

insert into TblCategoria(Descripcion, Estado, FechaCreacion) values (@Descripcion,@Estado,@FechaCreacion)
ELSE
SET @Resultado=0
end
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarCategoriaConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creamos el nuevo procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_RegistrarCategoriaConGuid]
    @IdCategoria UNIQUEIDENTIFIER,
    @Descripcion VARCHAR(100),
    @Estado BIT,
    @FechaCreacion DATETIME,
    @Resultado BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Inicializamos @Resultado a 1 (exitoso) por defecto
    SET @Resultado = 1;

    -- Verificamos si existe una categoría con la misma descripción
    IF NOT EXISTS (SELECT * FROM TblCategoria2 WHERE Descripcion = @Descripcion)
    BEGIN
        -- Insertamos la nueva categoría con el GUID proporcionado
        INSERT INTO TblCategoria2 (IdCategoria, Descripcion, Estado, FechaCreacion)
        VALUES (@IdCategoria, @Descripcion, @Estado, @FechaCreacion);
    END
    ELSE
    BEGIN
        -- Si la categoría ya existe, establecemos @Resultado a 0
        SET @Resultado = 0;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarClienteConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarCategoriaConGuid]    Script Date: 16/04/2024 05:15:32 p. m. ******/


-- Creamos el nuevo procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_RegistrarClienteConGuid]
    @IdCliente UNIQUEIDENTIFIER,
    @PrimerNombre VARCHAR(50),
	@SegundoNombre VARCHAR(50),
    @PrimerApellido VARCHAR(50),
	@SegundoApellido VARCHAR(50),
	@Correo VARCHAR(50),
	@Telefono VARCHAR(50),
	@Estado BIT,
    @FechaCreacion DATETIME,
    @Resultado BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Inicializamos @Resultado a 1 (exitoso) por defecto
    SET @Resultado = 1;

    -- Verificamos si existe una categoría con la misma descripción
    IF NOT EXISTS (SELECT * FROM TblCliente WHERE PrimerNombre = @PrimerNombre)
    BEGIN
        -- Insertamos la nueva categoría con el GUID proporcionado
        INSERT INTO TblCliente (IdCliente, PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido,Correo,Telefono, Estado, FechaCreacion)
        VALUES (@IdCliente, @PrimerNombre,@SegundoNombre,@PrimerApellido,@SegundoApellido,@Correo,@Telefono, @Estado, @FechaCreacion);
    END
    ELSE
    BEGIN
        -- Si la categoría ya existe, establecemos @Resultado a 0
        SET @Resultado = 0;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarMedidaConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarRolConGuid]    Script Date: 16/04/2024 04:35:53 p. m. ******/

/****** Object:  StoredProcedure [dbo].[sp_RegistrarCategoriaConGuid]    Script Date: 14/04/2024 05:14:47 p. m. ******/

-- Creamos el nuevo procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_RegistrarMedidaConGuid]
    @IdMedida UNIQUEIDENTIFIER,
    @TipoMedida VARCHAR(50),
    @Abreviatura VARCHAR(50),
    @Resultado BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Inicializamos @Resultado a 1 (exitoso) por defecto
    SET @Resultado = 1;

    -- Verificamos si existe una categoría con la misma descripción
    IF NOT EXISTS (SELECT * FROM TblUnidadMedida WHERE TipoMedida = @TipoMedida)
    BEGIN
        -- Insertamos la nueva categoría con el GUID proporcionado
        INSERT INTO TblUnidadMedida(IdMedida, TipoMedida, Abreviatura)
        VALUES (@IdMedida, @TipoMedida, @Abreviatura);
    END
    ELSE
    BEGIN
        -- Si la categoría ya existe, establecemos @Resultado a 0
        SET @Resultado = 0;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarProductoConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarCategoriaConGuid]    Script Date: 02/04/2024 06:12:36 p. m. ******/


-- Creamos el nuevo procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_RegistrarProductoConGuid]
    @IdProducto UNIQUEIDENTIFIER,
    @NombreProducto VARCHAR(50),
    @IdCategoria UNIQUEIDENTIFIER ,
    @Resultado BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Inicializamos @Resultado a 1 (exitoso) por defecto
    SET @Resultado = 1;

    -- Verificamos si existe una categoría con la misma descripción
    IF NOT EXISTS (SELECT * FROM [db_Catalogo].[TblProducto] WHERE NombreProducto = @NombreProducto)
    BEGIN
        -- Insertamos la nueva categoría con el GUID proporcionado
        INSERT INTO [db_Catalogo].[TblProducto] (IdProducto, NombreProducto, IdCategoria)
        VALUES (@IdProducto, @NombreProducto, @IdCategoria);
    END
    ELSE
    BEGIN
        -- Si la categoría ya existe, establecemos @Resultado a 0
        SET @Resultado = 0;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarProveedorConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarCategoriaConGuid]    Script Date: 02/04/2024 06:44:12 p. m. ******/


-- Creamos el nuevo procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_RegistrarProveedorConGuid]
    @IdProveedor UNIQUEIDENTIFIER,
    @NombreCompañia VARCHAR(50),
	@Correo VARCHAR (50),
	@Telefono VARCHAR(50),
    @Estado BIT,
    @FechaCreacion DATETIME,
    @Resultado BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Inicializamos @Resultado a 1 (exitoso) por defecto
    SET @Resultado = 1;

    -- Verificamos si existe una categoría con la misma descripción
    IF NOT EXISTS (SELECT * FROM [db_Catalogo].[TblProveedor] WHERE NombreCompañia = @NombreCompañia)
    BEGIN
        -- Insertamos la nueva categoría con el GUID proporcionado
        INSERT INTO [db_Catalogo].[TblProveedor] (IdProveedor, NombreCompañia, Correo, Telefono, Estado, FechaCreacion)
        VALUES (@IdProveedor, @NombreCompañia, @Correo, @Telefono, @Estado, @FechaCreacion);
    END
    ELSE
    BEGIN
        -- Si la categoría ya existe, establecemos @Resultado a 0
        SET @Resultado = 0;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarRolConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarCategoriaConGuid]    Script Date: 14/04/2024 05:14:47 p. m. ******/

-- Creamos el nuevo procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_RegistrarRolConGuid]
    @IdRol UNIQUEIDENTIFIER,
    @Descripcion VARCHAR(50),
    @FechaCreacion DATETIME,
    @Resultado BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Inicializamos @Resultado a 1 (exitoso) por defecto
    SET @Resultado = 1;

    -- Verificamos si existe una categoría con la misma descripción
    IF NOT EXISTS (SELECT * FROM TblRol WHERE Descripcion = @Descripcion)
    BEGIN
        -- Insertamos la nueva categoría con el GUID proporcionado
        INSERT INTO TblRol(IdRol, Descripcion, FechaCreacion)
        VALUES (@IdRol, @Descripcion, @FechaCreacion);
    END
    ELSE
    BEGIN
        -- Si la categoría ya existe, establecemos @Resultado a 0
        SET @Resultado = 0;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarUsuariosConGuid]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Creamos el nuevo procedimiento almacenado
CREATE PROCEDURE [dbo].[sp_RegistrarUsuariosConGuid]
    @IdUsuario UNIQUEIDENTIFIER,
    @PrimerNombre VARCHAR(50),
	@SegundoNombre VARCHAR(50),
    @PrimerApellido VARCHAR(50),
	@SegundoApellido VARCHAR(50),
	@Correo VARCHAR(50),
    @IdRol UNIQUEIDENTIFIER,
	@Estado BIT,
	@Sexo VARCHAR(50),
	@Username VARCHAR(50),
	@Contraseña VARCHAR(50),
    @FechaCreacion DATETIME,
    @Resultado BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Inicializamos @Resultado a 1 (exitoso) por defecto
    SET @Resultado = 1;

    -- Verificamos si existe una categoría con la misma descripción
    IF NOT EXISTS (SELECT * FROM [db_Catalogo].[TblUsuario] WHERE Username = @Username)
    BEGIN
        -- Insertamos la nueva categoría con el GUID proporcionado
        INSERT INTO [db_Catalogo].[TblUsuario] (IdUsuario, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Correo,IdRol, Estado, Sexo, Username, Contraseña, FechaCreacion)
        VALUES (@IdUsuario, @PrimerNombre, @SegundoNombre, @PrimerApellido, @SegundoApellido, @Correo, @IdRol, @Estado, @Sexo, @Username, @Contraseña, @FechaCreacion);
    END
    ELSE
    BEGIN
        -- Si la categoría ya existe, establecemos @Resultado a 0
        SET @Resultado = 0;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarGuidCat]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEliminarGuidCat]
@IdCategoria UNIQUEIDENTIFIER,
@Resultado bit output 

AS
BEGIN
SET @Resultado = 1

SET NOCOUNT ON;

IF EXISTS (select IdCategoria from TblCategoria2 where IdCategoria=@IdCategoria)

delete from TblCategoria2 where IdCategoria = @IdCategoria

	ELSE 
	SET @Resultado =0
	END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarGuidCliente]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[spEliminarGuidRol]    Script Date: 16/04/2024 05:29:12 p. m. ******/

/****** Object:  StoredProcedure [dbo].[spEliminarGuidCat]    Script Date: 14/04/2024 05:20:45 p. m. ******/


CREATE PROCEDURE [dbo].[spEliminarGuidCliente]
@IdCliente UNIQUEIDENTIFIER,
@Resultado bit output 

AS
BEGIN
SET @Resultado = 1

SET NOCOUNT ON;

IF EXISTS (select IdCliente from TblCliente where IdCliente=@IdCliente)

delete from TblCliente where IdCliente = @IdCliente

	ELSE 
	SET @Resultado =0
	END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarGuidMedida]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[spEliminarGuidRol]    Script Date: 16/04/2024 04:43:05 p. m. ******/

/****** Object:  StoredProcedure [dbo].[spEliminarGuidCat]    Script Date: 14/04/2024 05:20:45 p. m. ******/


CREATE PROCEDURE [dbo].[spEliminarGuidMedida]
@IdMedida UNIQUEIDENTIFIER,
@Resultado bit output 

AS
BEGIN
SET @Resultado = 1

SET NOCOUNT ON;

IF EXISTS (select IdMedida from TblUnidadMedida where IdMedida=@IdMedida)

delete from TblUnidadMedida where IdMedida = @IdMedida

	ELSE 
	SET @Resultado =0
	END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarGuidProducto]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEliminarGuidProducto]
@IdProducto UNIQUEIDENTIFIER,
@Resultado bit output 

AS
BEGIN
SET @Resultado = 1

SET NOCOUNT ON;

IF EXISTS (select IdProducto from [db_Catalogo].[TblProducto] where IdProducto=@IdProducto)

delete from [db_Catalogo].[TblProducto] where IdProducto = @IdProducto

	ELSE 
	SET @Resultado =0
	END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarGuidProveedor]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEliminarGuidProveedor]
@IdProveedor UNIQUEIDENTIFIER,
@Resultado bit output 

AS
BEGIN
SET @Resultado = 1

SET NOCOUNT ON;

IF EXISTS (select IdProveedor from [db_Catalogo].[TblProveedor] where IdProveedor=@IdProveedor)

delete from [db_Catalogo].[TblProveedor] where IdProveedor = @IdProveedor

	ELSE 
	SET @Resultado =0
	END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarGuidRol]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[spEliminarGuidCat]    Script Date: 14/04/2024 05:20:45 p. m. ******/


CREATE PROCEDURE [dbo].[spEliminarGuidRol]
@IdRol UNIQUEIDENTIFIER,
@Resultado bit output 

AS
BEGIN
SET @Resultado = 1

SET NOCOUNT ON;

IF EXISTS (select IdRol from TblRol where IdRol=@IdRol)

delete from TblRol where IdRol = @IdRol

	ELSE 
	SET @Resultado =0
	END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarGuidUsuario]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEliminarGuidUsuario]
@IdUsuario UNIQUEIDENTIFIER,
@Resultado bit output 

AS
BEGIN
SET @Resultado = 1

SET NOCOUNT ON;

IF EXISTS (select @IdUsuario from [db_Catalogo].[TblUsuario] where IdUsuario=@IdUsuario)

delete from [db_Catalogo].[TblUsuario] where IdUsuario = @IdUsuario

	ELSE 
	SET @Resultado =0
	END
GO
/****** Object:  StoredProcedure [dbo].[Us_ProducObj]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Us_ProducObj]
as 
begin
select TblProducto2.IdProducto,TblProducto2.NombreProducto,TblProducto2.Idcategoria,TblCategoria2.Descripcion
 from TblProducto2
inner join TblCategoria2 on TblCategoria2.IdCategoria = TblProducto2.IdCategoria

end

--exec [dbo].[Us_ProducObj]
GO
/****** Object:  StoredProcedure [dbo].[USP_AñadirDtProducto]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[USP_AñadirProducto]    Script Date: 17/04/2024 07:12:01 p. m. ******/

---agregar
create procedure [dbo].[USP_AñadirDtProducto](
@IdDetalleProd UNIQUEIDENTIFIER,
@IdProducto UNIQUEIDENTIFIER,
@IdMedida UNIQUEIDENTIFIER,
@Descripcion varchar(50),
@Estado bit,
@Marca varchar(50),
@Resultado bit output)
as begin
set @Resultado = 1
IF NOT EXISTS (select * from TblDetalleProd2 where RTRIM(LTRIM( Descripcion)) = RTRIM(LTRIM(@Descripcion)))
insert into TblDetalleProd2(IdDetalleProd,IdProducto,IdMedida,Descripcion,Estado,Marca) Values (@IdDetalleProd,@IdProducto,@IdMedida,@Descripcion,@Estado,@Marca)
else 
set @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[USP_AñadirInventario]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[USP_AñadirDtProducto]    Script Date: 17/04/2024 09:20:05 p. m. ******/

/****** Object:  StoredProcedure [dbo].[USP_AñadirProducto]    Script Date: 17/04/2024 07:12:01 p. m. ******/

---agregar
create procedure [dbo].[USP_AñadirInventario](
@IdInventario UNIQUEIDENTIFIER,
@IdDetalleprod UNIQUEIDENTIFIER,
@IdProveedor UNIQUEIDENTIFIER,
@Existencia int,
@Lote varchar(50),
@PrecioVenta decimal,
@PrecioCompra decimal,
@FechaCompra datetime,
@FechaVencimiento datetime,
@Resultado bit output)
as begin
set @Resultado = 1
IF NOT EXISTS (select * from TblInventariado where RTRIM(LTRIM( Lote)) = RTRIM(LTRIM(@Lote)))
insert into TblInventariado(IdInventario,IdDetalleProd,IdProveedor,Existencia,Lote,PrecioVenta,PrecioCompra,FechaCompra,FechaVencimiento) Values (@IdInventario,@IdDetalleProd,@IdProveedor,@Existencia,@Lote,@PrecioVenta,@PrecioCompra,@FechaCompra,@FechaVencimiento)
else 
set @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[USP_AñadirProducto]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---agregar
CREATE proc [dbo].[USP_AñadirProducto](
@IdProducto UNIQUEIDENTIFIER,
@NombreProducto varchar(50),
@IdCategoria UNIQUEIDENTIFIER,
@Resultado bit output)
as begin
set @Resultado = 1
IF NOT EXISTS (select * from TblProducto2 where RTRIM(LTRIM( NombreProducto)) = RTRIM(LTRIM(@NombreProducto)))
insert into TblProducto2(IdProducto,NombreProducto, IdCategoria) Values (@IdProducto,@NombreProducto,@IdCategoria)
else 
set @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[USP_AñadirProducto2024]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--- Crear el nuevo procedimiento
CREATE PROCEDURE [dbo].[USP_AñadirProducto2024]
    @IdProducto UNIQUEIDENTIFIER,  -- Nuevo parámetro para ID de producto generado por C#
    @Nombre VARCHAR(50),
    @IdCat UNIQUEIDENTIFIER,
    @Resultado BIT OUTPUT
AS
BEGIN
    SET @Resultado = 1

    -- Verificar si ya existe un producto con el mismo ID o nombre
    IF NOT EXISTS (
        SELECT * FROM TblProducto2
        WHERE IdProducto = @IdProducto
        OR RTRIM(LTRIM(NombreProducto)) = RTRIM(LTRIM(@Nombre))
    )
    BEGIN
        -- Insertar el nuevo producto con ID de producto y categoría ambos como UNIQUEIDENTIFIER
        INSERT INTO TblProducto2 (IdProducto, NombreProducto, IdCategoria)
        VALUES (@IdProducto, @Nombre, @IdCat)
    END
    ELSE
    BEGIN
        -- Si el producto ya existe, no se añade y se retorna 0
        SET @Resultado = 0
    END
END
GO
/****** Object:  StoredProcedure [dbo].[USP_AñadirUsuario]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[USP_AñadirProducto]    Script Date: 14/04/2024 05:52:21 p. m. ******/

---agregar
CREATE proc [dbo].[USP_AñadirUsuario](
@IdUsuario UNIQUEIDENTIFIER,
@IdRol UNIQUEIDENTIFIER,
@PrimerNombre varchar(50),
@SegundoNombre varchar(50),
@PrimerApellido varchar(50),
@SegundoApellido varchar(50),
@Correo varchar(50),
@Estado BIT,
@Sexo varchar(50),
@Username varchar(50),
@Contraseña varchar(50),
@FechaCreacion DATETIME,
@Resultado bit output)
as begin
set @Resultado = 1
IF NOT EXISTS (select * from TblUsuario3 where RTRIM(LTRIM( PrimerNombre)) = RTRIM(LTRIM(@PrimerNombre)))
insert into TblUsuario3(IdUsuario,IdRol,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido,Correo,Estado,Sexo,Username,Contraseña,FechaCreacion) Values (@IdUsuario,@IdRol,@PrimerNombre,@SegundoNombre,@PrimerApellido,@SegundoApellido,@Correo,@Estado,@Sexo,@Username,@Contraseña,@FechaCreacion)
else 
set @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[USP_DtProductoActualizar]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[USP_ProductoActualizar]    Script Date: 17/04/2024 07:16:35 p. m. ******/

create proc [dbo].[USP_DtProductoActualizar](
@IdDetalleProd UNIQUEIDENTIFIER,
@IdProducto UNIQUEIDENTIFIER,
@IdMedida UNIQUEIDENTIFIER,
@Descripcion varchar(50),
@Estado bit,
@Marca varchar(50),
@Resultado bit output)
as begin
set @Resultado = 1
IF NOT EXISTS (select*from TblDetalleProd2 where RTRIM(LTRIM( Descripcion)) = RTRIM(LTRIM(@Descripcion)) and 
IdDetalleProd != @IdDetalleProd)
update TblDetalleProd2 set
IdProducto = @IdProducto,
IdMedida = @IdMedida,
Descripcion=@Descripcion,
Estado=@Estado,
Marca=@Marca
where IdDetalleProd = @IdDetalleProd
else 
set @Resultado = 0
end

GO
/****** Object:  StoredProcedure [dbo].[USP_DtProductoEliminar]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[USP_ProductoEliminar]    Script Date: 17/04/2024 07:19:52 p. m. ******/

create proc [dbo].[USP_DtProductoEliminar](
@IdDetalleProd UNIQUEIDENTIFIER,
@Resultado bit output)
as begin
set @Resultado = 1
IF EXISTS ( select  * from TblDetalleProd2 where IdDetalleProd = @IdDetalleProd)
	delete from TblDetalleProd2 where IdDetalleProd = @IdDetalleProd
else 
set @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[USP_DtProductosObtener]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[USP_ProductosObtener]    Script Date: 17/04/2024 07:07:18 p. m. ******/


CREATE PROCEDURE [dbo].[USP_DtProductosObtener]
as
begin
select TblDetalleProd2.IdDetalleProd,TblDetalleProd2.IdProducto,TblDetalleProd2.IdMedida,TblDetalleProd2.Descripcion,TblDetalleProd2.Estado,TblDetalleProd2.Marca,  [dbo].[TblProducto2].NombreProducto from TblDetalleProd2
inner join [dbo].[TblProducto2] on [dbo].[TblProducto2].IdProducto = TblDetalleProd2.IdProducto
end


--exec [dbo].[USP_DtProductosObtener]
GO
/****** Object:  StoredProcedure [dbo].[USP_InventarioActualizar]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[USP_DtProductoActualizar]    Script Date: 17/04/2024 09:27:35 p. m. ******/

/****** Object:  StoredProcedure [dbo].[USP_ProductoActualizar]    Script Date: 17/04/2024 07:16:35 p. m. ******/

create proc [dbo].[USP_InventarioActualizar](
@IdInventario UNIQUEIDENTIFIER,
@IdDetalleprod UNIQUEIDENTIFIER,
@IdProveedor UNIQUEIDENTIFIER,
@Existencia int,
@Lote varchar(50),
@PrecioVenta decimal,
@PrecioCompra decimal,
@FechaCompra datetime,
@FechaVencimiento datetime,
@Resultado bit output)
as begin
set @Resultado = 1
IF NOT EXISTS (select*from TblInventariado where RTRIM(LTRIM( Lote)) = RTRIM(LTRIM(@Lote)) and 
IdInventario != @IdInventario)
update TblInventariado set
IdInventario = @IdInventario,
IdDetalleProd = @IdDetalleprod,
IdProveedor=@IdProveedor,
Existencia=@Existencia,
Lote=@Lote,
PrecioVenta=@PrecioVenta,
PrecioCompra=@PrecioCompra,
FechaCompra=@PrecioCompra,
FechaVencimiento=@FechaVencimiento
where IdInventario = @IdInventario
else 
set @Resultado = 0
end

GO
/****** Object:  StoredProcedure [dbo].[USP_InventarioEliminar]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[USP_DtProductoEliminar]    Script Date: 17/04/2024 09:38:44 p. m. ******/

/****** Object:  StoredProcedure [dbo].[USP_ProductoEliminar]    Script Date: 17/04/2024 07:19:52 p. m. ******/

create proc [dbo].[USP_InventarioEliminar](
@IdInventario UNIQUEIDENTIFIER,
@Resultado bit output)
as begin
set @Resultado = 1
IF EXISTS ( select  * from TblInventariado where IdInventario = @IdInventario)
	delete from TblInventariado where IdInventario = @IdInventario
else 
set @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[USP_InventarioObtener]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[USP_DtProductosObtener]    Script Date: 17/04/2024 09:14:16 p. m. ******/

/****** Object:  StoredProcedure [dbo].[USP_ProductosObtener]    Script Date: 17/04/2024 07:07:18 p. m. ******/


CREATE PROCEDURE [dbo].[USP_InventarioObtener]
as
begin
select TblInventariado.IdInventario,TblInventariado.IdDetalleProd,TblInventariado.IdProveedor,TblInventariado.Existencia,TblInventariado.Lote,TblInventariado.PrecioVenta,TblInventariado.PrecioCompra,TblInventariado.FechaCompra,TblInventariado.FechaVencimiento,  [dbo].[TblDetalleProd2].Descripcion from [dbo].[TblInventariado]
inner join [dbo].[TblDetalleProd2] on [dbo].[TblDetalleProd2].IdDetalleProd = [dbo].[TblInventariado].IdDetalleProd
end


--execute [dbo].[USP_InventarioObtener]



GO
/****** Object:  StoredProcedure [dbo].[USP_ProductoActualizar]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[USP_ProductoActualizar](
@IdProducto UNIQUEIDENTIFIER,
@NombreProducto varchar(50),
@IdCategoria UNIQUEIDENTIFIER,
@Resultado bit output)
as begin
set @Resultado = 1
IF NOT EXISTS (select*from TblProducto2 where RTRIM(LTRIM( NombreProducto)) = RTRIM(LTRIM(@NombreProducto)) and 
IdProducto != @IdProducto)
update TblProducto2 set
NombreProducto = @NombreProducto,
IdCategoria = @IdCategoria
where IdProducto = @IdProducto
else 
set @Resultado = 0
end

GO
/****** Object:  StoredProcedure [dbo].[USP_ProductoEliminar]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_ProductoEliminar](
@IdProducto UNIQUEIDENTIFIER,
@Resultado bit output)
as begin
set @Resultado = 1
IF EXISTS ( select  * from TblProducto2 where IdProducto = @IdProducto)
	delete from TblProducto2 where IdProducto = @IdProducto
else 
set @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[USP_ProductosObteneeer]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[USP_ProductosObteneeer]
AS
BEGIN
    -- Asegúrate de que las tablas existen
    IF OBJECT_ID('dbo.TblProducto2') IS NOT NULL AND OBJECT_ID('dbo.TblCategoria2') IS NOT NULL
    BEGIN
        SELECT 
            TblProducto2.IdProducto, 
            TblProducto2.NombreProducto, 
            TblProducto2.IdCategoria,  
            [dbo].[TblCategoria2].Descripcion 
        FROM TblProducto2
        INNER JOIN [dbo].[TblCategoria2] 
            ON [dbo].[TblCategoria2].IdCategoria = TblProducto2.IdCategoria;
    END
    ELSE
    BEGIN
        PRINT 'Una o ambas tablas no existen en la base de datos.';
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_ProductosObtener]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ProductosObtener]
as
begin
select TblProducto2.IdProducto,TblProducto2.NombreProducto,TblProducto2.IdCategoria,  [dbo].[TblCategoria2].Descripcion from TblProducto2
inner join [dbo].[TblCategoria2] on [dbo].[TblCategoria2].IdCategoria = TblProducto2.IdCategoria
end


--exec [dbo].[USP_ProductosObtener]
GO
/****** Object:  StoredProcedure [dbo].[USP_UsuarioActualizar]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[USP_ProductoActualizar]    Script Date: 14/04/2024 06:03:59 p. m. ******/


CREATE proc [dbo].[USP_UsuarioActualizar](
@IdUsuario UNIQUEIDENTIFIER,
@IdRol UNIQUEIDENTIFIER,
@PrimerNombre varchar(50),
@SegundoNombre varchar(50),
@PrimerApellido varchar(50),
@SegundoApellido varchar(50),
@Correo varchar(50),
@Estado BIT,
@Sexo varchar(50),
@Username varchar(50),
@Contraseña varchar(50),
@FechaCreacion DATETIME,
@Resultado bit output)
as begin
set @Resultado = 1
IF NOT EXISTS (select*from TblUsuario3 where RTRIM(LTRIM( PrimerNombre)) = RTRIM(LTRIM(@PrimerNombre)) and 
IdUsuario != @IdUsuario)
update TblUsuario3 set
 IdRol= @IdRol,
PrimerNombre = @PrimerNombre,
SegundoNombre = @SegundoNombre,
 PrimerApellido = @PrimerApellido,
 SegundoApellido= @SegundoApellido,
 Correo= @Correo,
 Estado= @Estado,
 Sexo= @Sexo,
 Username= @Username,
 Contraseña= @Contraseña,
 FechaCreacion= @FechaCreacion

where IdUsuario = @IdUsuario
else 
set @Resultado = 0
end

GO
/****** Object:  StoredProcedure [dbo].[USP_UsuarioEliminar]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[USP_ProductoEliminar]    Script Date: 14/04/2024 06:50:37 p. m. ******/

CREATE proc [dbo].[USP_UsuarioEliminar](
@IdUsuario UNIQUEIDENTIFIER,
@Resultado bit output)
as begin
set @Resultado = 1
IF EXISTS ( select  * from TblUsuario3 where IdUsuario = @IdUsuario)
	delete from TblUsuario3 where IdUsuario = @IdUsuario
else 
set @Resultado = 0
end
GO
/****** Object:  StoredProcedure [dbo].[USP_UsuarioObtener]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_UsuarioObtener]
AS
BEGIN
    -- Selecciona todos los campos de la tabla de categorías
    SELECT IdUsuario,IdRol,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido,Correo,Estado,Sexo,Username,Contraseña,FechaCreacion
    FROM TblUsuario3; -- Cambia "TuTablaCategorias" por el nombre de tu tabla
END;
GO
/****** Object:  StoredProcedure [dbo].[USP_UsuarioObtener1]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[USP_UsuarioObtener1]
as
begin
select TblUsuario3.IdUsuario,TblUsuario3.IdRol,TblUsuario3.PrimerNombre,TblUsuario3.SegundoNombre,TblUsuario3.PrimerApellido,TblUsuario3.SegundoApellido,TblUsuario3.Correo,TblUsuario3.Estado,TblUsuario3.Sexo,TblUsuario3.Username,TblUsuario3.Contraseña,TblUsuario3.FechaCreacion,  [dbo].[TblRol].Descripcion from TblUsuario3
inner join [dbo].[TblRol] on [dbo].[TblRol].IdRol = TblUsuario3.IdRol
end
GO
/****** Object:  StoredProcedure [dbo].[VerCategorias]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[VerCategorias]
AS
BEGIN
    -- Selecciona todos los campos de la tabla de categorías
    SELECT IdCategoria, Descripcion, Estado, FechaCreacion
    FROM TblCategoria2; -- Cambia "TuTablaCategorias" por el nombre de tu tabla
END;
GO
/****** Object:  StoredProcedure [dbo].[VerCliente]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[VerCliente]
AS
BEGIN
    -- Selecciona todos los campos de la tabla de categorías
    SELECT IdCliente, PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido,Correo,Telefono,Estado,FechaCreacion
    FROM TblCliente; -- Cambia "TuTablaCategorias" por el nombre de tu tabla
END;
GO
/****** Object:  StoredProcedure [dbo].[VerMedida]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[VerRol]    Script Date: 16/04/2024 04:33:27 p. m. ******/

/****** Object:  StoredProcedure [dbo].[VerCategorias]    Script Date: 14/04/2024 05:12:53 p. m. ******/


CREATE PROCEDURE [dbo].[VerMedida]
AS
BEGIN
    -- Selecciona todos los campos de la tabla de categorías
    SELECT IdMedida, TipoMedida,Abreviatura
    FROM TblUnidadMedida; -- Cambia "TuTablaCategorias" por el nombre de tu tabla
END;
GO
/****** Object:  StoredProcedure [dbo].[VerProductos]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[VerCategorias]    Script Date: 02/04/2024 05:59:58 p. m. ******/


CREATE PROCEDURE [dbo].[VerProductos]
AS
BEGIN
    -- Selecciona todos los campos de la tabla de categorías
    SELECT IdProducto, NombreProducto, IdCategoria
    FROM [db_Catalogo].[TblProducto]; -- Cambia "TuTablaCategorias" por el nombre de tu tabla
END;
GO
/****** Object:  StoredProcedure [dbo].[VerProveedores]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[VerProveedores]
AS
BEGIN
    -- Selecciona todos los campos de la tabla de categorías
    SELECT IdProveedor, NombreCompañia, Correo, Telefono, Estado, FechaCreacion
    FROM [db_Catalogo].[TblProveedor]; -- Cambia "TuTablaCategorias" por el nombre de tu tabla
END;
GO
/****** Object:  StoredProcedure [dbo].[VerRol]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[VerCategorias]    Script Date: 14/04/2024 05:12:53 p. m. ******/


CREATE PROCEDURE [dbo].[VerRol]
AS
BEGIN
    -- Selecciona todos los campos de la tabla de categorías
    SELECT IdRol, Descripcion,FechaCreacion
    FROM TblRol; -- Cambia "TuTablaCategorias" por el nombre de tu tabla
END;
GO
/****** Object:  StoredProcedure [dbo].[VerUsuarios]    Script Date: 8/11/2024 08:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[VerUsuarios]
AS
BEGIN
    -- Selecciona todos los campos de la tabla de categorías
    SELECT IdUsuario, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Correo, IdRol, Estado, Sexo, Username, Contraseña, FechaCreacion
    FROM [db_Catalogo].[TblUsuario]; -- Cambia "TuTablaCategorias" por el nombre de tu tabla
END;
GO
USE [master]
GO
ALTER DATABASE [KalakaSupreme] SET  READ_WRITE 
GO
