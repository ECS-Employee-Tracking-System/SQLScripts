USE [ESC2]
GO
/****** Object:  Table [dbo].[Center]    Script Date: 1/22/2018 9:37:19 PM ******/
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
/****** Object:  Table [dbo].[Education]    Script Date: 1/22/2018 9:37:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[EducationID] [int] IDENTITY(1,1) NOT NULL,
	[DegreeAbrv] [nvarchar](50) NULL,
	[DegreeLevel] [nvarchar](50) NULL,
	[DegreeType] [nvarchar](50) NULL,
	[DegreeDetail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[EducationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[StaffEducation]    Script Date: 1/22/2018 9:37:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffEducation](
	[StaffMemberID] [int] NOT NULL,
	[EducationID] [int] NOT NULL,
 CONSTRAINT [PK_StaffEducation] PRIMARY KEY CLUSTERED 
(
	[StaffMemberID] ASC,
	[EducationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[StaffMember]    Script Date: 1/22/2018 9:37:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffMember](
	[StaffMemberID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DateOfHire] [date] NULL,
	[Position] [nchar](50) NULL,
	[CenterID] [int] NULL,
	[DirectorCredentials] [bit] NULL,
	[DCExpiration] [datetime] NULL,
	[CDAInProgress] [bit] NULL,
	[CDAType] [nvarchar](50) NULL,
	[CDAExpiration] [date] NULL,
	[CDARenewalProcess] [nvarchar](50) NULL,
	[Comments] [nvarchar](150) NULL,
	[Goal] [nvarchar](50) NULL,
	[MidYear] [nvarchar](50) NULL,
	[EndYear] [nvarchar](50) NULL,
	[GoalMet] [bit] NULL,
	[TAndAApp] [nvarchar](50) NULL,
	[AppApp] [nvarchar](50) NULL,
	[ClassCompleted] [nvarchar](50) NULL,
	[ClassPaid] [bit] NULL,
	[RequiredHours] [int] NULL,
	[HoursEarned] [int] NULL,
	[Notes] [nvarchar](200) NULL,
	[TermDate] [nvarchar](50) NULL,
	[IsInactive] [bit] NULL,
 CONSTRAINT [PK__StaffMem__2C1EBDA1C3E4047E] PRIMARY KEY CLUSTERED 
(
	[StaffMemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[AccessLevel] [varchar](50) NOT NULL,
	[PasswordHash] [varchar](128) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET IDENTITY_INSERT [dbo].[Center] ON 

INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (2, N'Orange Park', N'Clay', N'1A')
INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (3, N'CALLAHAN HS/EHS
', N'Nassau', N'1A')
INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (8, N'Jacksonville', N'Duval', N'1A')
INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (9, N'Middleburg', N'Clay', N'1A')
INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (10, N'FERNANDINA HS', N'Nassau', N'1A')
INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (11, N'CALLAHAN HS/EHS', N'Nassau', N'1A')
INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (13, N'Baker Complex', N'Baker', N'1A')
INSERT [dbo].[Center] ([CenterID], [Name], [County], [Region]) VALUES (14, N'O2B Kids College 7', N'Clay', N'1A')
SET IDENTITY_INSERT [dbo].[Center] OFF
SET IDENTITY_INSERT [dbo].[Education] ON 

INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (1, N'AA', N'Associates', N'Education', N'Early Childhood')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (2, N'BS', N'Bachelors', N'Mathmatics', N'Statistics')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (3, N'BA', N'Bachelors', N'History', N'History')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (4, N'BCE', N'Bachelors', NULL, NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (5, N'BFA', N'Bachelors', N'Finacial', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (6, N'BED', N'Bachelors', N'Education', N'Special Needs')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (7, N'BEC', N'Bachelors', N'Construction', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (8, N'BN', N'Bachelors', N'Nursing', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (9, N'MA', N'Masters', N'Art', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (10, N'MED', N'Masters', N'Education', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (11, N'MS', N'Masters', N'Mathmatics', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (12, N'MBA', N'Masters', N'Business', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (13, N'MSW', N'Masters', N'Social Work', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (14, N'EdD', N'Masters', N'Education', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (15, N'DSc', N'Doctorate', N'Mathmatics', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (16, N'HS', N'High School', N'High School', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (17, N'VOC', N'Vocational', N'Electrical', N'Electrical')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (18, N'None', N'None', N'None', N'None')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (19, N'BS', N'Bachelors', N'Mathmatics', N'Statistics')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (20, N'GED', N'GED', N'High School', N'None')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (21, N'AA', N'Associates', N'Computer', N'Networking')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (22, N'BA', N'Bachelor''s ', N'Education', N'History Minor')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (23, N'AA', N'Associates', N'Mathmatics', N'Statistics')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (24, N'AS', N'Associates', N'Education', N'Early Childhood')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (25, N'BS', N'Bachelors', N'Education', N'Early Childhood')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (27, N'BS', N'Bachelors', N'Computing', N'Information Science')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (29, N'AS', N'Associates', N'Networking', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (30, N'BS', N'Bachelors', N'History', N'History')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (31, N'BS', N'Bachelors', N'History', N'')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (32, N'BS', N'Bachelors', N'History', N'Americana')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (36, N'MS', N'Masters', N'Computing', N'Computer Science')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (42, N'asdf', N'asdf', N'asdf', N'asdf')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (43, N'MS', N'Masters', N'Fine Arts', N'Painting')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (44, N'MS', N'Masters', N'Education', N'Early Childhood')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (45, N'MS', N'Masters', N'Education', N'History')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (46, N'MS', N'Masters', N'History', N'History')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (47, N'AA', N'Associates', N'Gen Studies', NULL)
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (48, N'BA', N'Bachelors', N'Psychology', N'Child Psychology')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (49, N'AS', N'Associate', N'Child Development', N'Early Education')
INSERT [dbo].[Education] ([EducationID], [DegreeAbrv], [DegreeLevel], [DegreeType], [DegreeDetail]) VALUES (50, N'AA', NULL, N'Education', N'Elementary')
SET IDENTITY_INSERT [dbo].[Education] OFF
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (1, 44)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (1, 47)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (2, 30)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (4, 31)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (5, 32)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (20, 1)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (20, 22)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (21, 22)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (22, 5)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (23, 22)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (24, 21)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (25, 21)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (27, 25)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (28, 25)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (30, 21)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (45, 48)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (45, 49)
INSERT [dbo].[StaffEducation] ([StaffMemberID], [EducationID]) VALUES (46, 50)
SET IDENTITY_INSERT [dbo].[StaffMember] ON 

INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (1, N'Fancy', N'Davolio', N'NancyDavolio@ec4kids.org', CAST(N'2018-01-13' AS Date), N'Mentory                                           ', 9, 0, CAST(N'2018-02-13T00:00:00.000' AS DateTime), 0, N'CDA typey', CAST(N'2022-01-13' AS Date), N'CDA Renewa', N'Commentsy', N'Goals', N'midyearyss', N'endyearys', 1, N'tayssssss', N'AppAppyssssss', N'classComplsssss', 0, 55, 405, N'So many nosdsdsds', N'spring 201', 0)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (2, N'Andrews', N'Fuller', N'AndrewFuller@ecs4kids.org', CAST(N'1992-08-14' AS Date), N'Primary Caregiver                                 ', 9, 0, NULL, 1, N'National CDA Infant Toddler', CAST(N'2017-12-25' AS Date), NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 40, 0, NULL, NULL, 0)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (3, N'Janet', N'Leverling', N'JanetLeverling@ecs4kids.org', CAST(N'1992-04-01' AS Date), N'Substitute                                        ', 11, 0, NULL, 1, N'National CDA Infant Toddler', CAST(N'2017-11-01' AS Date), NULL, NULL, NULL, N'test      ', NULL, 0, NULL, NULL, NULL, 0, 40, 0, NULL, NULL, 0)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (4, N'Margaret', N'Peacock', N'MargaretPeacock@ecs4kids.org', CAST(N'1993-05-03' AS Date), N'Assistant Teacher                                 ', 2, 0, NULL, 1, N'National CDA Infant Toddler/Pre-K', CAST(N'2018-01-04' AS Date), NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 40, 0, NULL, NULL, 0)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (5, N'Steven', N'Buchanan', N'StevenBuchanan@ecs4kids.org', CAST(N'1993-10-17' AS Date), N'Substitute                                        ', 9, 0, NULL, 0, N'National CDA Infant Toddler', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 10, 0, NULL, NULL, 0)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (6, N'Michael', N'Suyama', N'MichaelSuyama@ecs4kids.org', CAST(N'1993-10-17' AS Date), N'Lead Teacher                                      ', 2, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 10, 0, NULL, NULL, 0)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (8, N'Laura', N'Callahan', N'LauraCallahan@ecs4kids.org', CAST(N'1994-03-05' AS Date), N'Director of HS and EHS
                          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (9, N'Anne', N'Dodsworth', N'AnneDodsworth@ecs4kids.org', CAST(N'1994-11-15' AS Date), N'Admin. Specialist
                               ', 8, 1, CAST(N'2019-07-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (11, N'Abrham', N'Lincoln', N'AbrahamLincoln@ecs4kids.org', CAST(N'1992-08-14' AS Date), N'Lead Teacher
                                    ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (12, N'George', N'Washington', N'GeorgeWashington@ecs4kids.org', CAST(N'1992-04-01' AS Date), N'Substitute
                                      ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (13, N'Sam ', N'Houston', N'SamHouston@ecs4kids.org', CAST(N'1993-05-03' AS Date), N'Substitute
                                      ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (14, N'Bob', N'Johnson', N'BobJohnson@ecs4kids.org', CAST(N'1993-10-17' AS Date), N'Lead Teacher
                                    ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (15, N'Alice', N'Wonderland', N'AliceWonderland@ecs4kids.org', CAST(N'1993-10-17' AS Date), N'Primary Caregiver
                               ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (16, N'Poor', N'Johnson', N'PoorJohnson@ecs4kids.org', CAST(N'1994-01-02' AS Date), N'Lead Teacher
                                    ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (18, N'Tom', N'Thumb', N'TomThumb@ecs4kids.org', CAST(N'1994-11-15' AS Date), N'Lead Teacher
                                    ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (19, N'Jerrad', N'Monagan', N'jmonagan@ecs4kids.org', CAST(N'2017-01-19' AS Date), N'Lead teacher                                      ', 2, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'', CAST(N'1900-01-01' AS Date), N'          ', N'Hello', N'Goal      ', N'mid       ', N'end       ', 0, N'ta        ', N'app       ', N'css       ', 1, 40, 8, N'notes here', N'spring 201', NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (20, N'abraham', N'Alexander', N'j@ecs4kids.org', CAST(N'2017-11-15' AS Date), N'Lead Teacher                                      ', 2, 1, CAST(N'2017-12-15T12:47:00.000' AS DateTime), 1, N'1', CAST(N'2017-12-16' AS Date), N'1         ', N'1', N'1         ', N'1         ', N'1         ', 1, N'1         ', N'1         ', N'1         ', 1, 0, 0, N'1         ', N'1         ', NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (21, N'Bruce', N'Wayne', N'bwayne@ecs4kids.org', CAST(N'2017-11-15' AS Date), N'Lead Teacher                                      ', 2, 1, CAST(N'2017-07-15T13:02:00.000' AS DateTime), 1, N'1', CAST(N'2018-03-15' AS Date), N'1         ', N'1', N'1         ', N'1         ', N'1         ', 1, N'1         ', N'1         ', N'1         ', 1, 40, 40, N'1         ', N'1         ', NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (22, N'Bruce', N'Alexander', N'jAAAAA@ecs4kids.org', CAST(N'2017-11-15' AS Date), N'Lead Teacher                                      ', 2, 1, CAST(N'2017-11-15T15:42:00.000' AS DateTime), 1, N'1', CAST(N'2017-11-15' AS Date), N'1         ', N'1', N'1         ', N'1         ', N'1         ', 1, N'1         ', N'1         ', N'1         ', 1, 0, 0, N'1         ', N'1         ', NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (23, N'Cowboy', N'Jefferson', N'a@.com', CAST(N'2017-11-15' AS Date), N'Lead Teacher                                      ', 2, 1, CAST(N'2017-11-15T16:19:00.000' AS DateTime), 1, N'1', CAST(N'2017-11-15' AS Date), N'1         ', N'1', N'1         ', N'1         ', N'1         ', 1, N'1         ', N'1         ', N'1         ', 1, 0, 0, N'1         ', N'1         ', NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (24, N'Brian', N'Houston', N'bhouston@ecs4kids.org', CAST(N'2017-01-19' AS Date), N'Lead teacher                                      ', 2, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'', CAST(N'1900-01-01' AS Date), N'          ', N'Hello', N'Goal      ', N'mid       ', N'end       ', 0, N'ta        ', N'app       ', N'css       ', 1, 40, 8, N'notes here', N'spring 201', NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (25, N'Alex', N'Houston', N'bhouston@ecs4kids.org', CAST(N'2017-01-19' AS Date), N'Lead teacher                                      ', 2, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'', CAST(N'1900-01-01' AS Date), N'          ', N'', N'          ', N'          ', N'          ', 0, N'          ', N'app       ', N'css       ', 1, 40, 8, N'notes here', N'spring 201', NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (26, N'Bilbo', N'Baggins', N'bbaggins@ecs4kids.org', CAST(N'2018-01-19' AS Date), N'Mentor                                            ', 2, 1, CAST(N'2022-01-19T00:00:00.000' AS DateTime), 1, N'DA', CAST(N'2022-01-19' AS Date), N'yes please', N'none', N'          ', N'ok        ', N'yes       ', 1, N'up        ', N'maybee    ', N'ya        ', 1, 5, 40, N'notes here', N'spring 201', NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (27, N'Froto', N'Baggins', N'fbaggins@ecs4kids.org', CAST(N'2018-01-19' AS Date), N'Mentor                                            ', 2, 1, CAST(N'2022-01-19T00:00:00.000' AS DateTime), 1, N'DA', CAST(N'2022-01-19' AS Date), N'yes please', N'none', N'          ', N'ok        ', N'yes       ', 1, N'up        ', N'maybee    ', N'ya        ', 1, 5, 40, N'notes here', N'spring 201', NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (28, N'Sam', N'Baggins', N'sbaggins@ecs4kids.org', CAST(N'2018-01-19' AS Date), N'Mentor                                            ', 9, 1, CAST(N'2022-01-19T00:00:00.000' AS DateTime), 1, N'DA', CAST(N'2022-01-19' AS Date), N'yes please', N'none', N'          ', N'ok        ', N'yes       ', 1, N'up        ', N'maybee    ', N'ya        ', 1, 5, 40, N'notes here', N'spring 201', NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (30, N'Alex', N'Baggins', N'abaggins@ecs4kids.org', CAST(N'2018-01-19' AS Date), N'Mentor                                            ', 2, 1, CAST(N'2022-01-19T00:00:00.000' AS DateTime), 1, N'CDA type', CAST(N'2022-01-19' AS Date), N'CDA Renewa', N'Comments', N'Goal      ', N'midyear   ', N'endyear   ', 1, N'TA        ', N'AppApp    ', N'classCompl', 1, 5, 40, N'notes here', N'spring 201', 0)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (33, N'Chris', N'kingdon', N'ck@ec4kids.org', CAST(N'2018-01-19' AS Date), N'Mentor                                            ', 9, 1, CAST(N'2018-01-19T00:00:00.000' AS DateTime), 1, N'CDA type', CAST(N'2018-01-19' AS Date), N'CDA Renewa', N'Comments', N'Goal      ', N'midyear   ', N'endyear   ', 1, N'TA        ', N'AppApp    ', N'classCompl', 1, 5, 40, N'notes here', N'spring 201', 0)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (40, N'Bobby', N'Kingdon', N'asdfasdf', CAST(N'2018-01-20' AS Date), N'sadfasdfsad                                       ', 9, 1, CAST(N'2018-01-16T00:00:00.000' AS DateTime), 1, N'asdf', CAST(N'2018-01-05' AS Date), N'asdf      ', N'asf', N'asdf      ', N'sadf      ', N'asdfasdf  ', 1, N'asdf      ', N'asdf      ', N'asdf      ', 1, 123, 123, N'adsf      ', N'asdf      ', NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (43, N'Alexuss', N'Baggins', N'abaggins@ecs4kids.org', CAST(N'2018-01-19' AS Date), N'Mentor                                            ', 2, 1, CAST(N'2022-01-19T00:00:00.000' AS DateTime), 1, N'CDA type', CAST(N'2022-01-19' AS Date), N'CDA Renewa', N'Comments', N'Goal      ', N'midyear   ', N'endyear   ', 1, N'TA        ', N'AppApp    ', N'classCompl', 1, 5, 40, N'notes here', N'spring 201', 0)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (44, N'Johnsasas', N'Smithasa', N'jsmith@ecs4kids.org', CAST(N'2019-02-02' AS Date), N'as                                                ', 2, 1, CAST(N'2012-03-22T00:00:00.000' AS DateTime), 1, N'dsad', CAST(N'2018-01-31' AS Date), N'sda       ', N'sa', N'as        ', N'as        ', N'as        ', 1, N'as        ', N'as        ', N'as        ', 1, 3, 4, N'ds        ', N'ds        ', 0)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (45, N'Shelly', N'Hattersley', N'shattersley@ecs4kids.org', CAST(N'2012-05-01' AS Date), N'Center Manager                                    ', 13, 1, CAST(N'2021-08-01T00:00:00.000' AS DateTime), 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'Yes', NULL, NULL, 1, 15, 15, NULL, NULL, 0)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate], [IsInactive]) VALUES (46, N'Chloe', N'Kingdon', N'chloem@o2bkids.com', CAST(N'2014-09-05' AS Date), N'Lead Teacher                                      ', 14, 0, NULL, 0, N'FCCPC', CAST(N'2021-11-19' AS Date), NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 40, 52, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[StaffMember] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Email], [FirstName], [LastName], [AccessLevel], [PasswordHash]) VALUES (3, N'myemail@test.org', N'test', N'user', N'0', N'mypassword1')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Center] ADD  CONSTRAINT [DF_Center_Name]  DEFAULT (NULL) FOR [Name]
GO
ALTER TABLE [dbo].[Center] ADD  CONSTRAINT [DF_Center_County]  DEFAULT (NULL) FOR [County]
GO
ALTER TABLE [dbo].[Center] ADD  CONSTRAINT [DF_Center_Region]  DEFAULT (NULL) FOR [Region]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_Email]  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_DateOfHire]  DEFAULT (NULL) FOR [DateOfHire]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_Position]  DEFAULT (NULL) FOR [Position]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_DirectorCredentials]  DEFAULT ((0)) FOR [DirectorCredentials]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_DCExpiration]  DEFAULT (NULL) FOR [DCExpiration]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_CDAInProgress]  DEFAULT ((0)) FOR [CDAInProgress]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_CDAType]  DEFAULT (NULL) FOR [CDAType]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_CDAExpiration]  DEFAULT (NULL) FOR [CDAExpiration]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_CDARenewalProcess]  DEFAULT (NULL) FOR [CDARenewalProcess]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_Comments]  DEFAULT (NULL) FOR [Comments]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_Goal]  DEFAULT (NULL) FOR [Goal]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_MidYear]  DEFAULT (NULL) FOR [MidYear]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_EndYear]  DEFAULT (NULL) FOR [EndYear]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_GoalMet]  DEFAULT ((0)) FOR [GoalMet]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_TAndAApp]  DEFAULT (NULL) FOR [TAndAApp]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_AppApp]  DEFAULT (NULL) FOR [AppApp]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_ClassCompleted]  DEFAULT (NULL) FOR [ClassCompleted]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_ClassPaid]  DEFAULT ((0)) FOR [ClassPaid]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_RequiredHours]  DEFAULT ((0)) FOR [RequiredHours]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_HoursEarned]  DEFAULT ((0)) FOR [HoursEarned]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_Notes]  DEFAULT (NULL) FOR [Notes]
GO
ALTER TABLE [dbo].[StaffMember] ADD  CONSTRAINT [DF_StaffMember_TermDate]  DEFAULT (NULL) FOR [TermDate]
GO
ALTER TABLE [dbo].[StaffEducation]  WITH CHECK ADD  CONSTRAINT [FK_StaffEducation_Education] FOREIGN KEY([EducationID])
REFERENCES [dbo].[Education] ([EducationID])
GO
ALTER TABLE [dbo].[StaffEducation] CHECK CONSTRAINT [FK_StaffEducation_Education]
GO
ALTER TABLE [dbo].[StaffEducation]  WITH CHECK ADD  CONSTRAINT [FK_StaffEducation_Staff] FOREIGN KEY([StaffMemberID])
REFERENCES [dbo].[StaffMember] ([StaffMemberID])
GO
ALTER TABLE [dbo].[StaffEducation] CHECK CONSTRAINT [FK_StaffEducation_Staff]
GO
ALTER TABLE [dbo].[StaffMember]  WITH CHECK ADD  CONSTRAINT [FK_StaffMember_Center] FOREIGN KEY([CenterID])
REFERENCES [dbo].[Center] ([CenterID])
GO
ALTER TABLE [dbo].[StaffMember] CHECK CONSTRAINT [FK_StaffMember_Center]
GO
/****** Object:  StoredProcedure [dbo].[AddNewCenter]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--Allows for the retrieval of one center an all its staffmemers by using @CenterId param or no param returns all centers and their respective staffmembers ordered by the centers Region, then name  both ascending



CREATE Procedure [dbo].[AddNewCenter] 
@StaffMemberID int,
@CenterName nvarchar(50) = NULL,
@CenterCounty nvarchar(50)= NULL,
@CenterRegion nvarchar(50)= NULL
as
begin

Declare @CenterID int



Select @CenterID = CenterID from Center where Name = @CenterName


If (@CenterID is null)
begin
Insert into Center(Name,County,Region) values(@CenterName,@CenterCounty,@CenterRegion) 
Select @CenterID = SCOPE_IDENTITY()
end
update StaffMember set centerID=@CenterID  where StaffMemberID=@StaffmemberID
end

GO
/****** Object:  StoredProcedure [dbo].[AddNewEducation]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--Allows for the retrieval of one center an all its staffmemers by using @CenterId param or no param returns all centers and their respective staffmembers ordered by the centers Region, then name  both ascending



CREATE Procedure [dbo].[AddNewEducation] 
@StaffMemberID int,
@DegreeAbrv nvarchar(50)= NULL,
@DegreeLevel nvarchar(50)= NULL,
@DegreeType nvarchar(50)= NULL,
@DegreeDetail nvarchar(50)= NULL
as
begin
Declare @EducationID int
Select @EducationID = EducationID from Education where ((DegreeAbrv = @DegreeAbrv) and (DegreeType=@DegreeType))and (DegreeDetail=@DegreeDetail)
If (@EducationID is null)
begin
Insert into Education(DegreeAbrv, DegreeLevel,DegreeType,DegreeDetail) values(@DegreeAbrv, @DegreeLevel,@DegreeType,@DegreeDetail) 
Select @EducationID = SCOPE_IDENTITY()
end
begin 
insert into StaffEducation (StaffMemberID,EducationID) values (@StaffMemberID,@EducationID)
end

end

GO
/****** Object:  StoredProcedure [dbo].[AddNewStaffMember]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--@Params as follows @FirstName,@LastName,@Email,@DateOfHire,@Position,
--@DirectorCredentials,@DCExpiration,@CDAInProgress,@CDAType,@CDAExpiration,@CDARenewalProcess,@Comments,@Goal,@MidYear,@EndYear,@GoalMet,@TAndAApp,@AppApp,
--@ClassCompleted,@ClassPaid,@RequiredHours,@HoursEarned,@Notes,@TermDate
--All nullable except @FirstName and @LastName


CREATE procedure [dbo].[AddNewStaffMember]
@StaffMemberID int, 
@FirstName nvarchar(50),
@LastName nvarchar(50),
@Email nvarchar(50)= NULL,
@DateOfHire date= NULL,
@Position nchar(50)= NULL,
@DirectorCredentials bit= NULL,
@DCExpiration date= NULL,
@CDAInProgress bit= False,
@CDAType nvarchar(50)= NULL,
@CDAExpiration date= NULL,
@CDARenewalProcess nvarchar(50)= NULL,
@Comments nvarchar(150)= NULL,
@Goal nvarchar(50)= NULL,
@MidYear nvarchar(50)= NULL,
@EndYear nvarchar(50)= NULL,
@GoalMet bit= False,
@TAndAApp nvarchar(50)= NULL,
@AppApp nvarchar(50)= NULL,
@ClassCompleted nvarchar(50)= NULL,
@ClassPaid bit= False,
@RequiredHours int= NULL,
@HoursEarned int= NULL,
@Notes nvarchar(200)= NULL,
@TermDate nvarchar(150)= NULL,
@IsInactive bit =False
as  
begin 


Begin
Insert into StaffMember (FirstName,LastName,Email,DateOfHire,Position,DirectorCredentials,DCExpiration,CDAInProgress,CDAType,CDAExpiration,CDARenewalProcess,Comments,Goal,MidYear,EndYear,GoalMet,TAndAApp,AppApp,ClassCompleted,ClassPaid,RequiredHours,HoursEarned,Notes,
TermDate,IsInactive) output inserted.staffMemberID values(@FirstName,@LastName,@Email,@DateOfHire,@Position,@DirectorCredentials,@DCExpiration,@CDAInProgress,@CDAType,@CDAExpiration,@CDARenewalProcess,@Comments,@Goal,@MidYear,@EndYear,@GoalMet,@TAndAApp,@AppApp,@ClassCompleted,@ClassPaid,@RequiredHours,@HoursEarned,@Notes,@TermDate,@IsInactive)
Select @StaffMemberID = SCOPE_IDENTITY()

End


End

GO
/****** Object:  StoredProcedure [dbo].[AddNewUser]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Takes variables @Email,@FirstName,@LastName,@AccessLevel,@PasswordHash  to creates a system user to administer and view staff members


CREATE procedure [dbo].[AddNewUser]
@Email varchar (150),
@FirstName varchar(50)=null,
@LastName varchar(50)=null,
@AccessLevel varchar(50),
@Passwordhash varchar(128)

as 
Declare @UserID int

Begin
Insert into Users (Email,FirstName,LastName,AccessLevel,PasswordHash) output inserted.UserID values(@Email,@FirstName,@LastName,@AccessLevel,@PasswordHash)
Select @UserID = SCOPE_IDENTITY()

End


GO
/****** Object:  StoredProcedure [dbo].[deleteStaffMember]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--Deletes the staff members education from the junction table and then deletes the staff member 



CREATE Procedure [dbo].[deleteStaffMember]  
@staffMemberID int
as
begin

begin
delete from StaffEducation where staffMemberID=@staffMemberID
end

begin
delete from StaffMember where StaffMemberID=@staffMemberID
end

end

GO
/****** Object:  StoredProcedure [dbo].[deleteUser]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--deletes the user from the database






CREATE Procedure [dbo].[deleteUser]  
@UserID int
as

if (@UserID != 3)
begin
delete from Users where UserID=@UserID
end




GO
/****** Object:  StoredProcedure [dbo].[GetCenter]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Allows for the retrieval of one center an all its staffmemers by using @CenterId param or no param returns all centers and their respective staffmembers ordered by the centers Region, then name  both ascending



CREATE Procedure [dbo].[GetCenter]  
@CenterID int = NULL
as
begin
Select c.CenterID,c.Name,c.County,c.Region,sm.StaffMemberID,sm.FirstName,sm.LastName,sm.Email,sm.DateofHire,sm.Position,sm.DirectorCredentials,sm.DCExpiration,sm.CDAInProgress,sm.CDAType,sm.CDARenewalProcess,sm.Comments,sm.Goal,sm.MidYear,
sm.EndYear,sm.GoalMet,sm.TAndAApp,sm.AppApp,sm.ClassCompleted,sm.ClassPaid,sm.RequiredHours,sm.HoursEarned,sm.Notes,sm.TermDate
FROM Center as c
Left OUTER JOIN StaffMember as sm on c.CenterID=sm.CenterID
where sm.CenterID=@CenterID OR ISNULL(@CenterID, '') = ''
order by Region asc , Name asc
end
GO
/****** Object:  StoredProcedure [dbo].[GetEmptyEducations]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE Procedure [dbo].[GetEmptyEducations]  
as
begin
select e.EducationID from StaffEducation as se 
right join Education as e on se.EducationID=e.EducationID 
where StaffMemberID is Null
end

GO
/****** Object:  StoredProcedure [dbo].[GetStaffMember]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--@params are @StaffMemberID

--Allows the user to get a list of StaffMembers with their associated education and centers, use the @StaffMemberID to retrieve just one StaffMember


CREATE Procedure [dbo].[GetStaffMember]  
@StaffMemberID int =NULL
as 
begin
Select *, c.Name as [CenterName], c.County as[CenterCounty],c.Region as[CenterRegion]
FROM StaffMember as sm
Left Outer JOIN Center as c on c.CenterID=sm.CenterID
Left Outer JOIN StaffEducation as se on se.StaffMemberID=sm.StaffMemberID
Left Outer JOIN Education as e on e.educationID=se.EducationID
where sm.StaffMemberID=@StaffMemberID OR ISNULL(@StaffMemberID, '') = ''
order by CDAExpiration asc
end
GO
/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[GetUser]  
@Email varchar(150),
@PasswordHash varchar(128)
as 
begin
Select * FROM Users 
where Email=@Email and PasswordHash = @PasswordHash
end

GO
/****** Object:  StoredProcedure [dbo].[RemoveStaffEducation]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--Takes the input of staffMemberID and the educationID you want to remove from that staff members and deletes it from the junction table to dissacciate



CREATE Procedure [dbo].[RemoveStaffEducation]  
@staffMemberID int,
@educationID int
as
begin
delete from StaffEducation where staffMemberID=@staffMemberID and educationID=@educationID
end

GO
/****** Object:  StoredProcedure [dbo].[sp_alterdiagram]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_creatediagram]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_dropdiagram]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagramdefinition]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagrams]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_renamediagram]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_upgraddiagrams]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
	
GO
/****** Object:  StoredProcedure [dbo].[UpdateStaffMember]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--@Params as follows @FirstName,@LastName,@Email,@DateOfHire,@Position,
--@DirectorCredentials,@DCExpiration,@CDAInProgress,@CDAType,@CDAExpiration,@CDARenewalProcess,@Comments,@Goal,@MidYear,@EndYear,@GoalMet,@TAndAApp,@AppApp,
--@ClassCompleted,@ClassPaid,@RequiredHours,@HoursEarned,@Notes,@TermDate,@IsInactive
--All nullable except @FirstName and @LastName


CREATE procedure [dbo].[UpdateStaffMember] 
@StaffMemberID int, 
@FirstName nvarchar(50),
@LastName nvarchar(50),
@Email nvarchar(50)= NULL,
@DateOfHire date= NULL,
@Position nchar(50)= NULL,
@DirectorCredentials bit= NULL,
@DCExpiration date= NULL,
@CDAInProgress bit= False,
@CDAType nvarchar(50)= NULL,
@CDAExpiration date= NULL,
@CDARenewalProcess nvarchar(50)= NULL,
@Comments nvarchar(150)= NULL,
@Goal nvarchar(50)= NULL,
@MidYear nvarchar(50)= NULL,
@EndYear nvarchar(50)= NULL,
@GoalMet bit= False,
@TAndAApp nvarchar(50)= NULL,
@AppApp nvarchar(50)= NULL,
@ClassCompleted nvarchar(50)= NULL,
@ClassPaid bit= False,
@RequiredHours int= NULL,
@HoursEarned int= NULL,
@Notes nvarchar(200)= NULL,
@TermDate nvarchar(150)= NULL,
@IsInactive bit =False

as  
Begin
Update StaffMember  set FirstName=@FirstName,LastName=@LastName,Email=@Email,DateOfHire=@DateOfHire,Position=@Position,DirectorCredentials=@DirectorCredentials,DCExpiration=@DCExpiration,CDAInProgress=@CDAInProgress,CDAType=@CDAType,CDAExpiration=@CDAExpiration,CDARenewalProcess=@CDARenewalProcess,Comments=@Comments,Goal=@Goal,MidYear=@MidYear,EndYear=@EndYear,GoalMet=@GoalMet,TAndAApp=@TAndAApp,AppApp=@AppApp,ClassCompleted=@ClassCompleted,ClassPaid=@ClassPaid,RequiredHours=@RequiredHours,HoursEarned=@HoursEarned,Notes=@Notes,
TermDate=@TermDate, IsInactive=@IsInactive
where StaffMemberID=@StaffmemberID
End




GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 1/22/2018 9:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE procedure [dbo].[UpdateUser]
@UserID int, 
@Email varchar(150),
@FirstName varchar(50)=null,
@LastName varchar(50)=null,
@AccessLevel varchar(50),
@PasswordHash varchar(128)
as  
Begin
Update Users set Email=@Email,FirstName=@FirstName,LastName=@LastName,AccessLevel=@AccessLevel,PasswordHash=@PasswordHash
where UserID=@UserID 
End





GO
