USE [nopCommerce]
GO
/****** Object:  Table [dbo].[MessageTemplate]    Script Date: 10/28/2024 1:32:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[BccEmailAddresses] [nvarchar](200) NULL,
	[Subject] [nvarchar](1000) NULL,
	[EmailAccountId] [int] NOT NULL,
	[Body] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[DelayBeforeSend] [int] NULL,
	[DelayPeriodId] [int] NOT NULL,
	[AttachedDownloadId] [int] NOT NULL,
	[AllowDirectReply] [bit] NOT NULL,
	[LimitedToStores] [bit] NOT NULL,
 CONSTRAINT [PK_MessageTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
