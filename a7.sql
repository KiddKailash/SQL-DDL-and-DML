-- Task: Count the number of green glass containers deposited between January 1, 2024, and April 15, 2024.

SELECT COUNT(*) AS NumGreenGlassDeposits
FROM DEPOSITS D
WHERE D.ContainerID IN (SELECT ContainerID
                        FROM CONTAINERS
                        WHERE ContainerType = 'Glass' AND Material = 'Green') AND (D.DepositDateTime BETWEEN '2024-01-01' AND '2024-04-15')