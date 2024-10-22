-- first update fluffy's info in the petPet table.
UPDATE petPet
SET owner = 'Alice',
    species = 'cat',
    gender = 'F',
    birth = '2015-05-20',
    death = NULL
WHERE petname = 'Fluffy';

-- update fluffy's event for the vet visit on 2020-10-15 (if existing).
UPDATE petEvent
SET eventtype = 'vet',
    remark = 'antibiotics'
WHERE petname = 'Fluffy'
  AND eventdate = '2020-10-15';

-- update hammy's info in the petPet table.
UPDATE petPet
SET owner = 'Diane',
    species = 'hamster',
    gender = 'M',
    birth = '2010-10-30',
    death = NULL
WHERE petname = 'Hammy';

-- update hammy's event for the vet visit on 2020-10-15 (if existing).
UPDATE petEvent
SET eventtype = 'vet',
    remark = 'antibiotics'
WHERE petname = 'Hammy'
  AND eventdate = '2020-10-15';

-- no specific update for fluffy’s kittens, so no changes to be made here.

-- update claws's information in the petPet table.
UPDATE petPet
SET owner = 'John',
    species = 'cat',
    gender = 'M',
    birth = '1995-04-10',
    death = NULL
WHERE petname = 'Claws';

-- update claws's event for injury on 1997-08-03 (if exists).
UPDATE petEvent
SET eventtype = 'injury',
    remark = 'broke rib'
WHERE petname = 'Claws'
  AND eventdate = '1997-08-03';

-- update the death date of puffball in the petPet table.
UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

-- remove fido from the database due to GDPR.
DELETE FROM petPet WHERE petname = 'Fido';
