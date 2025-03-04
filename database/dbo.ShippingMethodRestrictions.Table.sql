USE [nopCommerce]
GO
/****** Object:  Table [dbo].[ShippingMethodRestrictions]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingMethodRestrictions](
	[ShippingMethod_Id] [int] NOT NULL,
	[Country_Id] [int] NOT NULL,
 CONSTRAINT [PK_ShippingMethodRestrictions] PRIMARY KEY CLUSTERED 
(
	[ShippingMethod_Id] ASC,
	[Country_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShippingMethodRestrictions_Country_Id]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ShippingMethodRestrictions_Country_Id] ON [dbo].[ShippingMethodRestrictions]
(
	[Country_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShippingMethodRestrictions_ShippingMethod_Id]    Script Date: 10/28/2024 1:32:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ShippingMethodRestrictions_ShippingMethod_Id] ON [dbo].[ShippingMethodRestrictions]
(
	[ShippingMethod_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ShippingMethodRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_ShippingMethodRestrictions_Country_Id_Country_Id] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[Country] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShippingMethodRestrictions] CHECK CONSTRAINT [FK_ShippingMethodRestrictions_Country_Id_Country_Id]
GO
ALTER TABLE [dbo].[ShippingMethodRestrictions]  WITH CHECK ADD  CONSTRAINT [FK_ShippingMethodRestrictions_ShippingMethod_Id_ShippingMethod_Id] FOREIGN KEY([ShippingMethod_Id])
REFERENCES [dbo].[ShippingMethod] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShippingMethodRestrictions] CHECK CONSTRAINT [FK_ShippingMethodRestrictions_ShippingMethod_Id_ShippingMethod_Id]
GO
