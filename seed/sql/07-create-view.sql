CREATE VIEW breed_count AS
SELECT c.id, c.breed, ( SELECT COUNT(*) FROM dog WHERE breedId = c.id ) as 'Breed Count'
FROM dog as a
JOIN breedLookup as c ON c.id = a.breedId
GROUP BY c.id, c.breed;
