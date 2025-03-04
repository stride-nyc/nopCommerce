USE [nopCommerce]
GO
/****** Object:  Table [dbo].[ProductAttributeValuePicture]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributeValuePicture](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductAttributeValueId] [int] NOT NULL,
	[PictureId] [int] NOT NULL,
 CONSTRAINT [PK_ProductAttributeValuePicture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductAttributeValuePicture_ProductAttributeValueId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductAttributeValuePicture_ProductAttributeValueId] ON [dbo].[ProductAttributeValuePicture]
(
	[ProductAttributeValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductAttributeValuePicture]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttributeValuePicture_ProductAttributeValueId_ProductAttributeValue_Id] FOREIGN KEY([ProductAttributeValueId])
REFERENCES [dbo].[ProductAttributeValue] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductAttributeValuePicture] CHECK CONSTRAINT [FK_ProductAttributeValuePicture_ProductAttributeValueId_ProductAttributeValue_Id]
GO
