USE [comm]
GO
/****** Object:  Table [dbo].[comm_user]    Script Date: 05/27/2014 16:06:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comm_user](
	[id] [int] NULL,
	[username] [nchar](10) NULL,
	[pwd] [nchar](10) NULL,
	[email] [nchar](10) NULL,
	[fullname] [nchar](10) NULL,
	[info] [nchar](10) NULL,
	[etc] [nchar](10) NULL
) ON [PRIMARY]
GO
