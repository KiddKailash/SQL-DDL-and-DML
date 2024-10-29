-- Task: Delete all payments made to Ravichandra Kota.

DELETE FROM PAYMENTS WHERE UserID IN (SELECT UserID
                                      FROM USERS
                                      WHERE FirstName = 'Ravichandra' AND LastName = 'Kota');