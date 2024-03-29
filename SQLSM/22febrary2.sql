USE [TSZh]
GO
/****** Object:  Table [dbo].[SSMA$USysApplicationLog$local]    Script Date: 22.02.2024 10:32:59 ******/
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
/****** Object:  Table [dbo].[Данные о жильцах]    Script Date: 22.02.2024 10:32:59 ******/
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
/****** Object:  Table [dbo].[Общий отчёт]    Script Date: 22.02.2024 10:32:59 ******/
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
	[Дом] [nvarchar](255) NULL,
 CONSTRAINT [PK_Общий отчёт] PRIMARY KEY CLUSTERED 
(
	[Квартира] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Расчёт оплаты воды]    Script Date: 22.02.2024 10:32:59 ******/
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
/****** Object:  Table [dbo].[Расчёт оплаты эл]    Script Date: 22.02.2024 10:32:59 ******/
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
/****** Object:  Table [dbo].[Сотрудники]    Script Date: 22.02.2024 10:32:59 ******/
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
ALTER TABLE [dbo].[Расчёт оплаты воды]  WITH CHECK ADD  CONSTRAINT [FK_Расчёт оплаты воды_Общий отчёт] FOREIGN KEY([Квартира])
REFERENCES [dbo].[Общий отчёт] ([Квартира])
GO
ALTER TABLE [dbo].[Расчёт оплаты воды] CHECK CONSTRAINT [FK_Расчёт оплаты воды_Общий отчёт]
GO
ALTER TABLE [dbo].[Расчёт оплаты эл]  WITH CHECK ADD  CONSTRAINT [FK_Расчёт оплаты эл_Общий отчёт] FOREIGN KEY([Квартира])
REFERENCES [dbo].[Общий отчёт] ([Квартира])
GO
ALTER TABLE [dbo].[Расчёт оплаты эл] CHECK CONSTRAINT [FK_Расчёт оплаты эл_Общий отчёт]
GO
