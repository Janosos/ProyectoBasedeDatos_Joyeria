USE [Joyeria]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 16/10/2023 06:17:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CategoriaId] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 16/10/2023 06:17:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](100) NULL,
	[CorreoElectronico] [nvarchar](100) NOT NULL,
	[Telefono] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesVentas]    Script Date: 16/10/2023 06:17:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesVentas](
	[DetallesVenta] [int] IDENTITY(1,1) NOT NULL,
	[VentaId] [int] NOT NULL,
	[ProductoId] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DetallesVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 16/10/2023 06:17:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[FechaContratacion] [date] NOT NULL,
	[Salario] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormasDePago]    Script Date: 16/10/2023 06:17:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormasDePago](
	[FormaDePagoId] [int] IDENTITY(1,1) NOT NULL,
	[Mensualidades] [tinyint] NOT NULL,
	[Parcialidad] [money] NOT NULL,
	[TazaInteres] [decimal](5, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FormaDePagoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 16/10/2023 06:17:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[PagoId] [int] IDENTITY(1,1) NOT NULL,
	[FormaDePagoId] [int] NOT NULL,
	[FechaEstimadaDePago] [datetime] NOT NULL,
	[FechaPagoReal] [datetime] NULL,
	[Intereses] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[PagoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 16/10/2023 06:17:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoId] [int] IDENTITY(1,1) NOT NULL,
	[NombreProducto] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[Precio] [money] NOT NULL,
	[Stock] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductosCategorias]    Script Date: 16/10/2023 06:17:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductosCategorias](
	[ProductosCategoriasId] [int] IDENTITY(1,1) NOT NULL,
	[ProductoId] [int] NOT NULL,
	[CategoriaId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductosCategoriasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 16/10/2023 06:17:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[VentaId] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [int] NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[FechaVenta] [datetime] NOT NULL,
	[Total] [money] NOT NULL,
	[FormaDePago] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria], [Descripcion]) VALUES (2, N'Metal', N'Venta de accesorios hechos de metales preciosos')
INSERT [dbo].[Categorias] ([CategoriaId], [NombreCategoria], [Descripcion]) VALUES (3, N'NonMetal', N'Venta de accesorios que no estan fabricados de algun metal')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Apellido], [Direccion], [CorreoElectronico], [Telefono]) VALUES (1, N'Ezequiel', N'Lopez', N'Enrique Segoviano', N'Jano@yopmail.com', N'6622888999')
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Apellido], [Direccion], [CorreoElectronico], [Telefono]) VALUES (2, N'Conracas', N'Gomez', N'Puerta del rey', N'conrix@gmail.com', N'6621123456')
INSERT [dbo].[Clientes] ([ClienteId], [Nombre], [Apellido], [Direccion], [CorreoElectronico], [Telefono]) VALUES (3, N'Beto', N'Sierra', N'Periferico Norte', N'Betito12@hotmail.com', N'6623789456')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[DetallesVentas] ON 

