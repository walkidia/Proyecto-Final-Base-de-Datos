USE [master]
GO
/****** WALKIDIA A. RODRIGUEZ 16-MIIN-1-185 SEECION 0541 ******/

CREATE DATABASE [LibreriaOnline]
 
USE [LibreriaOnline]
GO
/****** Object:  Table [dbo].[cajeros]    Script Date: 29/8/2020 10:38:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajeros](
	[ID] [int] NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Apellido] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC,
	[Apellido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 29/8/2020 10:38:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[NoDeMiembro] [int] NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Apellido] [varchar](255) NOT NULL,
	[Fecha] [datetime] NULL,
	[Codigo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC,
	[Apellido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 29/8/2020 10:38:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[NoDeMiembro] [int] NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Apellido] [varchar](255) NOT NULL,
	[Matricula] [varchar](255) NULL,
	[Direccion] [varchar](255) NULL,
	[ciudad] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC,
	[Apellido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 29/8/2020 10:38:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[BookID] [varchar](255) NULL,
	[Libro] [varchar](255) NULL,
	[Autor] [varchar](255) NULL,
	[ISBN] [varchar](255) NULL,
	[Codigo] [varchar](255) NOT NULL,
	[Seccion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaccion]    Script Date: 29/8/2020 10:38:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaccion](
	[TransaccionID] [int] NULL,
	[Cajero] [varchar](255) NOT NULL,
	[ProductID] [varchar](255) NOT NULL,
	[Metodo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cajero] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cajeros] ([ID], [Nombre], [Apellido]) VALUES (9, N'Angel', N'Luna')
INSERT [dbo].[cajeros] ([ID], [Nombre], [Apellido]) VALUES (8, N'Brandon', N'D Oleo')
INSERT [dbo].[cajeros] ([ID], [Nombre], [Apellido]) VALUES (6, N'Lorena', N'Martinez')
INSERT [dbo].[cajeros] ([ID], [Nombre], [Apellido]) VALUES (2, N'Luis', N'Toribio')
INSERT [dbo].[cajeros] ([ID], [Nombre], [Apellido]) VALUES (10, N'Mariela', N'Ramos')
INSERT [dbo].[cajeros] ([ID], [Nombre], [Apellido]) VALUES (1, N'Milagros', N'Ramirez')
INSERT [dbo].[cajeros] ([ID], [Nombre], [Apellido]) VALUES (4, N'Norma', N'Jorge')
INSERT [dbo].[cajeros] ([ID], [Nombre], [Apellido]) VALUES (3, N'Pablo', N'Polanco')
INSERT [dbo].[cajeros] ([ID], [Nombre], [Apellido]) VALUES (5, N'Paola', N'Ramirez')
INSERT [dbo].[cajeros] ([ID], [Nombre], [Apellido]) VALUES (7, N'Theo', N'Polanco')
GO
INSERT [dbo].[Compras] ([NoDeMiembro], [Nombre], [Apellido], [Fecha], [Codigo]) VALUES (7, N'Alfonso', N'Sanchez', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'BH83-V26Y-VD74-FWE5')
INSERT [dbo].[Compras] ([NoDeMiembro], [Nombre], [Apellido], [Fecha], [Codigo]) VALUES (2, N'Diego', N'Almanzar', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'N9TT-9G0A-B7FQ-RANC')
INSERT [dbo].[Compras] ([NoDeMiembro], [Nombre], [Apellido], [Fecha], [Codigo]) VALUES (5, N'Felipe', N'Martinez', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'NHLE-L6MI-4GE4-ETEV')
INSERT [dbo].[Compras] ([NoDeMiembro], [Nombre], [Apellido], [Fecha], [Codigo]) VALUES (6, N'Jordan', N'Sanchez', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'6ETI-UIL2-9WAX-XHYO')
INSERT [dbo].[Compras] ([NoDeMiembro], [Nombre], [Apellido], [Fecha], [Codigo]) VALUES (9, N'Lissette', N'Polanco', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'C8YH-PLDP-N4DK-MVX9')
INSERT [dbo].[Compras] ([NoDeMiembro], [Nombre], [Apellido], [Fecha], [Codigo]) VALUES (8, N'Lorena', N'Santos', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'TX79-2YSW-46LA-KPUB')
INSERT [dbo].[Compras] ([NoDeMiembro], [Nombre], [Apellido], [Fecha], [Codigo]) VALUES (4, N'Marta', N'Ramirez', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'XNSS-HSJW-3NGU-8XTJ')
INSERT [dbo].[Compras] ([NoDeMiembro], [Nombre], [Apellido], [Fecha], [Codigo]) VALUES (10, N'Norberto', N'Lima', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'B5ZA-6CN3-E939-DD3Y')
INSERT [dbo].[Compras] ([NoDeMiembro], [Nombre], [Apellido], [Fecha], [Codigo]) VALUES (3, N'Stella', N'Park', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'SXFP-CHYK-ONI6-S89U')
INSERT [dbo].[Compras] ([NoDeMiembro], [Nombre], [Apellido], [Fecha], [Codigo]) VALUES (1, N'Walkidia', N'Rodriguez', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'QK6A-JI6S-7ETR-0A6C')
GO
INSERT [dbo].[Estudiantes] ([NoDeMiembro], [Nombre], [Apellido], [Matricula], [Direccion], [ciudad]) VALUES (7, N'Alfonso', N'Sanchez', N'16-EIIT-1-099', N'C/Perla no 09 ', N'San Cristobal')
INSERT [dbo].[Estudiantes] ([NoDeMiembro], [Nombre], [Apellido], [Matricula], [Direccion], [ciudad]) VALUES (2, N'Diego', N'Almanzar', N'17-SIIN-1-185', N'C/Sol no 5', N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([NoDeMiembro], [Nombre], [Apellido], [Matricula], [Direccion], [ciudad]) VALUES (5, N'Felipe', N'Martinez', N'16-EIIN-1-562', N'C/Sanchez no 267 ', N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([NoDeMiembro], [Nombre], [Apellido], [Matricula], [Direccion], [ciudad]) VALUES (6, N'Jordan', N'Sanchez', N'15-SIIN-1-525', N'C/Girasoles 7 ', N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([NoDeMiembro], [Nombre], [Apellido], [Matricula], [Direccion], [ciudad]) VALUES (9, N'Lissette', N'Polanco', N'15-EIIN-1-002', N'Carretera Duarte km 11 ', N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([NoDeMiembro], [Nombre], [Apellido], [Matricula], [Direccion], [ciudad]) VALUES (8, N'Lorena', N'Santos', N'19-SIIT-1-087', N'Av. Independencia Km 8 no 768 ', N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([NoDeMiembro], [Nombre], [Apellido], [Matricula], [Direccion], [ciudad]) VALUES (4, N'Marta', N'Ramirez', N'12-MIIN-1-008', N'C/Cansino 6 ', N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([NoDeMiembro], [Nombre], [Apellido], [Matricula], [Direccion], [ciudad]) VALUES (10, N'Norberto', N'Lima', N'16-SIIN-1-005', N'Av. Venezuela No 098 ', N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([NoDeMiembro], [Nombre], [Apellido], [Matricula], [Direccion], [ciudad]) VALUES (3, N'Stella', N'Park', N'18-EIIT-1-009', N'C/Diamenate no 15 ', N'Santo Domingo')
INSERT [dbo].[Estudiantes] ([NoDeMiembro], [Nombre], [Apellido], [Matricula], [Direccion], [ciudad]) VALUES (1, N'Walkidia', N'Rodriguez', N'16-MIIN-1-185', N'C/Los Olivos no 250 ', N'Santo Domingo')
GO
INSERT [dbo].[Libros] ([BookID], [Libro], [Autor], [ISBN], [Codigo], [Seccion]) VALUES (N'LSEC-1', N'LA SINGULARIDAD ESTA CERCA', N'Ray Kurzweil', N'9783944203010', N'6ETI-UIL2-9WAX-XHYO', N'Libros de Ciencia')
INSERT [dbo].[Libros] ([BookID], [Libro], [Autor], [ISBN], [Codigo], [Seccion]) VALUES (N'PRASTOS-06', N'PARÁSITOS', N'CARL ZIMMER', N'9788494548178', N'B5ZA-6CN3-E939-DD3Y', N'Libros de Ciencia')
INSERT [dbo].[Libros] ([BookID], [Libro], [Autor], [ISBN], [Codigo], [Seccion]) VALUES (N'COVID-19A', N'VIRUS: NI VIVOS NI MUERTOS', N'JOSE ANTONIO LOPEZ GUERRERO', N'9788494778629', N'BH83-V26Y-VD74-FWE5', N'Libro de Ciencia')
INSERT [dbo].[Libros] ([BookID], [Libro], [Autor], [ISBN], [Codigo], [Seccion]) VALUES (N'GNTENML-089', N'GENTE NORMAL', N'SALLY ROONEY', N'9788439736318', N'C8YH-PLDP-N4DK-MVX9', N'Libros de Ciencia Ficcion')
INSERT [dbo].[Libros] ([BookID], [Libro], [Autor], [ISBN], [Codigo], [Seccion]) VALUES (N'PNMRR-4', N'PROHIBIDO NACER: MEMORIAS DE RACISMO, RABIA Y RISA ', N'TREVOR NOAH', N'9788417059125', N'N9TT-9G0A-B7FQ-RANC', N'Sociologia')
INSERT [dbo].[Libros] ([BookID], [Libro], [Autor], [ISBN], [Codigo], [Seccion]) VALUES (N'PPLTNTA-5', N'PAPEL Y TINTA ', N'MARIA REIG', N'9788491293538', N'NHLE-L6MI-4GE4-ETEV', N'Libros de cuentos')
INSERT [dbo].[Libros] ([BookID], [Libro], [Autor], [ISBN], [Codigo], [Seccion]) VALUES (N'ENGMA-6', N'EL ENIGMA DE LA HABITACIÓN 622 ', N'JOËL DICKER', N'9788420439396', N'QK6A-JI6S-7ETR-0A6C', N'Libros de suspenso')
INSERT [dbo].[Libros] ([BookID], [Libro], [Autor], [ISBN], [Codigo], [Seccion]) VALUES (N'FMLIACRO-5', N'FAMILIA ZERO', N'IÑAKI PIÑUEL', N'9788491648321', N'SXFP-CHYK-ONI6-S89U ', N'Libros de Psicologia')
INSERT [dbo].[Libros] ([BookID], [Libro], [Autor], [ISBN], [Codigo], [Seccion]) VALUES (N'TSTC-2', N'TRASATLÁNTICO', N'DAVID CRUZ', N'9789930519196', N'SXNSS-HSJW-3NGU-8XTJ', N'Libros de Aventuras')
INSERT [dbo].[Libros] ([BookID], [Libro], [Autor], [ISBN], [Codigo], [Seccion]) VALUES (N'COVID-19B', N'UN PLANETA DE VIRUS', N'CARL ZIMMER ', N'9788412197921', N'TX79-2YSW-46LA-KPU', N'Libro de Ciencia')
GO
INSERT [dbo].[Transaccion] ([TransaccionID], [Cajero], [ProductID], [Metodo]) VALUES (9, N'Angel Luna', N'SXNSS-HSJW-3NGU-8XTJ', N'Tarjeta')
INSERT [dbo].[Transaccion] ([TransaccionID], [Cajero], [ProductID], [Metodo]) VALUES (8, N'Brandon D Oleo', N'SXFP-CHYK-ONI6-S89U', N'Tarjeta')
INSERT [dbo].[Transaccion] ([TransaccionID], [Cajero], [ProductID], [Metodo]) VALUES (6, N'Lorena Martinez', N'NHLE-L6MI-4GE4-ETEV', N'Tarjeta')
INSERT [dbo].[Transaccion] ([TransaccionID], [Cajero], [ProductID], [Metodo]) VALUES (2, N'Luis', N'B5ZA-6CN3-E939-DD3Y', N'Tarjeta')
INSERT [dbo].[Transaccion] ([TransaccionID], [Cajero], [ProductID], [Metodo]) VALUES (10, N'Mariela Ramos', N'TX79-2YSW-46LA-KPU', N'Efectivo')
INSERT [dbo].[Transaccion] ([TransaccionID], [Cajero], [ProductID], [Metodo]) VALUES (1, N'Milagros Ramirez', N'6ETI-UIL2-9WAX-XHYO', N'Tarjeta')
INSERT [dbo].[Transaccion] ([TransaccionID], [Cajero], [ProductID], [Metodo]) VALUES (4, N'Norma Jorge', N'C8YH-PLDP-N4DK-MVX9', N'Efectivo')
INSERT [dbo].[Transaccion] ([TransaccionID], [Cajero], [ProductID], [Metodo]) VALUES (3, N'Pablo', N'BH83-V26Y-VD74-FWE5', N'Tarjeta')
INSERT [dbo].[Transaccion] ([TransaccionID], [Cajero], [ProductID], [Metodo]) VALUES (5, N'Paola Ramirez', N'N9TT-9G0A-B7FQ-RANC', N'Tarjeta')
INSERT [dbo].[Transaccion] ([TransaccionID], [Cajero], [ProductID], [Metodo]) VALUES (7, N'Theo Polanco', N'QK6A-JI6S-7ETR-0A6C', N'Efectivo')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Compras__F169335062233587]    Script Date: 29/8/2020 10:38:06 p. m. ******/
ALTER TABLE [dbo].[Compras] ADD UNIQUE NONCLUSTERED 
(
	[Codigo] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Estudiantes]  WITH CHECK ADD  CONSTRAINT [FK_Estudiantescompras] FOREIGN KEY([Nombre], [Apellido])
REFERENCES [dbo].[Compras] ([Nombre], [Apellido])
GO
ALTER TABLE [dbo].[Estudiantes] CHECK CONSTRAINT [FK_Estudiantescompras]
GO
USE [master]
GO
ALTER DATABASE [LibreriaOnline] SET  READ_WRITE 
GO
