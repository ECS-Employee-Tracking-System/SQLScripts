USE [ESC2]
GO
/****** Object:  Table [dbo].[Center]    Script Date: 10/18/2017 10:09:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Center](
	[CenterID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[County] [nvarchar](50) NOT NULL,
	[Region] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Center] PRIMARY KEY CLUSTERED 
(
	[CenterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET IDENTITY_INSERT [dbo].[Center] ON 

INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (2, N'Orange Park', N'Clay', N'1A')
INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (3, N'CALLAHAN HS/EHS
', N'Nassau', N'1A')
INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (6, N'FERNANDINA HS
', N'Nassau', N'1A')
INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (7, N'Middleburg
', N'Clay', N'1A')
INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (8, N'Jacksonville', N'Duval', N'1A')
SET IDENTITY_INSERT [dbo].[Center] OFF
