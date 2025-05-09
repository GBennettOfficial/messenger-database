CREATE TABLE dbo.Groups (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    [Name] VARCHAR(120) NOT NULL,
    [Description] VARCHAR(MAX) NULL,
    Picture VARCHAR(MAX) NULL,
    CreatorId INT NOT NULL
	
	FOREIGN KEY (CreatorId) REFERENCES Users(Id)
)