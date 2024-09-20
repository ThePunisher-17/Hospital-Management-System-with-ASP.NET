CREATE TABLE [dbo].[Table]
(
	[adminId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [hospitalCode] VARCHAR(5) NOT NULL DEFAULT aaaaa, 
    [adminPassword] VARCHAR(50) NULL DEFAULT admin@123
)
