USE [CallCapture]
GO

/****** Object:  Table [dbo].[L_Login]    Script Date: 03/28/2013 16:31:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[L_Login](
	[RowID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[UserNameSubmitted] [varchar](50) NOT NULL,
	[PasswordSubmitted] [varchar](50) NOT NULL,
	[Success] [tinyint] NOT NULL,
	[UserIDReturned] [int] NULL,
	[DateAdded] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[L_Login] ADD  CONSTRAINT [DF_L_Login_RowID]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [dbo].[L_Login] ADD  CONSTRAINT [DF_L_Login_Date]  DEFAULT (getdate()) FOR [DateAdded]
GO



