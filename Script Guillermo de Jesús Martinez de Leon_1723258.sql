USE [Practica1]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [CK_Pelicula]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [CK_Empleados]
GO
/****** Object:  Index [IX_Nombre_P]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP INDEX [IX_Nombre_P] ON [dbo].[Pelicula]
GO
/****** Object:  Index [IX_Año_Estreno]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP INDEX [IX_Año_Estreno] ON [dbo].[Pelicula]
GO
/****** Object:  Index [IX_Genero]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP INDEX [IX_Genero] ON [dbo].[Genero]
GO
/****** Object:  Index [IX_Formato]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP INDEX [IX_Formato] ON [dbo].[Formato]
GO
/****** Object:  Index [IX_Sueldo_EM]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP INDEX [IX_Sueldo_EM] ON [dbo].[Empleados]
GO
/****** Object:  Index [IX_Puesto_EM]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP INDEX [IX_Puesto_EM] ON [dbo].[Empleados]
GO
/****** Object:  Index [IX_Nombre_EM]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP INDEX [IX_Nombre_EM] ON [dbo].[Empleados]
GO
/****** Object:  Index [IX_ApellidoP_EM]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP INDEX [IX_ApellidoP_EM] ON [dbo].[Empleados]
GO
/****** Object:  Index [IX_ApellidoM_EM]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP INDEX [IX_ApellidoM_EM] ON [dbo].[Empleados]
GO
/****** Object:  Index [IX_ApellidoP_C]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP INDEX [IX_ApellidoP_C] ON [dbo].[Cliente]
GO
/****** Object:  Index [IX_ApellidoM_C]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP INDEX [IX_ApellidoM_C] ON [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP TABLE [dbo].[Pelicula]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP TABLE [dbo].[Genero]
GO
/****** Object:  Table [dbo].[Formato]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP TABLE [dbo].[Formato]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 07/09/2018 02:36:22 p. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 07/09/2018 02:36:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[iId_Cliente] [int] NOT NULL,
	[vNombre] [varchar](30) NOT NULL,
	[vApellidoP] [varchar](20) NOT NULL,
	[vApellidoM] [varchar](20) NOT NULL,
	[dNacimiento] [datetime] NOT NULL,
	[vContacto] [varchar](20) NOT NULL,
	[vDireccion] [varchar](20) NOT NULL,
	[bCliente_Distinguido] [bit] NOT NULL,
	[iId_Pelicula] [int] NOT NULL,
	[iId_Venta] [int] NOT NULL,
	[iId_Alquiler] [int] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[iId_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 07/09/2018 02:36:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[iId_Empleado] [int] NOT NULL,
	[vNombre_E] [varchar](30) NOT NULL,
	[vApellidoP_E] [varchar](20) NOT NULL,
	[vApellidoM_E] [varchar](20) NOT NULL,
	[vNombreC_E]  AS (((([vNombre_E]+' ')+[vApellidoP_E])+' ')+[vApellidoM_E]),
	[vPuesto] [varchar](20) NOT NULL,
	[vContacto] [varchar](20) NOT NULL,
	[mSueldo] [money] NOT NULL,
	[iFotografía] [image] NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[iId_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formato]    Script Date: 07/09/2018 02:36:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formato](
	[tId_Formato] [tinyint] NOT NULL,
	[vFormato] [varchar](20) NULL,
 CONSTRAINT [PK_Formato] PRIMARY KEY CLUSTERED 
(
	[tId_Formato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 07/09/2018 02:36:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[tId_Genero] [tinyint] NOT NULL,
	[vGenero] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[tId_Genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 07/09/2018 02:36:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula](
	[iId_Pelicula] [int] NOT NULL,
	[vNombre] [varchar](30) NOT NULL,
	[dAño_Estreno] [datetime] NOT NULL,
	[mCosto] [money] NOT NULL,
	[tDuracion] [time](7) NOT NULL,
	[fRating] [float] NOT NULL,
	[tDescripcion] [text] NOT NULL,
	[tId_Genero] [tinyint] NOT NULL,
	[tId_Clasificacion] [tinyint] NOT NULL,
	[iId_Actor] [int] NOT NULL,
	[tId_Formato] [tinyint] NOT NULL,
	[iId_Inventario] [int] NOT NULL,
	[iId_Ventas] [int] NOT NULL,
 CONSTRAINT [PK_Pelicula] PRIMARY KEY CLUSTERED 
(
	[iId_Pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Empleados] ([iId_Empleado], [vNombre_E], [vApellidoP_E], [vApellidoM_E], [vPuesto], [vContacto], [mSueldo], [iFotografía]) VALUES (1, N'Guillermo', N'Martinez', N'De Leon', N'Cajero', N'81', 2000.0000, NULL)
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ApellidoM_C]    Script Date: 07/09/2018 02:36:23 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ApellidoM_C] ON [dbo].[Cliente]
(
	[vApellidoM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ApellidoP_C]    Script Date: 07/09/2018 02:36:23 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ApellidoP_C] ON [dbo].[Cliente]
(
	[vApellidoP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ApellidoM_EM]    Script Date: 07/09/2018 02:36:23 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ApellidoM_EM] ON [dbo].[Empleados]
(
	[vApellidoM_E] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ApellidoP_EM]    Script Date: 07/09/2018 02:36:23 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_ApellidoP_EM] ON [dbo].[Empleados]
(
	[vApellidoP_E] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Nombre_EM]    Script Date: 07/09/2018 02:36:23 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Nombre_EM] ON [dbo].[Empleados]
(
	[vNombre_E] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Puesto_EM]    Script Date: 07/09/2018 02:36:23 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Puesto_EM] ON [dbo].[Empleados]
(
	[vPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sueldo_EM]    Script Date: 07/09/2018 02:36:23 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Sueldo_EM] ON [dbo].[Empleados]
(
	[mSueldo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Formato]    Script Date: 07/09/2018 02:36:23 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Formato] ON [dbo].[Formato]
(
	[vFormato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Genero]    Script Date: 07/09/2018 02:36:23 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Genero] ON [dbo].[Genero]
(
	[vGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Año_Estreno]    Script Date: 07/09/2018 02:36:23 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Año_Estreno] ON [dbo].[Pelicula]
(
	[dAño_Estreno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Nombre_P]    Script Date: 07/09/2018 02:36:23 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Nombre_P] ON [dbo].[Pelicula]
(
	[vNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [CK_Empleados] CHECK  (([mSueldo]>(0) AND [mSueldo]<=(1000000)))
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [CK_Empleados]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [CK_Pelicula] CHECK  (([fRating]>(0) AND [fRating]<=(10)))
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [CK_Pelicula]
GO
