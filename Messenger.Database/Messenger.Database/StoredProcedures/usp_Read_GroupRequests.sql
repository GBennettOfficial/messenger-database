CREATE PROCEDURE [dbo].[usp_Read_GroupRequests]
	@Username VARCHAR(120)
AS
	WITH GroupCounts (GroupId, UserCount) AS (
		SELECT GLK.GroupId, COUNT(*) AS UserCount
		FROM 
		Users AS U
		JOIN GroupRequests AS GRQ
		ON U.Id = GRQ.RecipientId
		JOIN GroupLinks AS GLK
		ON GRQ.GroupId = GLK.GroupId
		WHERE U.Username = @Username
		GROUP BY GLK.GroupId
	)
	SELECT 
		GRP.[Name], 
		GRP.[Description], 
		GRQ.[Role], 
		SND.Username, 
		SND.FirstName, 
		SND.LastName,
		GC.UserCount
	FROM Users AS U
	JOIN GroupRequests AS GRQ
	ON U.Id = GRQ.RecipientId
	JOIN Groups AS GRP
	ON GRP.Id = GRQ.GroupId
	JOIN Users AS SND
	ON GRQ.SenderId = SND.Id
	JOIN GroupCounts AS GC
	ON GC.GroupId = GRP.Id
