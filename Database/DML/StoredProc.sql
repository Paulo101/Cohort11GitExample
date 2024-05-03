Use Cohort11db
GO
create procedure dbo.InsertAppUser
@UserName text

AS
BEGIN
    INSERT INTO AppUser (userName)
	values(@UserName);

END

GO

create procedure dbo.FindUserTasks
@userId int
As
Begin
   Select * FROM Task t where t.userId = @userId
End