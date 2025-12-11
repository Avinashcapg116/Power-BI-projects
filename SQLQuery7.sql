-- Create a stored procedure for CRUD operations
CREATE PROCEDURE dbo.CRUDOperations
    @OperationType NVARCHAR(10), -- 'INSERT', 'UPDATE', 'DELETE', or 'SELECT'
    @ID NVARCHAR(10) = NULL,
    @Name NVARCHAR(100) = NULL,
    @Age INT = NULL,
    @Department NVARCHAR(50) = NULL,
    @PercentageOfMarks DECIMAL(5, 2) = NULL,
    @Location NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @OperationType = 'INSERT'
    BEGIN
        -- Insert operation
        INSERT INTO studentdata (ID, Name, Age, Department, [Percentage of Marks], Location, [Created Date])
        VALUES ('STU' + RIGHT('000' + CAST((ISNULL((SELECT MAX(CAST(SUBSTRING(ID, 4, 3) AS INT)) FROM YourTableName), 0) + 1) AS NVARCHAR(3)), 3),
                @Name, @Age, @Department, @PercentageOfMarks, @Location, GETDATE());
    END
    ELSE IF @OperationType = 'UPDATE'
    BEGIN
        -- Update operation
        UPDATE YourTableName
        SET Name = @Name,
            Age = @Age,
            Department = @Department,
            [Percentage of Marks] = @PercentageOfMarks,
            Location = @Location
        WHERE ID = @ID;
    END
    ELSE IF @OperationType = 'DELETE'
    BEGIN
        -- Delete operation
        DELETE FROM YourTableName WHERE ID = @ID;
    END
    ELSE IF @OperationType = 'SELECT'
    BEGIN
        -- Select operation
        SELECT * FROM YourTableName WHERE ID = @ID;
    END
    -- Add more conditions as needed for additional operations
END;
