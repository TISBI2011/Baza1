USE [PassengerTransport]
GO
/****** Object:  Table [dbo].[AvtoPark]    Script Date: 04.04.2024 22:15:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AvtoPark](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SvobodnieMesta] [int] NOT NULL,
	[ZanyatieMesta] [int] NOT NULL,
	[Adress] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AvtoPark] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Konductor]    Script Date: 04.04.2024 22:15:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Konductor](
	[IdSotrudnika] [int] IDENTITY(1,1) NOT NULL,
	[Zarplata] [nvarchar](50) NOT NULL,
	[Staj] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Konductor] PRIMARY KEY CLUSTERED 
(
	[IdSotrudnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marshrut]    Script Date: 04.04.2024 22:15:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marshrut](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdVitTransporta] [int] NOT NULL,
	[Time] [nvarchar](25) NOT NULL,
	[IdKonductor] [int] NOT NULL,
 CONSTRAINT [PK_Marshrut] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ostanovka]    Script Date: 04.04.2024 22:15:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ostanovka](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ostanovka] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perevozka]    Script Date: 04.04.2024 22:15:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perevozka](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTransporta] [int] NOT NULL,
	[IdVoditel] [int] NOT NULL,
	[PunctNaznacheniya] [nvarchar](25) NOT NULL,
	[Data] [date] NOT NULL,
 CONSTRAINT [PK_Perevozka] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudnik]    Script Date: 04.04.2024 22:15:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudnik](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
	[LastName] [nvarchar](25) NOT NULL,
	[Age] [int] NOT NULL,
	[Login] [nvarchar](25) NOT NULL,
	[Parol] [nvarchar](25) NOT NULL,
	[Telephone] [int] NOT NULL,
 CONSTRAINT [PK_Sotrudnik] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SvyazMnogoKoMnogim]    Script Date: 04.04.2024 22:15:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SvyazMnogoKoMnogim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMarshruta] [int] NOT NULL,
	[IdOstanovki] [int] NOT NULL,
 CONSTRAINT [PK_SvyazMnogoKoMnogim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transport]    Script Date: 04.04.2024 22:15:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdVoditel] [int] NOT NULL,
	[IdVidTransporta] [int] NOT NULL,
	[IdAvtoPark] [int] NOT NULL,
	[DataPokupki] [date] NOT NULL,
 CONSTRAINT [PK_Transport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VidTransporta]    Script Date: 04.04.2024 22:15:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VidTransporta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TipTransporta] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_VidTransporta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voditel]    Script Date: 04.04.2024 22:15:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voditel](
	[IdSotrudnika] [int] IDENTITY(1,1) NOT NULL,
	[NomerLicenzii] [int] NOT NULL,
	[Zarplata] [money] NOT NULL,
	[Staj] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Voditel] PRIMARY KEY CLUSTERED 
(
	[IdSotrudnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Konductor]  WITH CHECK ADD  CONSTRAINT [FK_Konductor_Sotrudnik] FOREIGN KEY([IdSotrudnika])
REFERENCES [dbo].[Sotrudnik] ([Id])
GO
ALTER TABLE [dbo].[Konductor] CHECK CONSTRAINT [FK_Konductor_Sotrudnik]
GO
ALTER TABLE [dbo].[Marshrut]  WITH CHECK ADD  CONSTRAINT [FK_Marshrut_VidTransporta] FOREIGN KEY([IdVitTransporta])
REFERENCES [dbo].[VidTransporta] ([Id])
GO
ALTER TABLE [dbo].[Marshrut] CHECK CONSTRAINT [FK_Marshrut_VidTransporta]
GO
ALTER TABLE [dbo].[Perevozka]  WITH CHECK ADD  CONSTRAINT [FK_Perevozka_Transport] FOREIGN KEY([IdTransporta])
REFERENCES [dbo].[Transport] ([Id])
GO
ALTER TABLE [dbo].[Perevozka] CHECK CONSTRAINT [FK_Perevozka_Transport]
GO
ALTER TABLE [dbo].[Perevozka]  WITH CHECK ADD  CONSTRAINT [FK_Perevozka_Voditel] FOREIGN KEY([IdVoditel])
REFERENCES [dbo].[Voditel] ([IdSotrudnika])
GO
ALTER TABLE [dbo].[Perevozka] CHECK CONSTRAINT [FK_Perevozka_Voditel]
GO
ALTER TABLE [dbo].[SvyazMnogoKoMnogim]  WITH CHECK ADD  CONSTRAINT [FK_SvyazMnogoKoMnogim_Marshrut] FOREIGN KEY([IdMarshruta])
REFERENCES [dbo].[Marshrut] ([Id])
GO
ALTER TABLE [dbo].[SvyazMnogoKoMnogim] CHECK CONSTRAINT [FK_SvyazMnogoKoMnogim_Marshrut]
GO
ALTER TABLE [dbo].[SvyazMnogoKoMnogim]  WITH CHECK ADD  CONSTRAINT [FK_SvyazMnogoKoMnogim_Ostanovka] FOREIGN KEY([IdOstanovki])
REFERENCES [dbo].[Ostanovka] ([Id])
GO
ALTER TABLE [dbo].[SvyazMnogoKoMnogim] CHECK CONSTRAINT [FK_SvyazMnogoKoMnogim_Ostanovka]
GO
ALTER TABLE [dbo].[Transport]  WITH CHECK ADD  CONSTRAINT [FK_Transport_AvtoPark] FOREIGN KEY([IdAvtoPark])
REFERENCES [dbo].[AvtoPark] ([Id])
GO
ALTER TABLE [dbo].[Transport] CHECK CONSTRAINT [FK_Transport_AvtoPark]
GO
ALTER TABLE [dbo].[Transport]  WITH CHECK ADD  CONSTRAINT [FK_Transport_VidTransporta] FOREIGN KEY([IdVidTransporta])
REFERENCES [dbo].[VidTransporta] ([Id])
GO
ALTER TABLE [dbo].[Transport] CHECK CONSTRAINT [FK_Transport_VidTransporta]
GO
ALTER TABLE [dbo].[Transport]  WITH CHECK ADD  CONSTRAINT [FK_Transport_Voditel] FOREIGN KEY([IdVoditel])
REFERENCES [dbo].[Voditel] ([IdSotrudnika])
GO
ALTER TABLE [dbo].[Transport] CHECK CONSTRAINT [FK_Transport_Voditel]
GO
ALTER TABLE [dbo].[Voditel]  WITH CHECK ADD  CONSTRAINT [FK_Voditel_Sotrudnik] FOREIGN KEY([IdSotrudnika])
REFERENCES [dbo].[Sotrudnik] ([Id])
GO
ALTER TABLE [dbo].[Voditel] CHECK CONSTRAINT [FK_Voditel_Sotrudnik]
GO
