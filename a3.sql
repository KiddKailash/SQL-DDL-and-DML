-- Task: Return the number of containers deposited at every location, ordered from greatest to least.

SELECT LocationID, COUNT(*) AS `NumDeposits`
FROM DEPOSITS
GROUP BY LocationID
ORDER BY NumDeposits DESC;