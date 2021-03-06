-- Initialize Database "WishLists"

-- CREATE DATABASE "WishLists";

CREATE TABLE "People"(
    peopleID SMALLSERIAL PRIMARY KEY,
    peopleName VARCHAR (50) NOT NULL
);

CREATE TABLE "Lists"(
    listID SMALLSERIAL PRIMARY KEY,
    peopleID INT REFERENCES "People" NOT NULL,
    listName VARCHAR(20) NOT NULL
);

CREATE TABLE "Items"(
    itemID SMALLSERIAL PRIMARY KEY,
    itemName VARCHAR(20) NOT NULL
);

CREATE TABLE "ListItems"(
    listItemID SMALLSERIAL PRIMARY KEY,
    listID INT REFERENCES "Lists" NOT NULL,
    itemID INT REFERENCES "Items" NOT NULL,
    listItemDesired INT NOT NULL DEFAULT 1,
    listItemReceived INT NOT NULL DEFAULT 0
);