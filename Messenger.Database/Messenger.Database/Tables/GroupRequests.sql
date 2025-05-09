CREATE TABLE dbo.GroupRequests (
    SenderId INT NOT NULL,
    RecipientId INT NOT NULL,
    GroupId INT NOT NULL,
    [Role] INT NOT NULL,
    [Status] INT NOT NULL,
    SentDate DATETIME2(7) NOT NULL DEFAULT GETDATE(),

    PRIMARY KEY (SenderId, RecipientId, GroupId),
    FOREIGN KEY (SenderId) REFERENCES Users(Id),
    FOREIGN KEY (RecipientId) REFERENCES Users(Id),
    FOREIGN KEY (GroupId) REFERENCES Groups(Id)
)