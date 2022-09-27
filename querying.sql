SELECT owners.name AS owner_name, COUNT(owner_pets.owner_id) FROM owners
JOIN owner_pets
ON owner_pets.owner_id = owners.id
JOIN pets
ON pets.id = owner_pets.pet_id
GROUP BY owner_pets.owner_id;

-- 