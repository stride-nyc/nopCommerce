USE [nopCommerce]
GO
/****** Object:  Table [dbo].[VendorAttributeValue]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorAttributeValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[VendorAttributeId] [int] NOT NULL,
	[IsPreSelected] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_VendorAttributeValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_VendorAttributeValue_VendorAttributeId]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_VendorAttributeValue_VendorAttributeId] ON [dbo].[VendorAttributeValue]
(
	[VendorAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VendorAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_VendorAttributeValue_VendorAttributeId_VendorAttribute_Id] FOREIGN KEY([VendorAttributeId])
REFERENCES [dbo].[VendorAttribute] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendorAttributeValue] CHECK CONSTRAINT [FK_VendorAttributeValue_VendorAttributeId_VendorAttribute_Id]
GO
