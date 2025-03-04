USE [nopCommerce]
GO
/****** Object:  Table [dbo].[PictureBinary]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PictureBinary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PictureId] [int] NOT NULL,
	[BinaryData] [varbinary](max) NULL,
 CONSTRAINT [PK_PictureBinary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_PictureBinary_PictureId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_PictureBinary_PictureId] ON [dbo].[PictureBinary]
(
	[PictureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PictureBinary]  WITH CHECK ADD  CONSTRAINT [FK_PictureBinary_PictureId_Picture_Id] FOREIGN KEY([PictureId])
REFERENCES [dbo].[Picture] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PictureBinary] CHECK CONSTRAINT [FK_PictureBinary_PictureId_Picture_Id]
GO
