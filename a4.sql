-- Task: Retrieve the first and last name of the user with the highest balance.

SELECT FirstName, LastName
FROM USERS 
WHERE Balance = (SELECT MAX(balance) FROM USERS);