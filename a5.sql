-- Task: Return the number of users who do not have a phone number registered.

SELECT COUNT(*) AS 'Num_Users_NULL_Phone'
FROM USERS
WHERE PhoneNumber IS NULL;