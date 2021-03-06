USE [comm]
GO
/****** Object:  Table [dbo].[comm_user]    Script Date: 06/11/2014 22:30:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comm_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nchar](10) NOT NULL,
	[user_pwd] [nchar](10) NOT NULL,
	[user_email] [varchar](50) NOT NULL,
	[user_fullname] [nchar](10) NOT NULL,
	[user_add] [nchar](10) NOT NULL,
	[user_info] [varchar](50) NULL,
 CONSTRAINT [PK_comm_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[comm_user] ON
INSERT [dbo].[comm_user] ([id], [user_name], [user_pwd], [user_email], [user_fullname], [user_add], [user_info]) VALUES (1, N'user      ', N'123       ', N'x@orx.me', N'full name ', N'D-211     ', N'user info')
INSERT [dbo].[comm_user] ([id], [user_name], [user_pwd], [user_email], [user_fullname], [user_add], [user_info]) VALUES (2, N'user1     ', N'user1     ', N'user1     ', N'user1     ', N'user1user1', N'user1     ')
INSERT [dbo].[comm_user] ([id], [user_name], [user_pwd], [user_email], [user_fullname], [user_add], [user_info]) VALUES (3, N'user2     ', N'user1     ', N'user1     ', N'user1     ', N'user1user1', N'user1     ')
INSERT [dbo].[comm_user] ([id], [user_name], [user_pwd], [user_email], [user_fullname], [user_add], [user_info]) VALUES (4, N'user3     ', N'user1     ', N'user1     ', N'user1     ', N'user1user1', N'user1     ')
SET IDENTITY_INSERT [dbo].[comm_user] OFF
/****** Object:  Table [dbo].[comm_tk]    Script Date: 06/11/2014 22:30:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comm_tk](
	[tk_id] [int] IDENTITY(1,1) NOT NULL,
	[tk_user_id] [int] NOT NULL,
	[tk_user_name] [nchar](10) NOT NULL,
	[tk_content] [nchar](10) NOT NULL,
 CONSTRAINT [PK_comm_tk] PRIMARY KEY CLUSTERED 
(
	[tk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[comm_tk] ON
INSERT [dbo].[comm_tk] ([tk_id], [tk_user_id], [tk_user_name], [tk_content]) VALUES (1, 1, N'user      ', N'问题测试1     ')
SET IDENTITY_INSERT [dbo].[comm_tk] OFF
/****** Object:  Table [dbo].[comm_rapia_type]    Script Date: 06/11/2014 22:30:37 ******/
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
SET IDENTITY_INSERT [dbo].[comm_rapia_type] ON
INSERT [dbo].[comm_rapia_type] ([r_id], [r_name]) VALUES (1, N'门窗        ')
INSERT [dbo].[comm_rapia_type] ([r_id], [r_name]) VALUES (2, N'水电        ')
INSERT [dbo].[comm_rapia_type] ([r_id], [r_name]) VALUES (3, N'其它        ')
SET IDENTITY_INSERT [dbo].[comm_rapia_type] OFF
/****** Object:  Table [dbo].[comm_item_log]    Script Date: 06/11/2014 22:30:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comm_item_log](
	[item_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[rapir_type] [nchar](10) NOT NULL,
	[rapir_status] [nchar](10) NOT NULL,
	[rapir_info] [nchar](10) NOT NULL,
	[rapir_add] [nchar](10) NOT NULL,
 CONSTRAINT [PK_comm_rapir_log] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[comm_item_log] ON
INSERT [dbo].[comm_item_log] ([item_id], [user_id], [rapir_type], [rapir_status], [rapir_info], [rapir_add]) VALUES (1, 1, N'门窗        ', N'未处理       ', N'门坏了       ', N'201       ')
INSERT [dbo].[comm_item_log] ([item_id], [user_id], [rapir_type], [rapir_status], [rapir_info], [rapir_add]) VALUES (2, 1, N'门窗        ', N'未处理       ', N'xx        ', N'xx        ')
SET IDENTITY_INSERT [dbo].[comm_item_log] OFF
/****** Object:  Table [dbo].[comm_admin]    Script Date: 06/11/2014 22:30:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comm_admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_name] [nchar](10) NOT NULL,
	[admin_pwd] [nchar](10) NOT NULL,
	[admin_email] [varchar](50) NOT NULL,
	[admin_fullname] [nchar](10) NOT NULL,
	[admin_info] [varchar](50) NULL,
 CONSTRAINT [PK_comm_admin] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[comm_admin] ON
INSERT [dbo].[comm_admin] ([admin_id], [admin_name], [admin_pwd], [admin_email], [admin_fullname], [admin_info]) VALUES (6, N'admin     ', N'pwd       ', N'X@orx.me  ', N'Admin     ', N'NO        ')
SET IDENTITY_INSERT [dbo].[comm_admin] OFF