INSERT [dbo].[DetallesVentas] ([DetallesVenta], [VentaId], [ProductoId], [Cantidad]) VALUES (1, 1, 2, 1)
SET IDENTITY_INSERT [dbo].[DetallesVentas] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [FechaContratacion], [Salario]) VALUES (1, N'Antonio', N'Rogel', CAST(N'2023-08-10' AS Date), CAST(10000.00 AS Decimal(10, 2)))
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [FechaContratacion], [Salario]) VALUES (2, N'Jose', N'Romero', CAST(N'2022-06-23' AS Date), CAST(10000.00 AS Decimal(10, 2)))
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Apellido], [FechaContratacion], [Salario]) VALUES (3, N'Teresa', N'Contreras', CAST(N'2016-02-25' AS Date), CAST(18000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[FormasDePago] ON 

INSERT [dbo].[FormasDePago] ([FormaDePagoId], [Mensualidades], [Parcialidad], [TazaInteres]) VALUES (1, 1, 900.0000, CAST(0.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[FormasDePago] OFF
GO
SET IDENTITY_INSERT [dbo].[Pagos] ON 

INSERT [dbo].[Pagos] ([PagoId], [FormaDePagoId], [FechaEstimadaDePago], [FechaPagoReal], [Intereses]) VALUES (1, 1, CAST(N'2023-10-16T00:00:00.000' AS DateTime), CAST(N'2023-10-16T00:00:00.000' AS DateTime), 0.0000)
SET IDENTITY_INSERT [dbo].[Pagos] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [Descripcion], [Precio], [Stock]) VALUES (1, N'Oro 10k', N'Piezas de joyeria de Oro de 10 quilates', 600.0000, 100)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [Descripcion], [Precio], [Stock]) VALUES (2, N'Oro 12k', N'Piezas de joyeria de Oro de 12 quilates', 900.0000, 100)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [Descripcion], [Precio], [Stock]) VALUES (3, N'Oro 14k', N'Piezas de joyeria de Oro de 14 quilates', 1200.0000, 100)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [Descripcion], [Precio], [Stock]) VALUES (4, N'Oro 18k', N'Piezas de joyeria de Oro de 18 quilates', 1800.0000, 80)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [Descripcion], [Precio], [Stock]) VALUES (5, N'Oro 24k', N'Piezas de joyeria de Oro de 24 quilates', 3000.0000, 50)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [Descripcion], [Precio], [Stock]) VALUES (6, N'Acero inoxidable', N'Joyeria de acero inoxidable', 300.0000, 300)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [Descripcion], [Precio], [Stock]) VALUES (7, N'Plastico', N'Joyeria de plastico o bisuteria en general', 100.0000, 500)
INSERT [dbo].[Productos] ([ProductoId], [NombreProducto], [Descripcion], [Precio], [Stock]) VALUES (8, N'Oro blanco 18k', N'Piezas de joyeria de Oro blanco solo 18 quilates', 2000.0000, 50)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductosCategorias] ON 

INSERT [dbo].[ProductosCategorias] ([ProductosCategoriasId], [ProductoId], [CategoriaId]) VALUES (1, 1, 2)
INSERT [dbo].[ProductosCategorias] ([ProductosCategoriasId], [ProductoId], [CategoriaId]) VALUES (2, 2, 2)
INSERT [dbo].[ProductosCategorias] ([ProductosCategoriasId], [ProductoId], [CategoriaId]) VALUES (3, 3, 2)
INSERT [dbo].[ProductosCategorias] ([ProductosCategoriasId], [ProductoId], [CategoriaId]) VALUES (4, 4, 2)
INSERT [dbo].[ProductosCategorias] ([ProductosCategoriasId], [ProductoId], [CategoriaId]) VALUES (5, 5, 2)
INSERT [dbo].[ProductosCategorias] ([ProductosCategoriasId], [ProductoId], [CategoriaId]) VALUES (6, 6, 2)
INSERT [dbo].[ProductosCategorias] ([ProductosCategoriasId], [ProductoId], [CategoriaId]) VALUES (7, 7, 3)
INSERT [dbo].[ProductosCategorias] ([ProductosCategoriasId], [ProductoId], [CategoriaId]) VALUES (8, 8, 2)
SET IDENTITY_INSERT [dbo].[ProductosCategorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Ventas] ON 

INSERT [dbo].[Ventas] ([VentaId], [ClienteId], [EmpleadoId], [FechaVenta], [Total], [FormaDePago]) VALUES (1, 1, 1, CAST(N'2023-10-16T12:00:00.000' AS DateTime), 900.0000, 1)
SET IDENTITY_INSERT [dbo].[Ventas] OFF
GO
ALTER TABLE [dbo].[DetallesVentas]  WITH CHECK ADD FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Productos] ([ProductoId])
GO
ALTER TABLE [dbo].[DetallesVentas]  WITH CHECK ADD FOREIGN KEY([VentaId])
REFERENCES [dbo].[Ventas] ([VentaId])
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD FOREIGN KEY([FormaDePagoId])
REFERENCES [dbo].[FormasDePago] ([FormaDePagoId])
GO
ALTER TABLE [dbo].[ProductosCategorias]  WITH CHECK ADD FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categorias] ([CategoriaId])
GO
ALTER TABLE [dbo].[ProductosCategorias]  WITH CHECK ADD FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Productos] ([ProductoId])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([ClienteId])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([FormaDePago])
REFERENCES [dbo].[FormasDePago] ([FormaDePagoId])
GO
