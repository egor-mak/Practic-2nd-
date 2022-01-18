USE [ArendaTC_]
GO

/****** Object:  Table [dbo].[Павильоны]    Script Date: 18.01.2022 13:32:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Павильоны](
	[ID] [numeric](18, 0) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PavilionNumber] [nchar](10) NOT NULL,
	[Floor] [nchar](10) NULL,
	[Status] [varchar](50) NULL,
	[Square] [nchar](10) NULL,
	[Cost] [nchar](10) NULL,
	[Coefficient] [nchar](10) NULL,
 CONSTRAINT [PK_Павильоны] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

