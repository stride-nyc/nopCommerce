USE [nopCommerce]
GO
/****** Object:  Table [dbo].[ProductReview_ReviewType_Mapping]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReview_ReviewType_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductReviewId] [int] NOT NULL,
	[ReviewTypeId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_ProductReview_ReviewType_Mapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductReview_ReviewType_Mapping_ProductReviewId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductReview_ReviewType_Mapping_ProductReviewId] ON [dbo].[ProductReview_ReviewType_Mapping]
(
	[ProductReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductReview_ReviewType_Mapping_ReviewTypeId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductReview_ReviewType_Mapping_ReviewTypeId] ON [dbo].[ProductReview_ReviewType_Mapping]
(
	[ReviewTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductReview_ReviewType_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_ProductReview_ReviewType_Mapping_ProductReviewId_ProductReview_Id] FOREIGN KEY([ProductReviewId])
REFERENCES [dbo].[ProductReview] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductReview_ReviewType_Mapping] CHECK CONSTRAINT [FK_ProductReview_ReviewType_Mapping_ProductReviewId_ProductReview_Id]
GO
ALTER TABLE [dbo].[ProductReview_ReviewType_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_ProductReview_ReviewType_Mapping_ReviewTypeId_ReviewType_Id] FOREIGN KEY([ReviewTypeId])
REFERENCES [dbo].[ReviewType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductReview_ReviewType_Mapping] CHECK CONSTRAINT [FK_ProductReview_ReviewType_Mapping_ReviewTypeId_ReviewType_Id]
GO
