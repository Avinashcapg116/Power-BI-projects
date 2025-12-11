CREATE TABLE Student2 (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(20),
    Age INT,
    Department NVARCHAR(20),
    Percentage FLOAT,
    Location NVARCHAR(20),
    CreatedDate DATETIME DEFAULT GETDATE()
);



