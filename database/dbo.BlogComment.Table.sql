USE [nopCommerce]
GO
/****** Object:  Table [dbo].[BlogComment]    Script Date: 10/28/2024 1:32:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogComment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StoreId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[BlogPostId] [int] NOT NULL,
	[CommentText] [nvarchar](max) NULL,
	[IsApproved] [bit] NOT NULL,
	[CreatedOnUtc] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_BlogComment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_BlogComment_BlogPostId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_BlogComment_BlogPostId] ON [dbo].[BlogComment]
(
	[BlogPostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BlogComment_CustomerId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_BlogComment_CustomerId] ON [dbo].[BlogComment]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BlogComment_StoreId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_BlogComment_StoreId] ON [dbo].[BlogComment]
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogComment]  WITH CHECK ADD  CONSTRAINT [FK_BlogComment_BlogPostId_BlogPost_Id] FOREIGN KEY([BlogPostId])
REFERENCES [dbo].[BlogPost] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogComment] CHECK CONSTRAINT [FK_BlogComment_BlogPostId_BlogPost_Id]
GO
ALTER TABLE [dbo].[BlogComment]  WITH CHECK ADD  CONSTRAINT [FK_BlogComment_CustomerId_Customer_Id] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogComment] CHECK CONSTRAINT [FK_BlogComment_CustomerId_Customer_Id]
GO
ALTER TABLE [dbo].[BlogComment]  WITH CHECK ADD  CONSTRAINT [FK_BlogComment_StoreId_Store_Id] FOREIGN KEY([StoreId])
REFERENCES [dbo].[Store] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogComment] CHECK CONSTRAINT [FK_BlogComment_StoreId_Store_Id]
GO
