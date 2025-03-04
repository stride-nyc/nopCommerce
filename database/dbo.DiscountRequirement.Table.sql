USE [nopCommerce]
GO
/****** Object:  Table [dbo].[DiscountRequirement]    Script Date: 10/28/2024 1:32:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountRequirement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DiscountId] [int] NOT NULL,
	[ParentId] [int] NULL,
	[DiscountRequirementRuleSystemName] [nvarchar](max) NULL,
	[InteractionTypeId] [int] NULL,
	[IsGroup] [bit] NOT NULL,
 CONSTRAINT [PK_DiscountRequirement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_DiscountRequirement_DiscountId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_DiscountRequirement_DiscountId] ON [dbo].[DiscountRequirement]
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DiscountRequirement_ParentId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_DiscountRequirement_ParentId] ON [dbo].[DiscountRequirement]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiscountRequirement]  WITH CHECK ADD  CONSTRAINT [FK_DiscountRequirement_DiscountId_Discount_Id] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[Discount] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DiscountRequirement] CHECK CONSTRAINT [FK_DiscountRequirement_DiscountId_Discount_Id]
GO
ALTER TABLE [dbo].[DiscountRequirement]  WITH CHECK ADD  CONSTRAINT [FK_DiscountRequirement_ParentId_DiscountRequirement_Id] FOREIGN KEY([ParentId])
REFERENCES [dbo].[DiscountRequirement] ([Id])
GO
ALTER TABLE [dbo].[DiscountRequirement] CHECK CONSTRAINT [FK_DiscountRequirement_ParentId_DiscountRequirement_Id]
GO
