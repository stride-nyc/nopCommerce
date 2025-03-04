USE [nopCommerce]
GO
/****** Object:  Table [dbo].[StorePickupPoint]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorePickupPoint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Latitude] [decimal](18, 8) NULL,
	[Longitude] [decimal](18, 8) NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[AddressId] [int] NOT NULL,
	[PickupFee] [decimal](18, 4) NOT NULL,
	[OpeningHours] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[TransitDays] [int] NULL,
 CONSTRAINT [PK_StorePickupPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
