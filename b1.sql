-- Task: Update the location name of 'Cnr Bolong Rd & Beinda St' to 'Hello World Café' and return the updated tuple.

UPDATE LOCATIONS
	SET LocationName = 'Hello World Cafe'
	WHERE Address = 'Cnr Bolong Rd & Beinda St';

SELECT * 
FROM LOCATIONS 
WHERE LocationName = 'Hello World Cafe';