USE [Videos4]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [CK__Pelicula__mPreci__7F2BE32F]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [CK__Pelicula__iAño_E__7E37BEF6]
GO
ALTER TABLE [dbo].[Forma_Pago] DROP CONSTRAINT [CK__Forma_Pag__vForm__6EF57B66]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Empleado]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Alquiler1]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Resolucion1]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Idioma1]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Genero1]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Formato1]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Clasificacion1]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Calidad1]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Actor1]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Sucursal1]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Puesto]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Forma_Pago]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Domicilio]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Distinguido]
GO
ALTER TABLE [dbo].[Casting] DROP CONSTRAINT [FK_Casting_Pelicula]
GO
ALTER TABLE [dbo].[Casting] DROP CONSTRAINT [FK_Casting_Actor]
GO
ALTER TABLE [dbo].[Alquiler_Pelicula] DROP CONSTRAINT [FK_Alquiler_Pelicula_Pelicula1]
GO
ALTER TABLE [dbo].[Alquiler_Pelicula] DROP CONSTRAINT [FK_Alquiler_Pelicula_Alquiler]
GO
ALTER TABLE [dbo].[Alquiler] DROP CONSTRAINT [FK_Alquiler_Cliente]
GO
/****** Object:  Table [dbo].[Resolucion]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Resolucion]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Idioma]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Genero]
GO
/****** Object:  Table [dbo].[Formato]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Formato]
GO
/****** Object:  Table [dbo].[Forma_Pago]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Forma_Pago]
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Domicilio]
GO
/****** Object:  Table [dbo].[Clasificacion]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Clasificacion]
GO
/****** Object:  Table [dbo].[Casting]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Casting]
GO
/****** Object:  Table [dbo].[Calidad]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Calidad]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Actor]
GO
/****** Object:  View [dbo].[Inventario]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP VIEW [dbo].[Inventario]
GO
/****** Object:  View [dbo].[Comprascliente]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP VIEW [dbo].[Comprascliente]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Pelicula]
GO
/****** Object:  Table [dbo].[Alquiler_Pelicula]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Alquiler_Pelicula]
GO
/****** Object:  Table [dbo].[Alquiler]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Alquiler]
GO
/****** Object:  View [dbo].[ClienteDistinguido]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP VIEW [dbo].[ClienteDistinguido]
GO
/****** Object:  Table [dbo].[Distinguido]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Distinguido]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  View [dbo].[EmpleadosSucursal]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP VIEW [dbo].[EmpleadosSucursal]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Sucursal]
GO
/****** Object:  View [dbo].[ReporteMensual3]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP VIEW [dbo].[ReporteMensual3]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP TABLE [dbo].[Empleado]
GO
USE [master]
GO
/****** Object:  Database [Videos4]    Script Date: 12/10/2018 10:50:44 p. m. ******/
DROP DATABASE [Videos4]
GO
/****** Object:  Database [Videos4]    Script Date: 12/10/2018 10:50:44 p. m. ******/
CREATE DATABASE [Videos4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Videos4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\Videos4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Videos4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\Videos4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Videos4] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Videos4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Videos4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Videos4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Videos4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Videos4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Videos4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Videos4] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Videos4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Videos4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Videos4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Videos4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Videos4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Videos4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Videos4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Videos4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Videos4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Videos4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Videos4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Videos4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Videos4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Videos4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Videos4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Videos4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Videos4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Videos4] SET  MULTI_USER 
GO
ALTER DATABASE [Videos4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Videos4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Videos4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Videos4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Videos4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Videos4] SET QUERY_STORE = OFF
GO
USE [Videos4]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Videos4]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 12/10/2018 10:50:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[iID_Empleado] [int] IDENTITY(130,1) NOT NULL,
	[vNombre_Empleado] [varchar](50) NULL,
	[vApellidoP_Empleado] [varchar](50) NULL,
	[vApellidoM_Empleado] [varchar](50) NULL,
	[vNombre_Completo]  AS (((([vNombre_Empleado]+' ')+[vApellidoP_Empleado])+' ')+[vApellidoM_Empleado]),
	[mSueldo] [money] NULL,
	[iImagen] [image] NULL,
	[iID_Sucursal] [int] NULL,
	[iID_Puesto] [int] NULL,
 CONSTRAINT [PK__Empleado__B2B55FC642F2178A] PRIMARY KEY CLUSTERED 
