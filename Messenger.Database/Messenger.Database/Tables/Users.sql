﻿CREATE TABLE dbo.Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(120) UNIQUE NOT NULL,
    UserCode VARCHAR(12) UNIQUE NOT NULL,
    FirstName VARCHAR(35) NOT NULL,
    LastName VARCHAR(35) NOT NULL,
    Email VARCHAR(70) UNIQUE NOT NULL,
    Phone VARCHAR(13) NULL,
    PasswordHash VARCHAR(MAX) NOT NULL,
    PasswordSalt VARCHAR(MAX) NOT NULL,
    Picture VARCHAR(MAX) NULL,
    RegistrationDate DATETIME2(7) NOT NULL DEFAULT GETDATE(),
    LastLoginDate DATETIME2(7) NOT NULL DEFAULT GETDATE(),
    IsEmailVerified BIT NOT NULL DEFAULT 0,
    IsPhoneVerified BIT NOT NULL DEFAULT 0
)
