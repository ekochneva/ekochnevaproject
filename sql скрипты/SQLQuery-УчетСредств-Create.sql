USE [Zkh]
GO

/****** Object:  Table [dbo].[�����������]    Script Date: 22.11.2018 13:17:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[�����������](
	[���_�����] [int] IDENTITY(1,1) NOT NULL,
	[���_����������] [int] NULL,
	[���_������] [int] NULL,
	[�����_�����������] [int] NULL,
	[�����_��������] [int] NULL,
	[��������] [nvarchar](max) NULL,
 CONSTRAINT [PK_�����������] PRIMARY KEY CLUSTERED 
(
	[���_�����] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[�����������]  WITH CHECK ADD  CONSTRAINT [FK_�����������_����������] FOREIGN KEY([���_����������])
REFERENCES [dbo].[����������] ([���_����������])
GO

ALTER TABLE [dbo].[�����������] CHECK CONSTRAINT [FK_�����������_����������]
GO

ALTER TABLE [dbo].[�����������]  WITH CHECK ADD  CONSTRAINT [FK_�����������_������] FOREIGN KEY([���_������])
REFERENCES [dbo].[������] ([���_������])
GO

ALTER TABLE [dbo].[�����������] CHECK CONSTRAINT [FK_�����������_������]
GO


