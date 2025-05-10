CREATE PROCEDURE [dbo].[usp_Read_Groups]
	@Username VARCHAR(120)
AS
	WITH UserGroups (GroupId) AS (
		SELECT GLK.GroupId
		FROM Users AS U
		JOIN GroupLinks AS GLK
		ON U.Id = GLK.UserId
		WHERE U.Username = @Username
	),
	GroupCounts (GroupId, UserCount) AS (
		SELECT GLK.GroupId, COUNT(*)
		FROM GroupLinks AS GLK
		JOIN UserGroups AS UG
		ON UG.GroupId = GLK.GroupId
		GROUP BY GLK.GroupId
	)
	SELECT GP.[Name], GP.[Description], GC.UserCount
	FROM UserGroups AS UG
	JOIN Groups AS GP
	ON UG.GroupId = GP.Id
	JOIN GroupCounts AS GC
	ON GC.GroupId = GP.Id

