CREATE PROCEDURE [dbo].[usp_Read_Friends]
	@Username VARCHAR(120)
AS
	SELECT FR.Username, FR.UserCode, FR.FirstName, FR.LastName
	FROM Users AS U
	JOIN FriendLinks AS FLK
	ON U.Id = FLK.UserId
	JOIN Users AS FR
	ON FLK.FriendId = FR.Id
	WHERE U.Username = @Username

