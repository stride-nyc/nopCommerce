USE [nopCommerce]
GO
/****** Object:  Table [dbo].[ZettleRecord]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZettleRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Active] [bit] NOT NULL,
	[Uuid] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[VariantUuid] [nvarchar](max) NULL,
	[CombinationId] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[OperationTypeId] [int] NOT NULL,
	[PriceSyncEnabled] [bit] NOT NULL,
	[ImageSyncEnabled] [bit] NOT NULL,
	[InventoryTrackingEnabled] [bit] NOT NULL,
	[ExternalUuid] [nvarchar](max) NULL,
	[UpdatedOnUtc] [datetime2](6) NULL,
 CONSTRAINT [PK_ZettleRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
