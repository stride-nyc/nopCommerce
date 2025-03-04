USE [nopCommerce]
GO
/****** Object:  Table [dbo].[FacebookPixelConfiguration]    Script Date: 10/28/2024 1:32:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacebookPixelConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PixelId] [nvarchar](max) NULL,
	[AccessToken] [nvarchar](max) NULL,
	[PixelScriptEnabled] [bit] NOT NULL,
	[ConversionsApiEnabled] [bit] NOT NULL,
	[DisableForUsersNotAcceptingCookieConsent] [bit] NOT NULL,
	[StoreId] [int] NOT NULL,
	[PassUserProperties] [bit] NOT NULL,
	[UseAdvancedMatching] [bit] NOT NULL,
	[TrackPageView] [bit] NOT NULL,
	[TrackAddToCart] [bit] NOT NULL,
	[TrackPurchase] [bit] NOT NULL,
	[TrackViewContent] [bit] NOT NULL,
	[TrackAddToWishlist] [bit] NOT NULL,
	[TrackInitiateCheckout] [bit] NOT NULL,
	[TrackSearch] [bit] NOT NULL,
	[TrackContact] [bit] NOT NULL,
	[TrackCompleteRegistration] [bit] NOT NULL,
	[CustomEvents] [nvarchar](max) NULL,
 CONSTRAINT [PK_FacebookPixelConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
