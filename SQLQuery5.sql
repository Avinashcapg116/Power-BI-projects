-- Create a table with the specified columns
CREATE TABLE studentdata (
    ID NVARCHAR(10) PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT,
    Department NVARCHAR(50),
    [Percentage of Marks] DECIMAL(5, 2),
    Location NVARCHAR(50),
    [Created Date] DATETIME
);
