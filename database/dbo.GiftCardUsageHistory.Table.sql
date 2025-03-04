USE [nopCommerce]
GO
/****** Object:  Table [dbo].[GiftCardUsageHistory]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiftCardUsageHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GiftCardId] [int] NOT NULL,
	[UsedWithOrderId] [int] NOT NULL,
	[UsedValue] [decimal](18, 4) NOT NULL,
	[CreatedOnUtc] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_GiftCardUsageHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_GiftCardUsageHistory_GiftCardId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_GiftCardUsageHistory_GiftCardId] ON [dbo].[GiftCardUsageHistory]
(
	[GiftCardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GiftCardUsageHistory_UsedWithOrderId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_GiftCardUsageHistory_UsedWithOrderId] ON [dbo].[GiftCardUsageHistory]
(
	[UsedWithOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GiftCardUsageHistory]  WITH CHECK ADD  CONSTRAINT [FK_GiftCardUsageHistory_GiftCardId_GiftCard_Id] FOREIGN KEY([GiftCardId])
REFERENCES [dbo].[GiftCard] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GiftCardUsageHistory] CHECK CONSTRAINT [FK_GiftCardUsageHistory_GiftCardId_GiftCard_Id]
GO
ALTER TABLE [dbo].[GiftCardUsageHistory]  WITH CHECK ADD  CONSTRAINT [FK_GiftCardUsageHistory_UsedWithOrderId_Order_Id] FOREIGN KEY([UsedWithOrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GiftCardUsageHistory] CHECK CONSTRAINT [FK_GiftCardUsageHistory_UsedWithOrderId_Order_Id]
GO
