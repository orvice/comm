USE [comm]
GO
/****** Object:  Table [dbo].[comm_user]    Script Date: 06/07/2014 14:59:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comm_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nchar](10) NOT NULL,
	[user_pwd] [nchar](10) NOT NULL,
	[user_email] [nchar](10) NOT NULL,
	[user_fullname] [nchar](10) NOT NULL,
	[user_add] [nchar](10) NOT NULL,
	[user_info] [nchar](10) NULL,
 CONSTRAINT [PK_comm_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comm_rapia_type]    Script Date: 06/07/2014 14:59:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comm_rapia_type](
	[r_id] [int] IDENTITY(1,1) NOT NULL,
	[r_name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_comm_rapia_type] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comm_item_log]    Script Date: 06/07/2014 14:59:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comm_item_log](
	[item_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[rapir_type] [nchar](10) NOT NULL,
	[rapir_status] [nchar](10) NOT NULL,
	[rapir_info] [nchar](10) NOT NULL,
	[rapir_add] [nchar](10) NOT NULL,
 CONSTRAINT [PK_comm_rapir_log] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
