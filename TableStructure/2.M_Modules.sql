USE [CallCapture]
GO

/****** Object:  Table [dbo].[M_Modules]    Script Date: 03/28/2013 16:32:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[M_Modules](
	[RowID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ModuleID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [varchar](50) NOT NULL,
	[Active] [tinyint] NOT NULL,
	[DateInactive] [datetime] NULL,
	[DateAdded] [datetime] NOT NULL,
 CONSTRAINT [PK_M_Modules] PRIMARY KEY CLUSTERED 
(
	[ModuleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[M_Modules] ADD  CONSTRAINT [DF_M_Modules_RowID]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [dbo].[M_Modules] ADD  CONSTRAINT [DF_M_Modules_Active]  DEFAULT ((1)) FOR [Active]
GO

ALTER TABLE [dbo].[M_Modules] ADD  CONSTRAINT [DF_M_Modules_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO



