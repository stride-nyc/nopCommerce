USE [nopCommerce]
GO
/****** Object:  Table [dbo].[RewardPointsHistory]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RewardPointsHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[Points] [int] NOT NULL,
	[PointsBalance] [int] NULL,
	[UsedAmount] [decimal](18, 4) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[CreatedOnUtc] [datetime2](6) NOT NULL,
	[EndDateUtc] [datetime2](6) NULL,
	[ValidPoints] [int] NULL,
	[UsedWithOrder] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RewardPointsHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_RewardPointsHistory_CustomerId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_RewardPointsHistory_CustomerId] ON [dbo].[RewardPointsHistory]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RewardPointsHistory]  WITH CHECK ADD  CONSTRAINT [FK_RewardPointsHistory_CustomerId_Customer_Id] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RewardPointsHistory] CHECK CONSTRAINT [FK_RewardPointsHistory_CustomerId_Customer_Id]
GO
