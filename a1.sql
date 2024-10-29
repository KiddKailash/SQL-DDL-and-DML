-- Task: Retrieve the location name and address of all deposit locations, ordered alphabetically by location name.

SELECT LocationName, Address
FROM LOCATIONS
ORDER BY LocationName ASC;
