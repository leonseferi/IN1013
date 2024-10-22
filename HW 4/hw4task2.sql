-- 1. Update Fluffy's information in the petPet table (if needed).
UPDATE petPet
SET owner = 'Alice',
    species = 'cat',
    gender = 'F',
    birth = '2015-05-20',
    death = NULL
WHERE petname = 'Fluffy';

-- Now insert or update the event for Fluffy (no need to update events if they already exist).
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics')
ON DUPLICATE KEY UPDATE
    eventtype = VALUES(eventtype),
    remark = VALUES(remark);

-- 2. Update Hammy's information in the petPet table (if needed).
UPDATE petPet
SET owner = 'Diane',
    species = 'hamster',
    gender = 'M',
    birth = '2010-10-30',
    death = NULL
WHERE petname = 'Hammy';

-- Now insert or update the event for Hammy.
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics')
ON DUPLICATE KEY UPDATE
    eventtype = VALUES(eventtype),
    remark = VALUES(remark);

-- 3. No specific update for Fluffy’s kittens, so no changes to be made.

-- 4. Update Claws's information in the petPet table (if needed).
UPDATE petPet
SET owner = 'John',
    species = 'cat',
    gender = 'M',
    birth = '1995-04-10',
    death = NULL
WHERE petname = 'Claws';

-- Now insert or update the event for Claws.
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Claws', '1997-08-03', 'injury', 'broke rib')
ON DUPLICATE KEY UPDATE
    eventtype = VALUES(eventtype),
    remark = VALUES(remark);

-- 5. Update the death date of Puffball in the petPet table.
UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

-- 6. Remove Fido from the database due to GDPR.
DELETE FROM petPet WHERE petname = 'Fido';

