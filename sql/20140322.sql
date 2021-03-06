USE [DYT_BLOG]
GO
/****** Object:  User [DYT_blog]    Script Date: 03/22/2014 21:07:52 ******/
CREATE USER [DYT_blog] FOR LOGIN [DYT_blog] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [dengyitong]    Script Date: 03/22/2014 21:07:52 ******/
CREATE USER [dengyitong] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[user_table]    Script Date: 03/22/2014 21:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](10) NULL,
	[password] [nvarchar](255) NULL,
 CONSTRAINT [PK_user_table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log_table]    Script Date: 03/22/2014 21:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[substance] [nvarchar](max) NULL,
	[imgurl] [nvarchar](max) NULL,
	[summary] [nvarchar](max) NULL,
	[autor] [nvarchar](10) NULL,
	[update_time] [datetime] NULL,
	[tags] [nvarchar](50) NULL,
	[comment] [int] NULL,
	[click] [int] NULL,
 CONSTRAINT [PK_log_table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[link_table]    Script Date: 03/22/2014 21:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[link_table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[wed] [nvarchar](50) NULL,
 CONSTRAINT [PK_link_table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_log_table_comment]    Script Date: 03/22/2014 21:07:53 ******/
ALTER TABLE [dbo].[log_table] ADD  CONSTRAINT [DF_log_table_comment]  DEFAULT ((0)) FOR [comment]
GO
/****** Object:  Default [DF_log_table_click]    Script Date: 03/22/2014 21:07:53 ******/
ALTER TABLE [dbo].[log_table] ADD  CONSTRAINT [DF_log_table_click]  DEFAULT ((0)) FOR [click]
GO
