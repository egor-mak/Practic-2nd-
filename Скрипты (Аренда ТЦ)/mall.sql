USE [ArendaTC_]
GO

/****** Object:  Table [dbo].[ТЦ]    Script Date: 18.01.2022 13:33:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ТЦ](
	[Name] [nvarchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[PavilionAmount] [nchar](10) NULL,
	[City] [nvarchar](50) NULL,
	[Cost] [nvarchar](50) NULL,
	[Coefficient] [nchar](10) NULL,
	[StoreysNumber] [nchar](10) NULL,
	[Photo] [image] NULL,
 CONSTRAINT [PK_ТЦ] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ТЦ]  WITH CHECK ADD  CONSTRAINT [FK_ТЦ_ТЦ] FOREIGN KEY([Name])
REFERENCES [dbo].[ТЦ] ([Name])
GO

ALTER TABLE [dbo].[ТЦ] CHECK CONSTRAINT [FK_ТЦ_ТЦ]
GO

