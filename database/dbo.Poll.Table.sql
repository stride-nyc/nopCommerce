USE [nopCommerce]
GO
/****** Object:  Table [dbo].[Poll]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poll](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[SystemKeyword] [nvarchar](max) NULL,
	[Published] [bit] NOT NULL,
	[ShowOnHomepage] [bit] NOT NULL,
	[AllowGuestsToVote] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
	[StartDateUtc] [datetime2](6) NULL,
	[EndDateUtc] [datetime2](6) NULL,
 CONSTRAINT [PK_Poll] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Poll_LanguageId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_Poll_LanguageId] ON [dbo].[Poll]
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Poll]  WITH CHECK ADD  CONSTRAINT [FK_Poll_LanguageId_Language_Id] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Poll] CHECK CONSTRAINT [FK_Poll_LanguageId_Language_Id]
GO
