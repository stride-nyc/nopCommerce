USE [nopCommerce]
GO
/****** Object:  Table [dbo].[NewsComment]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsComment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[NewsItemId] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[CommentTitle] [nvarchar](max) NULL,
	[CommentText] [nvarchar](max) NULL,
	[IsApproved] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_NewsComment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_NewsComment_CustomerId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_NewsComment_CustomerId] ON [dbo].[NewsComment]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NewsComment_NewsItemId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_NewsComment_NewsItemId] ON [dbo].[NewsComment]
(
	[NewsItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NewsComment_StoreId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_NewsComment_StoreId] ON [dbo].[NewsComment]
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NewsComment]  WITH CHECK ADD  CONSTRAINT [FK_NewsComment_CustomerId_Customer_Id] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NewsComment] CHECK CONSTRAINT [FK_NewsComment_CustomerId_Customer_Id]
GO
ALTER TABLE [dbo].[NewsComment]  WITH CHECK ADD  CONSTRAINT [FK_NewsComment_NewsItemId_News_Id] FOREIGN KEY([NewsItemId])
REFERENCES [dbo].[News] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NewsComment] CHECK CONSTRAINT [FK_NewsComment_NewsItemId_News_Id]
GO
ALTER TABLE [dbo].[NewsComment]  WITH CHECK ADD  CONSTRAINT [FK_NewsComment_StoreId_Store_Id] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Store] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NewsComment] CHECK CONSTRAINT [FK_NewsComment_StoreId_Store_Id]
GO
