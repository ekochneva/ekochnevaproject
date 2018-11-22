USE [Zkh]
GO

/****** Object:  Table [dbo].[Жильцы]    Script Date: 22.11.2018 12:52:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Жильцы](
	[Код_жильца] [int] IDENTITY(1,1) NOT NULL,
	[Код_объекта] [int] NULL,
	[ФИО] [nvarchar](50) NULL,
	[Дата_рождения] [date] NULL,
	[Дата_заселения] [date] NULL,
	[Номер_квартиры] [int] NULL,
 CONSTRAINT [PK_Жильцы] PRIMARY KEY CLUSTERED 
(
	[Код_жильца] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Жильцы]  WITH CHECK ADD  CONSTRAINT [FK_Жильцы_Объекты] FOREIGN KEY([Код_объекта])
REFERENCES [dbo].[Объекты] ([Код_объекта])
GO

ALTER TABLE [dbo].[Жильцы] CHECK CONSTRAINT [FK_Жильцы_Объекты]
GO


