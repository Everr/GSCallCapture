USE [CallCapture]
GO

/****** Object:  Table [dbo].[M_Users]    Script Date: 03/28/2013 16:31:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[M_Users](
	[RowID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Active] [tinyint] NOT NULL,
	[DateInactive] [datetime] NULL,
	[DateAdded] [datetime] NOT NULL,
 CONSTRAINT [PK_M_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_RowID]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Active]  DEFAULT ((1)) FOR [Active]
GO

ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO



