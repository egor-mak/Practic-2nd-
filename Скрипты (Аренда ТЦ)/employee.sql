USE [ArendaTC]
GO
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