(
	[iID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[iID_Ventas] [int] IDENTITY(140,1) NOT NULL,
	[iID_Empleado] [int] NULL,
	[iID_Alquiler] [int] NULL,
	[FechaDeVenta] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Ventas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ReporteMensual3]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ReporteMensual3] as(
select vNombre_Completo
, count (v.iID_Ventas) as [Total de Venta]
  from Ventas as v left join Empleado e on v.iID_Empleado = e.iID_Empleado
 where Month(v.FechaDeVenta) = 05
group by vNombre_Completo)
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[iID_Sucursal] [int] IDENTITY(120,1) NOT NULL,
	[vSucursal] [varchar](30) NULL,
	[vDireccion] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[EmpleadosSucursal]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[EmpleadosSucursal] as(
select vNombre_Completo
, s.vSucursal as [Sucursal]
  from Sucursal as s inner join Empleado e on s.iID_Sucursal = e.iID_Sucursal where s.iID_Sucursal=120
group by vNombre_Completo, s.vSucursal)
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[iID_Cliente] [int] IDENTITY(100,1) NOT NULL,
	[vNombre_Cliente] [varchar](50) NULL,
	[vApellidoP_Cliente] [varchar](50) NULL,
	[vApellidoM_Cliente] [varchar](50) NULL,
	[vNombre_Completo]  AS (((([vNombre_Cliente]+' ')+[vApellidoP_Cliente])+' ')+[vApellidoM_Cliente]),
	[dFecha_Nac] [datetime] NULL,
	[vContacto] [varchar](1) NULL,
	[iID_Pago] [int] NULL,
	[iID_Domicilio] [int] NULL,
	[iID_ClienDistinguido] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distinguido]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distinguido](
	[iID_ClienDistinguido] [int] IDENTITY(170,1) NOT NULL,
	[bClien_Distinguido] [bit] NULL,
	[iID_Cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_ClienDistinguido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ClienteDistinguido]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ClienteDistinguido] as(
select vNombre_Completo as [Clientes Distinguidos]
  from Cliente as c left join Distinguido as d on c.iID_ClienDistinguido = d.iID_ClienDistinguido
 where d.iID_ClienDistinguido=170
group by vNombre_Completo)
GO
/****** Object:  Table [dbo].[Alquiler]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alquiler](
	[iID_Alquiler] [int] IDENTITY(110,1) NOT NULL,
	[dFecha_Alquiler] [datetime] NULL,
	[dFecha_Devolucion] [datetime] NULL,
	[iID_Cliente] [int] NULL,
	[Subtotal] [money] NULL,
	[Cantidad_Pelicula] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Alquiler] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alquiler_Pelicula]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alquiler_Pelicula](
	[iID_Alquiler] [int] NULL,
	[iID_Pelicula] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula](
	[iID_Pelicula] [int] IDENTITY(80,1) NOT NULL,
	[vNombre_Peli] [varchar](30) NULL,
	[iAño_Estreno] [int] NULL,
	[mPrecio] [money] NULL,
	[fPuntuaje] [float] NULL,
	[vDuración] [varchar](20) NULL,
	[tDescripción] [text] NULL,
	[iImagen] [image] NULL,
	[tCantidad] [tinyint] NULL,
	[iID_Genero] [int] NULL,
	[iID_Actor] [int] NULL,
	[iID_Formato] [int] NULL,
	[iID_Clasificacion] [int] NULL,
	[iID_Calidad] [int] NULL,
	[iID_Idioma] [int] NULL,
	[iID_Resolucion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Comprascliente]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Comprascliente] as(
select vNombre_Completo
, vNombre_Peli, Cantidad_Pelicula as [Peliculas Compradas], mPrecio,(Cantidad_Pelicula * mPrecio) as [Total Compra]
  from Alquiler as al left join Alquiler_Pelicula a  on al.iID_Alquiler = a.iID_Alquiler 
  left join Pelicula p  on  a.iID_Pelicula=p.iID_Pelicula 
  left join Cliente c on al.iID_Cliente=c.iID_Cliente where c.iID_Cliente=109  and  p.iID_Pelicula=89 
group by vNombre_Completo, vNombre_Peli, Cantidad_Pelicula, mPrecio)
GO
/****** Object:  View [dbo].[Inventario]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Inventario] as(
select p.vNombre_Peli, tCantidad as [Cantidad Peliculas], Cantidad_Pelicula as [Peliculas Compradas],(tCantidad-Cantidad_Pelicula) AS [Peliculas Disponibles Actualmente]
  from Alquiler as al left join Alquiler_Pelicula a  on al.iID_Alquiler = a.iID_Alquiler 
  left join Pelicula p  on  a.iID_Pelicula=p.iID_Pelicula 
  left join Cliente c on al.iID_Cliente=c.iID_Cliente where c.iID_Cliente>100  and  p.iID_Pelicula>80
group by p.vNombre_Peli,tCantidad, Cantidad_Pelicula)
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[iID_Actor] [int] IDENTITY(30,1) NOT NULL,
	[vNombre_Actor] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Actor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calidad]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calidad](
	[iID_Calidad] [int] IDENTITY(70,1) NOT NULL,
	[vCalidad] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Calidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casting]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casting](
	[iID_Casting] [int] IDENTITY(180,1) NOT NULL,
	[vNombre_Pelicula] [varchar](30) NULL,
	[vNombre_Actor] [varchar](30) NULL,
	[iID_Pelicula] [int] NULL,
	[iID_Actor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Casting] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clasificacion]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clasificacion](
	[iID_Clasificacion] [int] IDENTITY(10,1) NOT NULL,
	[cClasificacion] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domicilio](
	[iID_Direccion] [int] IDENTITY(160,1) NOT NULL,
	[vColonia] [varchar](50) NULL,
	[vCalle] [varchar](50) NULL,
	[vNumero] [varchar](20) NULL,
	[vCod_Postal] [varchar](10) NULL,
	[vMunicipio] [varchar](10) NULL,
	[iID_Cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forma_Pago]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forma_Pago](
	[iID_Pago] [int] IDENTITY(90,1) NOT NULL,
	[vForma_Pago] [varchar](20) NULL,
 CONSTRAINT [PK__Forma_Pa__AA786E723A6FBD01] PRIMARY KEY CLUSTERED 
(
	[iID_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formato]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formato](
	[iID_Formato] [int] IDENTITY(20,1) NOT NULL,
	[vFormato] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Formato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 12/10/2018 10:50:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[iID_Genero] [int] IDENTITY(40,1) NOT NULL,
	[vGenero] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 12/10/2018 10:50:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idioma](
	[iID_Idioma] [int] IDENTITY(60,1) NOT NULL,
	[vIdioma] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Idioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 12/10/2018 10:50:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[iID_Puesto] [int] IDENTITY(50,1) NOT NULL,
	[Nombre_Puesto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[iID_Puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resolucion]    Script Date: 12/10/2018 10:50:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resolucion](
	[iID_Resolucion] [int] IDENTITY(50,1) NOT NULL,
	[vResolucion] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[iID_Resolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Actor] ON 

INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (30, N'Tom Hanks')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (31, N'Will Smith')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (32, N'Johnny Depp')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (33, N'Adam Sandler')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (34, N'Vin Diesel')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (35, N'Jackie Chan')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (36, N'Morgan Freeman')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (37, N'Brad Pitt')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (38, N'Angelina Jolie')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (39, N'Robin Williams')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (40, N'Leonardo Dicaprio')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (41, N'Jim Carrey')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (42, N'Jennifer Aniston')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (43, N'Nicholas Cage')
INSERT [dbo].[Actor] ([iID_Actor], [vNombre_Actor]) VALUES (44, N'Sandra Bullock')
SET IDENTITY_INSERT [dbo].[Actor] OFF
SET IDENTITY_INSERT [dbo].[Alquiler] ON 

INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (111, CAST(N'2018-05-23T06:55:00.000' AS DateTime), CAST(N'2018-05-26T00:00:00.000' AS DateTime), 100, 50.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (112, CAST(N'2018-05-23T07:36:00.000' AS DateTime), CAST(N'2018-05-26T00:00:00.000' AS DateTime), 101, 30.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (113, CAST(N'2018-05-23T07:39:59.000' AS DateTime), CAST(N'2018-05-26T00:00:00.000' AS DateTime), 102, 40.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (114, CAST(N'2018-05-23T08:43:20.000' AS DateTime), CAST(N'2018-05-26T00:00:00.000' AS DateTime), 103, 50.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (115, CAST(N'2018-05-23T08:56:34.000' AS DateTime), CAST(N'2018-05-26T00:00:00.000' AS DateTime), 104, 20.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (116, CAST(N'2018-05-23T09:23:29.000' AS DateTime), CAST(N'2018-05-26T00:00:00.000' AS DateTime), 105, 30.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (117, CAST(N'2018-05-24T09:45:03.000' AS DateTime), CAST(N'2018-05-27T00:00:00.000' AS DateTime), 106, 50.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (118, CAST(N'2018-05-24T10:20:40.000' AS DateTime), CAST(N'2018-05-27T00:00:00.000' AS DateTime), 107, 20.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (119, CAST(N'2018-05-24T10:30:34.000' AS DateTime), CAST(N'2018-05-27T00:00:00.000' AS DateTime), 108, 30.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (120, CAST(N'2018-05-24T12:30:49.000' AS DateTime), CAST(N'2018-05-27T00:00:00.000' AS DateTime), 109, 70.0000, 2)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (121, CAST(N'2018-05-25T12:25:19.000' AS DateTime), CAST(N'2018-05-28T00:00:00.000' AS DateTime), 110, 50.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (122, CAST(N'2018-05-25T13:45:24.000' AS DateTime), CAST(N'2018-05-28T00:00:00.000' AS DateTime), 111, 40.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (123, CAST(N'2018-05-25T14:23:23.000' AS DateTime), CAST(N'2018-05-28T00:00:00.000' AS DateTime), 112, 30.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (124, CAST(N'2018-05-25T14:45:25.000' AS DateTime), CAST(N'2018-05-28T00:00:00.000' AS DateTime), 113, 20.0000, 1)
INSERT [dbo].[Alquiler] ([iID_Alquiler], [dFecha_Alquiler], [dFecha_Devolucion], [iID_Cliente], [Subtotal], [Cantidad_Pelicula]) VALUES (125, CAST(N'2018-05-25T16:34:43.000' AS DateTime), CAST(N'2018-05-28T00:00:00.000' AS DateTime), 114, 100.0000, 2)
SET IDENTITY_INSERT [dbo].[Alquiler] OFF
INSERT [dbo].[Alquiler_Pelicula] ([iID_Alquiler], [iID_Pelicula]) VALUES (111, 80)
INSERT [dbo].[Alquiler_Pelicula] ([iID_Alquiler], [iID_Pelicula]) VALUES (112, 81)
INSERT [dbo].[Alquiler_Pelicula] ([iID_Alquiler], [iID_Pelicula]) VALUES (113, 82)
INSERT [dbo].[Alquiler_Pelicula] ([iID_Alquiler], [iID_Pelicula]) VALUES (114, 83)
INSERT [dbo].[Alquiler_Pelicula] ([iID_Alquiler], [iID_Pelicula]) VALUES (115, 84)
INSERT [dbo].[Alquiler_Pelicula] ([iID_Alquiler], [iID_Pelicula]) VALUES (116, 85)
INSERT [dbo].[Alquiler_Pelicula] ([iID_Alquiler], [iID_Pelicula]) VALUES (120, 89)
INSERT [dbo].[Alquiler_Pelicula] ([iID_Alquiler], [iID_Pelicula]) VALUES (121, 90)
INSERT [dbo].[Alquiler_Pelicula] ([iID_Alquiler], [iID_Pelicula]) VALUES (122, 91)
SET IDENTITY_INSERT [dbo].[Calidad] ON 

INSERT [dbo].[Calidad] ([iID_Calidad], [vCalidad]) VALUES (70, N'Excelente')
INSERT [dbo].[Calidad] ([iID_Calidad], [vCalidad]) VALUES (71, N'Muy buena')
INSERT [dbo].[Calidad] ([iID_Calidad], [vCalidad]) VALUES (72, N'Buena')
SET IDENTITY_INSERT [dbo].[Calidad] OFF
SET IDENTITY_INSERT [dbo].[Clasificacion] ON 

INSERT [dbo].[Clasificacion] ([iID_Clasificacion], [cClasificacion]) VALUES (10, N'A')
INSERT [dbo].[Clasificacion] ([iID_Clasificacion], [cClasificacion]) VALUES (11, N'B')
INSERT [dbo].[Clasificacion] ([iID_Clasificacion], [cClasificacion]) VALUES (12, N'C')
SET IDENTITY_INSERT [dbo].[Clasificacion] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (100, N'David', N'Avila', N'Olmeda', CAST(N'2000-05-23T00:00:00.000' AS DateTime), N'M', 90, 160, 170)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (101, N'Pablo', N'Lopez', N'Sanchez', CAST(N'2000-05-23T00:00:00.000' AS DateTime), N'M', 90, 161, 171)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (102, N'Alejandra', N'Garcia', N'Sanchez', CAST(N'1999-07-19T00:00:00.000' AS DateTime), N'F', 91, 162, 170)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (103, N'Juan', N'Bueno', N'Lara', CAST(N'1999-07-03T00:00:00.000' AS DateTime), N'M', 91, 163, 171)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (104, N'David', N'Perez', N'Darif', CAST(N'2001-12-21T00:00:00.000' AS DateTime), N'M', 91, 164, 170)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (105, N'Roberto', N'Pesina', N'Juarez', CAST(N'1998-09-15T00:00:00.000' AS DateTime), N'M', 90, 165, 171)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (106, N'Tadeo', N'Lopez', N'Martinez', CAST(N'1998-04-24T00:00:00.000' AS DateTime), N'M', 90, 166, 170)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (107, N'Paulina', N'Vazquez', N'Atxutegi', CAST(N'1998-09-30T00:00:00.000' AS DateTime), N'F', 91, 167, 171)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (108, N'Andrea', N'Vazquez', N'Atxutegi', CAST(N'1998-09-30T00:00:00.000' AS DateTime), N'F', 91, 168, 170)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (109, N'Mario', N'Gutierrez', N'Ezpinoza', CAST(N'1998-01-02T00:00:00.000' AS DateTime), N'M', 91, 169, 171)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (110, N'Erick', N'Martinez', N'de la Paz', CAST(N'2000-03-28T00:00:00.000' AS DateTime), N'M', 90, 170, 170)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (111, N'Horacio', N'Hernandez', N'de Dios', CAST(N'1999-05-07T00:00:00.000' AS DateTime), N'M', 90, 171, 171)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (112, N'Rodrigo', N'Bravo', N'Ramos', CAST(N'1999-10-12T00:00:00.000' AS DateTime), N'M', 91, 172, 170)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (113, N'Zabdiel', N'Diaz', N'Cerda', CAST(N'1999-11-18T00:00:00.000' AS DateTime), N'M', 91, 173, 171)
INSERT [dbo].[Cliente] ([iID_Cliente], [vNombre_Cliente], [vApellidoP_Cliente], [vApellidoM_Cliente], [dFecha_Nac], [vContacto], [iID_Pago], [iID_Domicilio], [iID_ClienDistinguido]) VALUES (114, N'Jorge', N'Garcia', N'Marin', CAST(N'2000-02-20T00:00:00.000' AS DateTime), N'M', 90, 174, 170)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Distinguido] ON 

INSERT [dbo].[Distinguido] ([iID_ClienDistinguido], [bClien_Distinguido], [iID_Cliente]) VALUES (170, 1, 100)
INSERT [dbo].[Distinguido] ([iID_ClienDistinguido], [bClien_Distinguido], [iID_Cliente]) VALUES (171, 0, 101)
SET IDENTITY_INSERT [dbo].[Distinguido] OFF
SET IDENTITY_INSERT [dbo].[Domicilio] ON 

INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (160, N'Barrio Moderna', N'Ehrlich', N'#825', N'64102', N'Monterrey', 100)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (161, N'Barrio Moderna', N'Palmin', N'#832', N'64102', N'Monterrey', 101)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (162, N'Barrio Moderna', N'Gonzalez', N'#930', N'64102', N'Monterrey', 102)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (163, N'Barrio Moderna', N'Camarena', N'#293', N'64102', N'Monterrey', 103)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (164, N'Barrio Moderna', N'Pavlov', N'#932', N'64102', N'Monterrey', 104)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (165, N'Barrio Moderna', N'Lansteiner', N'#145', N'64102', N'Monterrey', 105)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (166, N'Barrio Moderna', N'Aztlan', N'#654', N'64102', N'Monterrey', 106)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (167, N'Barrio Moderna', N'Pradera', N'#971', N'64102', N'Monterrey', 107)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (168, N'Barrio Estrella', N'Tierra', N'#251', N'64109', N'Monterrey', 108)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (169, N'Barrio Estrella', N'Marte', N'#345', N'64109', N'Monterrey', 109)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (170, N'Barrio Estrella', N'Venus', N'#432', N'64109', N'Monterrey', 110)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (171, N'Barrio Estrella', N'Saturno', N'#287', N'64109', N'Monterrey', 111)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (172, N'Barrio Estrella', N'Jupiter', N'#689', N'64109', N'Monterrey', 112)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (173, N'Barrio Estrella', N'Pluton', N'#582', N'64109', N'Monterrey', 113)
INSERT [dbo].[Domicilio] ([iID_Direccion], [vColonia], [vCalle], [vNumero], [vCod_Postal], [vMunicipio], [iID_Cliente]) VALUES (174, N'Barrio Estrella', N'Neptuno', N'#198', N'64109', N'Monterrey', 114)
SET IDENTITY_INSERT [dbo].[Domicilio] OFF
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (130, N'Guillermo De Jesús', N'Martinez', N'De Leon', 1200.0000, NULL, 120, 58)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (131, N'Juan', N'Perez', N'Lopez', 1000.0000, NULL, 121, 51)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (132, N'Osvaldo', N'Ker', N'Lopez', 1400.0000, NULL, 122, 52)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (133, N'Gilberto', N'Pea', N'Oro', 1400.0000, NULL, 120, 53)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (134, N'Enrique', N'Rodriguez', N'Garza', 1800.0000, NULL, 121, 54)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (135, N'Hector', N'Paez', N'Morel', 1700.0000, NULL, 122, 55)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (136, N'Fernando', N'Her', N'Min', 1500.0000, NULL, 120, 56)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (137, N'Ivan', N'Taro', N'Slim', 1200.0000, NULL, 121, 57)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (138, N'Martin', N'Zapata', N'Carranza', 1900.0000, NULL, 122, 59)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (139, N'Adrian', N'Huerta', N'Velasquez', 1200.0000, NULL, 120, 60)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (140, N'Luis', N'Lucio', N'Hody', 1100.0000, NULL, 122, 51)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (141, N'Asael', N'Cantu', N'Oca', 1500.0000, NULL, 120, 61)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (142, N'Envy', N'Rojas', N'Millar', 1600.0000, NULL, 121, 62)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (143, N'Julio', N'Eye', N'Dragon', 1400.0000, NULL, 122, 63)
INSERT [dbo].[Empleado] ([iID_Empleado], [vNombre_Empleado], [vApellidoP_Empleado], [vApellidoM_Empleado], [mSueldo], [iImagen], [iID_Sucursal], [iID_Puesto]) VALUES (144, N'Oscar', N'Cervantes', N'Torres', 1300.0000, NULL, 120, 64)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
SET IDENTITY_INSERT [dbo].[Forma_Pago] ON 

INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (90, N'Efectivo')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (91, N'Tarjeta de credito')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (92, N'Efectivo')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (93, N'Tarjeta de credito')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (94, N'Efectivo')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (95, N'Tarjeta de credito')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (96, N'Tarjeta de credito')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (97, N'Efectivo')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (98, N'Efectivo')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (99, N'Efectivo')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (100, N'Tarjeta de credito')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (101, N'Tarjeta de credito')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (102, N'Efectivo')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (103, N'Efectivo')
INSERT [dbo].[Forma_Pago] ([iID_Pago], [vForma_Pago]) VALUES (104, N'Efectivo')
SET IDENTITY_INSERT [dbo].[Forma_Pago] OFF
SET IDENTITY_INSERT [dbo].[Formato] ON 

INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (20, N'Blu-ray')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (21, N'MP4')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (22, N'AVI')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (23, N'H264')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (24, N'MPG')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (25, N'WMV')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (26, N'MOV')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (27, N'MKV')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (28, N'DIVX')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (29, N'XVID')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (30, N'FLV')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (31, N'3GP')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (32, N'DVD')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (33, N'VHS')
INSERT [dbo].[Formato] ([iID_Formato], [vFormato]) VALUES (34, N'Real Media')
SET IDENTITY_INSERT [dbo].[Formato] OFF
SET IDENTITY_INSERT [dbo].[Genero] ON 

INSERT [dbo].[Genero] ([iID_Genero], [vGenero]) VALUES (40, N'Accion')
INSERT [dbo].[Genero] ([iID_Genero], [vGenero]) VALUES (41, N'Comedia')
INSERT [dbo].[Genero] ([iID_Genero], [vGenero]) VALUES (42, N'Misterio')
INSERT [dbo].[Genero] ([iID_Genero], [vGenero]) VALUES (43, N'Aventura')
INSERT [dbo].[Genero] ([iID_Genero], [vGenero]) VALUES (44, N'Terror')
INSERT [dbo].[Genero] ([iID_Genero], [vGenero]) VALUES (45, N'Fantasía')
INSERT [dbo].[Genero] ([iID_Genero], [vGenero]) VALUES (46, N'Ciencia Ficcion')
SET IDENTITY_INSERT [dbo].[Genero] OFF
SET IDENTITY_INSERT [dbo].[Idioma] ON 

INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (60, N'Inglés')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (61, N'Español')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (62, N'Portugués')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (63, N'Japonés')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (64, N'Alemán')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (65, N'Chino')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (66, N'Búlgaro')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (67, N'Coreano')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (68, N'Esperanto')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (69, N'Noruego')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (70, N'Polaco')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (71, N'Lituano')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (72, N'Ruso')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (73, N'Sueco')
INSERT [dbo].[Idioma] ([iID_Idioma], [vIdioma]) VALUES (74, N'Danés')
SET IDENTITY_INSERT [dbo].[Idioma] OFF
SET IDENTITY_INSERT [dbo].[Pelicula] ON 

INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (80, N'Avengers infinity war', 2018, 120.0000, 4.75, N'Dos horas', N'Thanos ya viene', NULL, 5, 40, 30, 20, 11, 70, 61, 65)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (81, N'Avengers la era de ultron', 2018, 120.0000, 4.75, N'Dos horas', N'Una pelicula de super heroes', NULL, 5, 40, 30, 20, 11, 70, 61, 63)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (82, N'Avengers', 2018, 120.0000, 4.75, N'Dos horas', N'se reunen', NULL, 5, 40, 31, 20, 11, 70, 61, 63)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (83, N'It', 2015, 100.0000, 4.75, N'Dos horas', N'6 niños vs un payaso', NULL, 5, 46, 33, 21, 10, 72, 60, 54)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (84, N'Jack reacher', 2012, 120.0000, 4.75, N'Una hora y media', N'Hombre de accion', NULL, 5, 42, 31, 20, 11, 71, 60, 54)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (85, N'Mulan', 1997, 80.0000, 4.75, N'Una hora y media', N'el patriarcado', NULL, 5, 41, 34, 21, 10, 72, 61, 54)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (89, N'Jack reacher 2', 2017, 120.0000, 4.75, N'Una hora y media', N'Hombre de accion 2', NULL, 5, 42, 40, 21, 11, 70, 60, 63)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (90, N'Jurassic Wolrd', 2018, 100.0000, 4.75, N'Dos horas', N'Dinosaurios', NULL, 5, 43, 43, 21, 10, 70, 61, 54)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (91, N'Iron Man', 2008, 100.0000, 4.75, N'Dos horas', N'Millonario playboy filantropo', NULL, 5, 45, 42, 21, 10, 70, 61, 63)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (92, N'Iron Man 2', 2012, 100.0000, 4.75, N'Dos horas', N'Millonario playboy filantropo', NULL, 5, 45, 34, 20, 10, 70, 61, 63)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (93, N'Iron Man 3', 2015, 120.0000, 4.75, N'Dos horas', N'Millonario playboy filantropo', NULL, 5, 45, 32, 20, 10, 70, 61, 65)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (94, N'Capitan America', 2010, 100.0000, 4.75, N'Dos horas', N'Un soldado que viene de otra era', NULL, 5, 40, 38, 20, 12, 70, 60, 63)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (95, N'Capitan America 2', 2013, 100.0000, 4.75, N'Dos horas', N'Un soldado que viene de otra era', NULL, 5, 40, 44, 20, 12, 70, 60, 63)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (96, N'Capitan America 3', 2016, 120.0000, 4.75, N'Dos horas', N'Civil war', NULL, 5, 40, 30, 20, 10, 70, 60, 65)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (97, N'Spiderman Homecomming', 2010, 120.0000, 4.75, N'Dos horas', N'Spiderman y Iron Man', NULL, 5, 40, 35, 20, 10, 70, 61, 65)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (101, N'Spiderman', 2000, 120.0000, 4.75, N'Dos hora quince', N'Una pelicula de peter parker', NULL, 5, 40, 36, 21, 10, 72, 61, 54)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (102, N'Spiderman 2', 2004, 120.0000, 4.75, N'Dos hora quince', N'Una pelicula de peter parker 2', NULL, 5, 40, 30, 34, 10, 71, 61, 63)
INSERT [dbo].[Pelicula] ([iID_Pelicula], [vNombre_Peli], [iAño_Estreno], [mPrecio], [fPuntuaje], [vDuración], [tDescripción], [iImagen], [tCantidad], [iID_Genero], [iID_Actor], [iID_Formato], [iID_Clasificacion], [iID_Calidad], [iID_Idioma], [iID_Resolucion]) VALUES (103, N'Spiderman 3', 2007, 120.0000, 4.75, N'Dos hora quince', N'Una pelicula de peter parker 3', NULL, 5, 40, 39, 34, 10, 70, 61, 63)
SET IDENTITY_INSERT [dbo].[Pelicula] OFF
SET IDENTITY_INSERT [dbo].[Puesto] ON 

INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (50, N'Cajero')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (51, N'Guardia')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (52, N'Lider')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (53, N'Gerente')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (54, N'Secretaria')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (55, N'Limpieza')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (56, N'Supervisor')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (57, N'Subgerente')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (58, N'Contador')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (59, N'Auxiliar')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (60, N'Director')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (61, N'Encargado Pagina Web')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (62, N'Encargado BD')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (63, N'Negocio')
INSERT [dbo].[Puesto] ([iID_Puesto], [Nombre_Puesto]) VALUES (64, N'Ofertas')
SET IDENTITY_INSERT [dbo].[Puesto] OFF
SET IDENTITY_INSERT [dbo].[Resolucion] ON 

INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (50, N'CGA')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (51, N'QVGA')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (53, N'EGA')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (54, N'VGA')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (55, N'HGC')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (56, N'MDA')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (57, N'Apple lisa')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (58, N'SVGA')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (59, N'WVGA')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (60, N'XGA')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (61, N'WXGA')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (62, N'SXGA')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (63, N'Full HD')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (64, N'Retina Display')
INSERT [dbo].[Resolucion] ([iID_Resolucion], [vResolucion]) VALUES (65, N'4k Cinema')
SET IDENTITY_INSERT [dbo].[Resolucion] OFF
SET IDENTITY_INSERT [dbo].[Sucursal] ON 

INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (120, N'Plaza Centrika', N'Vicente Guerrero 2520, Col Del Prado')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (121, N'Chapultepec', N'Av. Chapultepec 1839, Buenos Aires')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (122, N'Lincoln', N'Av Abraham Lincoln 5420')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (123, N'Las Torres', N'Eugenio Garza Sada 6110')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (124, N'Cumbres Monterrey', N'Av Paseo de los Leones 3201')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (125, N'Valle Oriente', N'Av Lázaro Cárdenas 900')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (126, N'Paseo Real', N' Av Abraham Lincoln 1015')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (127, N'Gomez Morin', N'Av. Manuel Gómez Morín 980')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (128, N'Sendero', N'Av. Raúl Salinas Lozano 1021')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (129, N'Eloy Cabazos', N'Av Eloy Cavazos')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (130, N'Pharmacy', N'Calle Paseo de Los Triunfadores 6765')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (131, N'Guadalupe', N'Carr. Libre Monterrey - Reynosa Km 7.8')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (132, N'Miguel Alemán', N'Gral. Bonifacio Salinas Leal 5000')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (133, N'La Fe', N'Av. Rómulo Garza 246, Miguel Alemán')
INSERT [dbo].[Sucursal] ([iID_Sucursal], [vSucursal], [vDireccion]) VALUES (134, N'Escobedo Norte', N'Sin Nombre de Col 11')
SET IDENTITY_INSERT [dbo].[Sucursal] OFF
SET IDENTITY_INSERT [dbo].[Ventas] ON 

INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (200, 136, 111, CAST(N'2018-05-23' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (201, 138, 112, CAST(N'2018-05-23' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (202, 138, 113, CAST(N'2018-05-23' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (203, 144, 114, CAST(N'2018-05-23' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (204, 136, 115, CAST(N'2018-05-23' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (205, 138, 116, CAST(N'2018-05-23' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (206, 138, 117, CAST(N'2018-05-24' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (207, 144, 118, CAST(N'2018-05-24' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (208, 138, 119, CAST(N'2018-05-24' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (209, 136, 120, CAST(N'2018-05-24' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (210, 138, 121, CAST(N'2018-05-25' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (211, 144, 122, CAST(N'2018-05-25' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (212, 138, 123, CAST(N'2018-05-25' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (213, 136, 124, CAST(N'2018-05-25' AS Date))
INSERT [dbo].[Ventas] ([iID_Ventas], [iID_Empleado], [iID_Alquiler], [FechaDeVenta]) VALUES (214, 136, 125, CAST(N'2018-05-25' AS Date))
SET IDENTITY_INSERT [dbo].[Ventas] OFF
ALTER TABLE [dbo].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Cliente] FOREIGN KEY([iID_Cliente])
REFERENCES [dbo].[Cliente] ([iID_Cliente])
GO
ALTER TABLE [dbo].[Alquiler] CHECK CONSTRAINT [FK_Alquiler_Cliente]
GO
ALTER TABLE [dbo].[Alquiler_Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Pelicula_Alquiler] FOREIGN KEY([iID_Alquiler])
REFERENCES [dbo].[Alquiler] ([iID_Alquiler])
GO
ALTER TABLE [dbo].[Alquiler_Pelicula] CHECK CONSTRAINT [FK_Alquiler_Pelicula_Alquiler]
GO
ALTER TABLE [dbo].[Alquiler_Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Pelicula_Pelicula1] FOREIGN KEY([iID_Pelicula])
REFERENCES [dbo].[Pelicula] ([iID_Pelicula])
GO
ALTER TABLE [dbo].[Alquiler_Pelicula] CHECK CONSTRAINT [FK_Alquiler_Pelicula_Pelicula1]
GO
ALTER TABLE [dbo].[Casting]  WITH CHECK ADD  CONSTRAINT [FK_Casting_Actor] FOREIGN KEY([iID_Actor])
REFERENCES [dbo].[Actor] ([iID_Actor])
GO
ALTER TABLE [dbo].[Casting] CHECK CONSTRAINT [FK_Casting_Actor]
GO
ALTER TABLE [dbo].[Casting]  WITH CHECK ADD  CONSTRAINT [FK_Casting_Pelicula] FOREIGN KEY([iID_Pelicula])
REFERENCES [dbo].[Pelicula] ([iID_Pelicula])
GO
ALTER TABLE [dbo].[Casting] CHECK CONSTRAINT [FK_Casting_Pelicula]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Distinguido] FOREIGN KEY([iID_ClienDistinguido])
REFERENCES [dbo].[Distinguido] ([iID_ClienDistinguido])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Distinguido]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Domicilio] FOREIGN KEY([iID_Domicilio])
REFERENCES [dbo].[Domicilio] ([iID_Direccion])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Domicilio]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Forma_Pago] FOREIGN KEY([iID_Pago])
REFERENCES [dbo].[Forma_Pago] ([iID_Pago])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Forma_Pago]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Puesto] FOREIGN KEY([iID_Puesto])
REFERENCES [dbo].[Puesto] ([iID_Puesto])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Puesto]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Sucursal1] FOREIGN KEY([iID_Sucursal])
REFERENCES [dbo].[Sucursal] ([iID_Sucursal])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Sucursal1]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Actor1] FOREIGN KEY([iID_Actor])
REFERENCES [dbo].[Actor] ([iID_Actor])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Actor1]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Calidad1] FOREIGN KEY([iID_Calidad])
REFERENCES [dbo].[Calidad] ([iID_Calidad])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Calidad1]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Clasificacion1] FOREIGN KEY([iID_Clasificacion])
REFERENCES [dbo].[Clasificacion] ([iID_Clasificacion])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Clasificacion1]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Formato1] FOREIGN KEY([iID_Formato])
REFERENCES [dbo].[Formato] ([iID_Formato])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Formato1]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Genero1] FOREIGN KEY([iID_Genero])
REFERENCES [dbo].[Genero] ([iID_Genero])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Genero1]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Idioma1] FOREIGN KEY([iID_Idioma])
REFERENCES [dbo].[Idioma] ([iID_Idioma])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Idioma1]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Resolucion1] FOREIGN KEY([iID_Resolucion])
REFERENCES [dbo].[Resolucion] ([iID_Resolucion])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Resolucion1]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Alquiler1] FOREIGN KEY([iID_Alquiler])
REFERENCES [dbo].[Alquiler] ([iID_Alquiler])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Alquiler1]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Empleado] FOREIGN KEY([iID_Empleado])
REFERENCES [dbo].[Empleado] ([iID_Empleado])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Empleado]
GO
ALTER TABLE [dbo].[Forma_Pago]  WITH CHECK ADD  CONSTRAINT [CK__Forma_Pag__vForm__6EF57B66] CHECK  (([vForma_Pago]='Efectivo' OR [vForma_Pago]='Tarjeta de credito'))
GO
ALTER TABLE [dbo].[Forma_Pago] CHECK CONSTRAINT [CK__Forma_Pag__vForm__6EF57B66]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD CHECK  (([iAño_Estreno]>=(1990)))
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD CHECK  (([mPrecio]>(30.00)))
GO
USE [master]
GO
ALTER DATABASE [Videos4] SET  READ_WRITE 
GO
