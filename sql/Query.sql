USE [comm]
GO
/****** Object:  Table [dbo].[comm_user]    Script Date: 05/27/2014 23:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comm_user](
	[id] [int] NOT NULL,
	[username] [nchar](10) NOT NULL,
	[pwd] [nchar](10) NOT NULL,
	[email] [nchar](10) NOT NULL,
	[fullname] [nchar](10) NOT NULL,
	[info] [nchar](10) NULL,
 CONSTRAINT [PK_comm_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comm_rapir_log]    Script Date: 05/27/2014 23:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comm_rapir_log](
	[log_id] [int] NOT NULL,
	[id] [nchar](10) NOT NULL,
	[rapir_type] [nchar](10) NOT NULL,
	[rapir_status] [nchar](10) NOT NULL,
	[rapir_info] [nchar](10) NULL,
 CONSTRAINT [PK_comm_rapir_log] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comm_rapia_type]    Script Date: 05/27/2014 23:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comm_rapia_type](
	[r_id] [int] NOT NULL,
	[r_name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_comm_rapia_type] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
