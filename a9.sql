-- Task: Retrieve the names of users who deposited both brown glass and PET bottles.

WITH USER_BOTTLE_DEPOSITS AS (SELECT U.FirstName, U.LastName, C.Material
                              FROM DEPOSITS D
                              JOIN USERS U ON D.UserID = U.UserID
                              JOIN CONTAINERS C ON D.ContainerID = C.ContainerID)

SELECT FirstName, LastName
FROM USER_BOTTLE_DEPOSITS
WHERE Material = 'Brown'
INTERSECT
SELECT FirstName, LastName
FROM USER_BOTTLE_DEPOSITS
WHERE Material = 'PET (Polyethylene Terephthalate)'  