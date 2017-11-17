USE [ESC2]
GO
/****** Object:  StoredProcedure [dbo].[AddNewStaffMember]    Script Date: 11/16/2017 9:14:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--@Params as follows @CenterName,@CenterCounty,@CenterRegion,@DegreeAbrv,@DegreeLevel,@DegreeType,@DegreeDetail,@FirstName,@LastName,@Email,@DateOfHire,@Position,
--@DirectorCredentials,@DCExpiration,@CDAInProgress,@CDAType,@CDAExpiration,@CDARenewalProcess,@Comments,@Goal,@MidYear,@EndYear,@GoalMet,@TAndAApp,@AppApp,
--@ClassCompleted,@ClassPaid,@RequiredHours,@HoursEarned,@Notes,@TermDate
--All nullable except @FirstName and @LastName

--Allows the user to Add a new staff member with every available option, procedure will check @CenterID against @CenterName, @EducationID against @DegreeAbbrv and @DegreeType
--@StaffMemberId against @FirstName and LastName to see if item already exist iin the databse  

CREATE procedure [dbo].[AddNewStaffMember]  
@CenterName nvarchar(50) = NULL,
@CenterCounty nvarchar(50)= NULL,
@CenterRegion nvarchar(50)= NULL,
@DegreeAbrv nvarchar(50)= NULL,
@DegreeLevel nvarchar(50)= NULL,
@DegreeType nvarchar(50)= NULL,
@DegreeDetail nvarchar(50)= NULL,
@FirstName nvarchar(50),
@LastName nvarchar(50),
@Email nvarchar(50)= NULL,
@DateOfHire date= NULL,
@Position nchar(50)= NULL,
@DirectorCredentials bit= NULL,
@DCExpiration datetime= NULL,
@CDAInProgress bit= NULL,
@CDAType nvarchar(50)= NULL,
@CDAExpiration date= NULL,
@CDARenewalProcess nchar(10)= NULL,
@Comments nvarchar(150)= NULL,
@Goal nchar(10)= NULL,
@MidYear nchar(10)= NULL,
@EndYear nchar(10)= NULL,
@GoalMet bit= NULL,
@TAndAApp nchar(10)= NULL,
@AppApp nchar(10)= NULL,
@ClassCompleted nchar(10)= NULL,
@ClassPaid bit= NULL,
@RequiredHours int= NULL,
@HoursEarned int= NULL,
@Notes nchar(10)= NULL,
@TermDate nchar(10)= NULL

as  
begin 
Declare @CenterID int
Declare @EducationID int
Declare @StaffMemberID int


Begin
Select @CenterID = CenterID from Center where Name = @CenterName
Select @EducationID = EducationID from Education where (DegreeAbrv = @DegreeAbrv) and (DegreeType=@DegreeType)
Select @StaffMemberID = StaffMemberID from StaffMember where (FirstName=@FirstName) and (LastName=@LastName)
end

If (@CenterID is null)
begin
Insert into Center(Name,County,Region) values(@CenterName,@CenterCounty,@CenterRegion) 
Select @CenterID = SCOPE_IDENTITY()
end

If (@EducationID is null)
begin
Insert into Education(DegreeAbrv, DegreeLevel,DegreeType,DegreeDetail) values(@DegreeAbrv, @DegreeLevel,@DegreeType,@DegreeDetail) 
Select @EducationID = SCOPE_IDENTITY()
end

If (@StaffMemberID is null)
Begin
Insert into StaffMember (FirstName,LastName,Email,DateOfHire,Position,CenterID,DirectorCredentials,DCExpiration,CDAInProgress,CDAType,CDAExpiration,CDARenewalProcess,Comments,Goal,MidYear,EndYear,GoalMet,TAndAApp,AppApp,ClassCompleted,ClassPaid,RequiredHours,HoursEarned,Notes,
TermDate)values(@FirstName,@LastName,@Email,@DateOfHire,@Position,@CenterID,@DirectorCredentials,@DCExpiration,@CDAInProgress,@CDAType,@CDAExpiration,@CDARenewalProcess,@Comments,@Goal,@MidYear,@EndYear,@GoalMet,@TAndAApp,@AppApp,@ClassCompleted,@ClassPaid,@RequiredHours,@HoursEarned,@Notes,@TermDate)
Select @StaffMemberID = SCOPE_IDENTITY()
End



begin 
insert into StaffEducation (StaffMemberID,EducationID) values (@StaffMemberID,@EducationID)
end
End

GO
/****** Object:  StoredProcedure [dbo].[GetCenter]    Script Date: 11/16/2017 9:14:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Allows for the retrieval of one center an all its staffmemers by using @CenterId param or no param returns all centers and their respective staffmembers ordered by the centers Region, then name  both ascending



CREATE Procedure [dbo].[GetCenter]  
@CenterID int = NULL
as
begin
Select *
FROM Center as c
Left OUTER JOIN StaffMember as sm on c.CenterID=sm.CenterID
Left OUTER JOIN StaffEducation as se on se.StaffMemberID=sm.StaffMemberID
Left OUTER JOIN Education as e on e.educationID=se.EducationID
where sm.CenterID=@CenterID OR ISNULL(@CenterID, '') = ''
order by Region asc , Name asc
end
GO
/****** Object:  StoredProcedure [dbo].[GetStaffMember]    Script Date: 11/16/2017 9:14:25 PM ******/
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
end
GO
