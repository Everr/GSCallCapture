USE [CallCapture]
GO

/****** Object:  Table [dbo].[M_Access]    Script Date: 03/28/2013 16:32:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[M_Access](
	[RowID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[UserID] [int] NOT NULL,
	[ModuleID] [int] NOT NULL,
	[Active] [tinyint] NOT NULL,
	[DateInactive] [datetime] NULL,
	[DateAdded] [datetime] NOT NULL,
 CONSTRAINT [PK_M_Access] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ModuleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[M_Access]  WITH CHECK ADD  CONSTRAINT [FK_M_Access_M_Modules] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[M_Modules] ([ModuleID])
GO

ALTER TABLE [dbo].[M_Access] CHECK CONSTRAINT [FK_M_Access_M_Modules]
GO

ALTER TABLE [dbo].[M_Access]  WITH CHECK ADD  CONSTRAINT [FK_M_Access_M_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[M_Users] ([UserID])
GO

ALTER TABLE [dbo].[M_Access] CHECK CONSTRAINT [FK_M_Access_M_Users]
GO

ALTER TABLE [dbo].[M_Access] ADD  CONSTRAINT [DF_M_Access_RowID]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [dbo].[M_Access] ADD  CONSTRAINT [DF_M_Access_Active]  DEFAULT ((1)) FOR [Active]
GO

ALTER TABLE [dbo].[M_Access] ADD  CONSTRAINT [DF_M_Access_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO



