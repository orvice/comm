USE [comm]
GO
/****** Object:  Table [dbo].[comm_user]    Script Date: 05/27/2014 21:11:44 ******/
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
/****** Object:  Table [dbo].[comm_rapir_log]    Script Date: 05/27/2014 21:11:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comm_rapir_log](
	[log_id] [int] NOT NULL,
	[id] [nchar](10) NOT NULL,
	[rapir_type] [nchar](10) NOT NULL,
	[rapir_status] [nchar](10) NOT NULL,
	[rapir_info] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comm_rapia_type]    Script Date: 05/27/2014 21:11:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comm_rapia_type](
	[r_id] [int] NOT NULL,
	[r_name] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
