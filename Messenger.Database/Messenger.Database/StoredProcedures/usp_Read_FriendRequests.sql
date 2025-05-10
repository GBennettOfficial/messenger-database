CREATE PROCEDURE [dbo].[usp_Read_FriendRequests]
	@Username VARCHAR(120)
AS
	SELECT SND.Username, SND.UserCode, SND.FirstName, SND.LastName, FR.AcceptStatus
	FROM Users AS U
	JOIN FriendRequests AS FR
	ON U.Id = FR.RecipientId
	JOIN Users AS SND
	ON SND.Id = FR.SenderId
	WHERE U.Username = @Username
