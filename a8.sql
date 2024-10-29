-- Task: Use a view to find the location with the highest average refund value on weekends.

DROP VIEW IF EXISTS WEEKEND_DEPOSITS;

CREATE VIEW WEEKEND_DEPOSITS AS 
SELECT D.LocationId, AVG(C.RefundValue) AS AverageRefund FROM DEPOSITS D 
JOIN CONTAINERS C ON D.ContainerID = C.ContainerID
WHERE DAYOFWEEK(D.DepositDateTime) = (1 OR 7)
GROUP BY D.LocationID;

SELECT LocationID 
FROM WEEKEND_DEPOSITS
WHERE AverageRefund = (SELECT MAX(AverageRefund) FROM WEEKEND_DEPOSITS);
