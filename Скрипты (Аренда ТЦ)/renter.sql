USE [ArendaTC_]
GO

/****** Object:  Table [dbo].[Арендаторы]    Script Date: 18.01.2022 13:32:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Арендаторы](
	[RenterID] [numeric](18, 0) NOT NULL,
	[RentID] [numeric](18, 0) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Арендаторы] PRIMARY KEY CLUSTERED 
(
	[RenterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

