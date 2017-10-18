USE [ESC2]
GO
/****** Object:  Table [dbo].[StaffMember]    Script Date: 10/18/2017 10:09:06 AM ******/
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
	[CDARenewalProcess] [nchar](10) NULL,
	[Degree] [nvarchar](50) NULL,
	[Comments] [nvarchar](150) NULL,
	[Goal] [nchar](10) NULL,
	[MidYear] [nchar](10) NULL,
	[EndYear] [nchar](10) NULL,
	[GoalMet] [bit] NULL,
	[TAndAApp] [nchar](10) NULL,
	[AppApp] [nchar](10) NULL,
	[ClassCompleted] [nchar](10) NULL,
	[ClassPaid] [bit] NULL,
	[RequiredHours] [int] NULL,
	[HoursEarned] [int] NULL,
	[Notes] [nchar](10) NULL,
	[TermDate] [nchar](10) NULL,
 CONSTRAINT [PK__StaffMem__2C1EBDA1C3E4047E] PRIMARY KEY CLUSTERED 
(
	[StaffMemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET IDENTITY_INSERT [dbo].[StaffMember] ON 

INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (1, N'Nancy', N'Davolio', N'NancyDavolio@ec4kids.org', CAST(N'1992-05-01' AS Date), N'Substitute
                                      ', 2, NULL, NULL, 1, N'NA Has advance Degree
', CAST(N'2019-05-17' AS Date), NULL, N'AA        ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (2, N'Andrew', N'Fuller', N'AndrewFuller@ecs4kids.org', CAST(N'1992-08-14' AS Date), N'Primary Caregiver
                               ', 2, NULL, NULL, 1, N'National CDA Infant Toddler
', CAST(N'2019-05-17' AS Date), NULL, N'BS ECE    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (3, N'Janet', N'Leverling', N'JanetLeverling@ecs4kids.org', CAST(N'1992-04-01' AS Date), N'Substitute
                                      ', 3, NULL, NULL, 1, N'National CDA Infant Toddler
', CAST(N'2018-10-01' AS Date), NULL, N'Masters in Public Admin
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (4, N'Margaret', N'Peacock', N'MargaretPeacock@ecs4kids.org', CAST(N'1993-05-03' AS Date), N'Assistant Teacher
                               ', 2, NULL, NULL, 1, N'National CDA Infant Toddler/Pre-K
', CAST(N'2020-04-04' AS Date), NULL, N'Highshool Diploma
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (5, N'Steven', N'Buchanan', N'StevenBuchanan@ecs4kids.org', CAST(N'1993-10-17' AS Date), N'Substitute
                                      ', 6, NULL, NULL, NULL, NULL, NULL, NULL, N'AA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (6, N'Michael', N'Suyama', N'MichaelSuyama@ecs4kids.org', CAST(N'1993-10-17' AS Date), N'Lead Teacher
                                    ', 2, NULL, NULL, NULL, NULL, NULL, NULL, N'BS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (7, N'Robert', N'King', N'RobertKing@ecs4kids.org', CAST(N'1994-01-02' AS Date), N'Center Manager/Family Advocate
                  ', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'All DCF classes paid and open
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (8, N'Laura', N'Callahan', N'LauraCallahan@ecs4kids.org', CAST(N'1994-03-05' AS Date), N'Director of HS and EHS
                          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, N'BS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (9, N'Anne', N'Dodsworth', N'AnneDodsworth@ecs4kids.org', CAST(N'1994-11-15' AS Date), N'Admin. Specialist
                               ', 2, 1, CAST(N'2019-07-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (10, NULL, NULL, NULL, CAST(N'1992-05-01' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (11, NULL, NULL, NULL, CAST(N'1992-08-14' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (12, NULL, NULL, NULL, CAST(N'1992-04-01' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (13, NULL, NULL, NULL, CAST(N'1993-05-03' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (14, NULL, NULL, NULL, CAST(N'1993-10-17' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (15, NULL, NULL, NULL, CAST(N'1993-10-17' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (16, NULL, NULL, NULL, CAST(N'1994-01-02' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (17, NULL, NULL, NULL, CAST(N'1994-03-05' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[StaffMember] ([StaffMemberID], [FirstName], [LastName], [Email], [DateOfHire], [Position], [CenterID], [DirectorCredentials], [DCExpiration], [CDAInProgress], [CDAType], [CDAExpiration], [CDARenewalProcess], [Degree], [Comments], [Goal], [MidYear], [EndYear], [GoalMet], [TAndAApp], [AppApp], [ClassCompleted], [ClassPaid], [RequiredHours], [HoursEarned], [Notes], [TermDate]) VALUES (18, NULL, NULL, NULL, CAST(N'1994-11-15' AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[StaffMember] OFF
ALTER TABLE [dbo].[StaffMember]  WITH CHECK ADD  CONSTRAINT [FK_StaffMember_Center] FOREIGN KEY([CenterID])
REFERENCES [dbo].[Center] ([CenterID])
GO
ALTER TABLE [dbo].[StaffMember] CHECK CONSTRAINT [FK_StaffMember_Center]
GO
