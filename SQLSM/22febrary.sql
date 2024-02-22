USE [master]
GO

/****** Object:  Database [TSZh]    Script Date: 22.02.2024 10:29:53 ******/
DROP DATABASE [TSZh]
GO

/****** Object:  Database [TSZh]    Script Date: 22.02.2024 10:29:53 ******/
CREATE DATABASE [TSZh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TSZh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TSZh.mdf' , SIZE = 46272KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'TSZh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TSZh_log.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
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

ALTER DATABASE [TSZh] SET  READ_WRITE 
GO

