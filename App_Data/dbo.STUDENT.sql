CREATE TABLE [dbo].[STUDENT] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(50) NOT NULL, 
    [subject1] NCHAR(10) NOT NULL, 
    [subject2] NCHAR(10) NOT NULL, 
    [subject3] NCHAR(10) NOT NULL, 
    [subject4] NCHAR(10) NOT NULL, 
    [subject5] NCHAR(10) NULL, 
    [subject6] NCHAR(10) NULL, 
    [password] NVARCHAR(50) NOT NULL, 
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

