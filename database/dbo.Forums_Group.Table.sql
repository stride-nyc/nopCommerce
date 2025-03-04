USE [nopCommerce]
GO
/****** Object:  Table [dbo].[Forums_Group]    Script Date: 10/28/2024 1:32:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forums_Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedOnUtc] [datetime2](6) NOT NULL,
	[UpdatedOnUtc] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_Forums_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Forums_Group_DisplayOrder]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Forums_Group_DisplayOrder] ON [dbo].[Forums_Group]
(
	[DisplayOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
