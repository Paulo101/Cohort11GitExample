create trigger dbo.AppUserInserted
ON AppUser
AFTER INSERT
AS
BEGIN
	Insert into Task(TaskName, DueDate, isComplete, userId)
	SELECT 'DefaultTask', GETDATE(), 0, i.UserId 
	FROM inserted AS i;
END