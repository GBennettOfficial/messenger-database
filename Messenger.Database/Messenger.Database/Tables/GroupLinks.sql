CREATE TABLE dbo.GroupLinks (
    UserId INT NOT NULL,
    GroupId INT NOT NULL,
    [Role] INT NOT NULL,

    PRIMARY KEY (UserId, GroupId),
    FOREIGN KEY (UserId) REFERENCES Users(Id),
    FOREIGN KEY (GroupId) REFERENCES Groups(Id),
)
