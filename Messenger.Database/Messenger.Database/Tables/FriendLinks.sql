CREATE TABLE dbo.FriendLinks (
    UserId INT NOT NULL,
    FriendId INT NOT NULL,

    PRIMARY KEY (UserId, FriendId),
    FOREIGN KEY (UserId) REFERENCES Users(Id),
    FOREIGN KEY (FriendId) REFERENCES Users(Id)
)