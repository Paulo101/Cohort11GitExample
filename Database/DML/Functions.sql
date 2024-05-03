create function dbo.GetIncompleteTask(@userId int)
RETURNS INT

AS
BEGIN
   DECLARE @Result INT
   SET @Result = (Select Count(*) as InComplete
            FROM Task t where t.userId = 1  AND t.IsComplete = 0)
   
   RETURN @Result
END