USE [nopCommerce]
GO
/****** Object:  Table [dbo].[ProductAttributeCombinationPicture]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributeCombinationPicture](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductAttributeCombinationId] [int] NOT NULL,
	[PictureId] [int] NOT NULL,
 CONSTRAINT [PK_ProductAttributeCombinationPicture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductAttributeCombinationPicture_ProductAttributeCombinationId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductAttributeCombinationPicture_ProductAttributeCombinationId] ON [dbo].[ProductAttributeCombinationPicture]
(
	[ProductAttributeCombinationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductAttributeCombinationPicture]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttributeCombinationPicture_ProductAttributeCombinationId_ProductAttributeCombination_Id] FOREIGN KEY([ProductAttributeCombinationId])
REFERENCES [dbo].[ProductAttributeCombination] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductAttributeCombinationPicture] CHECK CONSTRAINT [FK_ProductAttributeCombinationPicture_ProductAttributeCombinationId_ProductAttributeCombination_Id]
GO
