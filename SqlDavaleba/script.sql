USE [master]
GO
/****** Object:  Database [savarjisho_darbazebis_qseli]    Script Date: 10/22/2019 12:45:03 PM ******/
CREATE DATABASE [savarjisho_darbazebis_qseli]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'savarjisho_darbazebis_qseli', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\savarjisho_darbazebis_qseli.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'savarjisho_darbazebis_qseli_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\savarjisho_darbazebis_qseli_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [savarjisho_darbazebis_qseli].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET ARITHABORT OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET  DISABLE_BROKER 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET  MULTI_USER 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET DB_CHAINING OFF 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET DELAYED_DURABILITY = DISABLED 
GO
USE [savarjisho_darbazebis_qseli]
GO
/****** Object:  Table [dbo].[Abonimentebi]    Script Date: 10/22/2019 12:45:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abonimentebi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fasi] [money] NULL,
	[vada] [int] NULL,
 CONSTRAINT [PK_Abonimentebi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Darbazi]    Script Date: 10/22/2019 12:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Darbazi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[misamarti] [nvarchar](50) NULL,
	[partobi] [int] NULL,
	[qiris_pasi] [money] NULL,
 CONSTRAINT [PK_Darbazi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[darbazi-inventari]    Script Date: 10/22/2019 12:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[darbazi-inventari](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[darbazi_fk] [int] NULL,
	[inventari_fk] [int] NULL,
	[raodenoba] [int] NULL,
	[shemotanis_tarigi] [date] NULL,
 CONSTRAINT [PK_darbazi-inventari] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[darbazi-sport_kveba]    Script Date: 10/22/2019 12:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[darbazi-sport_kveba](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[darbazi_fk] [int] NULL,
	[sport_kveba_fk] [int] NULL,
	[raodenoba] [int] NULL,
	[shemotanist_tarigi] [date] NULL,
 CONSTRAINT [PK_darbazi-sport_kveba] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[inventari]    Script Date: 10/22/2019 12:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventari](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dasaxeleba] [nvarchar](50) NULL,
	[fasi] [money] NULL,
	[momwodebeli_fk] [int] NULL,
 CONSTRAINT [PK_inventari] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Klientebi]    Script Date: 10/22/2019 12:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Klientebi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[saxeli] [nvarchar](50) NULL,
	[gvari] [nvarchar](50) NULL,
	[pir_nomeri] [varchar](50) NULL,
	[gadaxdis_tarigi] [date] NULL,
	[darbazi_fk] [int] NULL,
	[abonimenti_fk] [int] NULL,
 CONSTRAINT [PK_Klientebi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[momwodebeli]    Script Date: 10/22/2019 12:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[momwodebeli](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dasaxeleba] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[tel] [nvarchar](50) NULL,
	[misamarti] [text] NULL,
 CONSTRAINT [PK_momwodebeli] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sport_kveba]    Script Date: 10/22/2019 12:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sport_kveba](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dasaxeleba] [nvarchar](50) NULL,
	[fasi] [money] NULL,
	[momwodebeli_fk] [int] NULL,
 CONSTRAINT [PK_sport_kveba] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tanamshromeli]    Script Date: 10/22/2019 12:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tanamshromeli](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[saxeli] [nvarchar](50) NULL,
	[gvari] [nvarchar](50) NULL,
	[tel] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[xelpasi] [money] NULL,
	[pozicia] [nvarchar](50) NULL,
	[darbazi_fk] [int] NULL,
 CONSTRAINT [PK_Tanamshromeli] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[test]    Script Date: 10/22/2019 12:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[test]
AS
SELECT        dbo.sport_kveba.dasaxeleba, dbo.Darbazi.misamarti, dbo.[darbazi-sport_kveba].raodenoba, dbo.[darbazi-sport_kveba].shemotanist_tarigi, dbo.sport_kveba.fasi
FROM            dbo.Darbazi INNER JOIN
                         dbo.sport_kveba ON dbo.Darbazi.id = dbo.sport_kveba.id INNER JOIN
                         dbo.[darbazi-sport_kveba] ON dbo.Darbazi.id = dbo.[darbazi-sport_kveba].darbazi_fk AND dbo.sport_kveba.id = dbo.[darbazi-sport_kveba].sport_kveba_fk

GO
ALTER TABLE [dbo].[darbazi-inventari]  WITH CHECK ADD  CONSTRAINT [FK_darbazi-inventari_Darbazi] FOREIGN KEY([darbazi_fk])
REFERENCES [dbo].[Darbazi] ([id])
GO
ALTER TABLE [dbo].[darbazi-inventari] CHECK CONSTRAINT [FK_darbazi-inventari_Darbazi]
GO
ALTER TABLE [dbo].[darbazi-inventari]  WITH CHECK ADD  CONSTRAINT [FK_darbazi-inventari_inventari] FOREIGN KEY([inventari_fk])
REFERENCES [dbo].[inventari] ([id])
GO
ALTER TABLE [dbo].[darbazi-inventari] CHECK CONSTRAINT [FK_darbazi-inventari_inventari]
GO
ALTER TABLE [dbo].[darbazi-sport_kveba]  WITH CHECK ADD  CONSTRAINT [FK_darbazi-sport_kveba_Darbazi] FOREIGN KEY([darbazi_fk])
REFERENCES [dbo].[Darbazi] ([id])
GO
ALTER TABLE [dbo].[darbazi-sport_kveba] CHECK CONSTRAINT [FK_darbazi-sport_kveba_Darbazi]
GO
ALTER TABLE [dbo].[darbazi-sport_kveba]  WITH CHECK ADD  CONSTRAINT [FK_darbazi-sport_kveba_sport_kveba] FOREIGN KEY([sport_kveba_fk])
REFERENCES [dbo].[sport_kveba] ([id])
GO
ALTER TABLE [dbo].[darbazi-sport_kveba] CHECK CONSTRAINT [FK_darbazi-sport_kveba_sport_kveba]
GO
ALTER TABLE [dbo].[inventari]  WITH CHECK ADD  CONSTRAINT [FK_inventari_momwodebeli] FOREIGN KEY([momwodebeli_fk])
REFERENCES [dbo].[momwodebeli] ([id])
GO
ALTER TABLE [dbo].[inventari] CHECK CONSTRAINT [FK_inventari_momwodebeli]
GO
ALTER TABLE [dbo].[Klientebi]  WITH CHECK ADD  CONSTRAINT [FK_Klientebi_Abonimentebi] FOREIGN KEY([abonimenti_fk])
REFERENCES [dbo].[Abonimentebi] ([id])
GO
ALTER TABLE [dbo].[Klientebi] CHECK CONSTRAINT [FK_Klientebi_Abonimentebi]
GO
ALTER TABLE [dbo].[Klientebi]  WITH CHECK ADD  CONSTRAINT [FK_Klientebi_Darbazi] FOREIGN KEY([darbazi_fk])
REFERENCES [dbo].[Darbazi] ([id])
GO
ALTER TABLE [dbo].[Klientebi] CHECK CONSTRAINT [FK_Klientebi_Darbazi]
GO
ALTER TABLE [dbo].[sport_kveba]  WITH CHECK ADD  CONSTRAINT [FK_sport_kveba_momwodebeli] FOREIGN KEY([momwodebeli_fk])
REFERENCES [dbo].[momwodebeli] ([id])
GO
ALTER TABLE [dbo].[sport_kveba] CHECK CONSTRAINT [FK_sport_kveba_momwodebeli]
GO
ALTER TABLE [dbo].[Tanamshromeli]  WITH CHECK ADD  CONSTRAINT [FK_Tanamshromeli_Darbazi] FOREIGN KEY([darbazi_fk])
REFERENCES [dbo].[Darbazi] ([id])
GO
ALTER TABLE [dbo].[Tanamshromeli] CHECK CONSTRAINT [FK_Tanamshromeli_Darbazi]
GO
/****** Object:  StoredProcedure [dbo].[stpInsertClient]    Script Date: 10/22/2019 12:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[stpInsertClient]
	@firstname nvarchar(50),
	@lastname nvarchar(50),
	@idn nvarchar(50),
	@date date,
	@gym_id int,
	@aboniment_id int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.Klientebi(saxeli, gvari, pir_nomeri, gadaxdis_tarigi, darbazi_fk, abonimenti_fk) 
	VALUES (@firstname, @lastname, @idn, @date, @gym_id, @aboniment_id)
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Darbazi"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sport_kveba"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 427
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "darbazi-sport_kveba"
            Begin Extent = 
               Top = 16
               Left = 503
               Bottom = 146
               Right = 689
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'test'
GO
USE [master]
GO
ALTER DATABASE [savarjisho_darbazebis_qseli] SET  READ_WRITE 
GO
