CREATE PROCEDURE [dbo].[usp_Update_User]
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
	UPDATE dbo.Users SET
        Username = @Username,
        UserCode = @UserCode,
        FirstName = @FirstName,
        LastName = @LastName,
        Email = @Email,
        Phone = @Phone,
        PasswordHash = @PasswordHash,
        PasswordSalt = @PasswordSalt,
        Picture = @Picture,
        LastLoginDate = @LastLoginDate,
        IsEmailVerified = @IsEmailVerified,
        IsPhoneVerified = @IsPhoneVerified
    WHERE Id = @Id;