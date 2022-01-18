USE [ArendaTC_]
GO

/****** Object:  Table [dbo].[Аренда]    Script Date: 18.01.2022 13:32:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Аренда](
	[RentID] [numeric](18, 0) NOT NULL,
	[RenterID] [nchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[EmployeeID] [nchar](10) NOT NULL,
	[PavilionNumber] [nchar](10) NULL,
	[Status] [ntext] NULL,
	[RentStart] [nchar](10) NULL,
	[RentEnd] [nchar](10) NULL,
 CONSTRAINT [PK_Аренда] PRIMARY KEY CLUSTERED 
(
	[RentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

