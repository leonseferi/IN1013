CREATE TABLE petPet (
    petname VARCHAR(20) PRIMARY KEY,
    owner VARCHAR(45),
    species VARCHAR(45),
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    birth DATE,
    death DATE
);


CREATE TABLE petEvent (
    petname VARCHAR(20),
    eventdate DATE,
    eventtype VARCHAR(15),
    remark VARCHAR(255),
    PRIMARY KEY (petname, eventdate), --  composite primary key
    FOREIGN KEY (petname) REFERENCES petPet(petname) -- foreign key constraint
);