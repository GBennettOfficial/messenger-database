CREATE TABLE dbo.FriendRequests (
    SenderId INT NOT NULL,
    RecipientId INT NOT NULL,
    [Status] INT NOT NULL DEFAULT 0,
    SentDate DATETIME2(7) NOT NULL DEFAULT GETDATE(),

    PRIMARY KEY (SenderId, RecipientId),
    FOREIGN KEY (SenderId) REFERENCES Users(Id),
    FOREIGN KEY (RecipientId) REFERENCES Users(Id)
)