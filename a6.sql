-- Task: Retrieve the user ID of the user with the highest number of glass container deposits.

WITH UserDeposits AS (
    SELECT D.UserID, COUNT(*) AS NumGlassDeposits
    FROM DEPOSITS D
    WHERE D.ContainerID IN (SELECT ContainerID 
                            FROM CONTAINERS 
                            WHERE ContainerType = 'Glass')
    GROUP BY D.UserID
)

SELECT UserID 
FROM UserDeposits 
WHERE NumGlassDeposits = (SELECT MAX(NumGlassDeposits) FROM UserDeposits);
