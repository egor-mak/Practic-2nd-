USE [ArendaTC_]
GO

/****** Object:  Table [dbo].[Сотрудники]    Script Date: 18.01.2022 13:33:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Сотрудники](
	[ID] [numeric](18, 0) NOT NULL,
	[FIO] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nchar](10) NULL,
	[Role] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Photo] [image] NULL,
 CONSTRAINT [PK_Сотрудники] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

