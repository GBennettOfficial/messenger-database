CREATE PROCEDURE [dbo].[usp_Create_User]
    @Id INT,
	@Username VARCHAR(120),
	@UserCode VARCHAR(12),
    @FirstName VARCHAR(35),
    @LastName VARCHAR(35),
    @Email VARCHAR(70),
    @Phone VARCHAR(13) NULL,
    @PasswordHash VARCHAR(MAX),
    @PasswordSalt VARCHAR(MAX),
    @Picture VARCHAR(MAX) NULL,
    @RegistrationDate DATETIME2(7) NULL,
    @LastLoginDate DATETIME2(7) NULL,
    @IsEmailVerified BIT NULL,
    @IsPhoneVerified BIT NULL
AS
	INSERT INTO dbo.Users (Username, UserCode, FirstName, LastName, Email, Phone, PasswordHash, PasswordSalt, Picture)
    VALUES (@Username, @UserCode, @FirstName, @LastName, @Email, @Phone, @PasswordHash, @PasswordSalt, @Picture)
    SELECT SCOPE_IDENTITY()