USE [master]
GO
/****** Object:  Database [TSZh]    Script Date: 14.02.2024 10:13:07 ******/
CREATE DATABASE [TSZh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TSZh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TSZh.mdf' , SIZE = 46272KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'TSZh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TSZh_log.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TSZh] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TSZh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TSZh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TSZh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TSZh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TSZh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TSZh] SET ARITHABORT OFF 
GO
ALTER DATABASE [TSZh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TSZh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TSZh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TSZh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TSZh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TSZh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TSZh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TSZh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TSZh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TSZh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TSZh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TSZh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TSZh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TSZh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TSZh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TSZh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TSZh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TSZh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TSZh] SET  MULTI_USER 
GO
ALTER DATABASE [TSZh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TSZh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TSZh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TSZh] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TSZh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TSZh] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TSZh] SET QUERY_STORE = OFF
GO
USE [TSZh]
GO
/****** Object:  Table [dbo].[SSMA$USysApplicationLog$local]    Script Date: 14.02.2024 10:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSMA$USysApplicationLog$local](
	[ID] [int] NOT NULL,
	[SourceObject] [nvarchar](255) NULL,
	[Data Macro Instance ID] [nvarchar](255) NULL,
	[Error Number] [int] NULL,
	[Category] [nvarchar](255) NULL,
	[Object Type] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Context] [nvarchar](255) NULL,
	[Created] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Данные о жильцах]    Script Date: 14.02.2024 10:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Данные о жильцах](
	[IDжильца] [int] NOT NULL,
	[Фамилия] [nvarchar](255) NULL,
	[Имя] [nvarchar](255) NULL,
	[Отчество] [nvarchar](255) NULL,
	[Дата_рождения] [datetime] NULL,
	[Дом] [nvarchar](255) NULL,
	[Квартира] [int] NULL,
	[Телефон] [nvarchar](255) NULL,
	[Фото] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Общий отчёт]    Script Date: 14.02.2024 10:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Общий отчёт](
	[Квартира] [int] NOT NULL,
	[Отопление] [int] NULL,
	[ГВС] [int] NULL,
	[ХВС] [int] NULL,
	[Содержание жилья] [int] NULL,
	[Электроэнергия] [int] NULL,
	[Дата] [datetime] NULL,
	[Дом] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Расчёт оплаты воды]    Script Date: 14.02.2024 10:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Расчёт оплаты воды](
	[Квартира] [int] NOT NULL,
	[Тариф на ХВС] [int] NULL,
	[Текущие показания] [int] NULL,
	[Предыдущие показания] [int] NULL,
	[Сумма платежа ХВС] [int] NULL,
	[Тариф на ГВС] [int] NULL,
	[Текущие показания:] [int] NULL,
	[Предыдущие показания:] [int] NULL,
	[Сумма платежа ГВС] [int] NULL,
	[Дом] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Расчёт оплаты эл]    Script Date: 14.02.2024 10:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Расчёт оплаты эл](
	[Квартира] [int] NULL,
	[Тариф за 1 кВт-часа(День)] [int] NULL,
	[Потребление в месяц] [int] NULL,
	[Предыдущие показания] [int] NULL,
	[Сумма платежа эл/э] [int] NULL,
	[Тариф за 1 кВт-часа(Ночь)] [int] NULL,
	[Потребление в месяц:] [int] NULL,
	[Предыдущие показания:] [int] NULL,
	[Сумма платежа эл/э:] [int] NULL,
	[Дом] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудники]    Script Date: 14.02.2024 10:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудники](
	[Фамилия] [nvarchar](255) NULL,
	[Имя] [nvarchar](255) NULL,
	[Отчество] [nvarchar](255) NULL,
	[Телефон] [nvarchar](255) NULL,
	[Логин] [nvarchar](255) NOT NULL,
	[Пароль] [nvarchar](255) NULL,
	[УровеньДоступа] [nvarchar](255) NULL,
	[Фото] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статус_оплаты]    Script Date: 14.02.2024 10:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статус_оплаты](
	[Квартира] [nvarchar](255) NOT NULL,
	[Отопление] [nvarchar](255) NULL,
	[ГВС] [nvarchar](255) NULL,
	[ХВС] [nvarchar](255) NULL,
	[Водоотведение] [nvarchar](255) NULL,
	[Содержание_жилья] [nvarchar](255) NULL,
	[Электроэнергия] [nvarchar](255) NULL,
	[Дата] [datetime] NULL,
	[Дом] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статус_оплаты_подстан]    Script Date: 14.02.2024 10:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статус_оплаты_подстан](
	[Статус_оплаты] [nvarchar](255) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [TSZh] SET  READ_WRITE 
GO
