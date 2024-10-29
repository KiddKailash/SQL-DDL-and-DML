-- Task: Retrieve the list of user IDs and their refund totals from deposits at Location L004.
-- If the user has not made any deposits at this location, display their refund total as NULL.

WITH L004_DEPOSITS AS (SELECT D.UserID, SUM(C.RefundValue) AS L004_Refund
                       FROM DEPOSITS D
                       JOIN CONTAINERS C ON D.ContainerID = C.ContainerID
                       WHERE D.LocationID = 'L004'
                       GROUP BY D.UserId)           
            
SELECT U.UserID, COALESCE(D.L004_Refund, NULL) AS L004_Refund_Amount
FROM USERS U
LEFT JOIN L004_DEPOSITS D ON U.UserID = D.UserID;