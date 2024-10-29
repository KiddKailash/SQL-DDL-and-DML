-- Task: Find users with initials 'F. G.' who deposited containers at the Restaurant at 395 Pitt Street.

SELECT DISTINCT U.UserID, U.FirstName, U.LastName, U.PhoneNumber
FROM USERS U
JOIN DEPOSITS D ON U.UserID = D.UserID
WHERE D.LocationID = (SELECT LocationID FROM LOCATIONS WHERE ADDRESS = '395 Pitt Street') AND ((SELECT LEFT(FirstName, 1)) = 'F') AND ((SELECT LEFT(LastName, 1)) = 'G');