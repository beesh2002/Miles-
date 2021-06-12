DROP TABLE IF EXISTS Taverns;
CREATE TABLE Taverns (
	ID INT IDENTITY(1, 1),
	TavernName varchar(250), 
	LocationID INT,
	OwnerID INT,
	PRIMARY KEY (ID)


);

DROP TABLE IF EXISTS Location;
CREATE TABLE Location (
	ID INT IDENTITY(1, 1),
	Name varchar(250) ,
	PRIMARY KEY (ID)
	

);

DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
	ID INT IDENTITY(1, 1),
	UserName varchar(250) ,
	
	PRIMARY KEY (ID)

);

DROP TABLE IF EXISTS Roles;
CREATE TABLE Roles (
	ID INT IDENTITY(1, 1),
	Name varchar(50) ,
	Discription varchar(Max),
	PRIMARY KEY (ID)

);
DROP TABLE IF EXISTS UserRole;
CREATE TABLE UserRole
(
	UserID int, 
	RoleID int

);



DROP TABLE IF EXISTS BasementRats;
CREATE TABLE BasementRats (
	ID INT IDENTITY(1, 1),
	Name varchar(100) ,
	TavernID int,
	PRIMARY KEY (ID)
);

INSERT INTO TavernsVALUES ('Moes Tavern',2,1);
INSERT INTO TavernsVALUES ('Jon Tavern',2,2);

INSERT INTO LocationVALUES ('Houston');
INSERT INTO LocationVALUES ('Boston');

INSERT INTO Roles VALUES ( 'Owner', 'Who owns the Tavren');
INSERT INTO Roles VALUES ( 'bartender ', 'Serves Alchool ');
INSERT INTO Roles VALUES ( 'janitor ', 'Cleans the place ');

INSERT INTO BasementRats VALUES ( 'WOODRAT  ',1);
INSERT INTO BasementRats VALUES ( 'WOODRAT  ',2);
INSERT INTO BasementRats VALUES ( 'MARSH RICE  ',1);
INSERT INTO BasementRats VALUES ( 'NORWAY   ',1);

INSERT INTO Users VALUES ( 'Smith Johnson')
INSERT INTO Users VALUES ( 'Abangepoge Narcisse')
INSERT INTO Users VALUES ( 'Ahching Jeffrey')
INSERT INTO Users VALUES ( 'Aliev Daulet')
INSERT INTO Users VALUES ( 'Andou Vanessa')
INSERT INTO Users VALUES ( 'Bailey Jacob Mcclure')


DROP TABLE IF EXISTS Supplies;
CREATE TABLE Supplies (
	ID INT IDENTITY(1, 1),
	Unit INT,
	Name varchar(50),
	UCount INT,
	PRIMARY KEY (ID)

);

DROP TABLE IF EXISTS Inventory;
CREATE TABLE Inventory (
	ID INT IDENTITY(1, 1),
	SupplyID INT,
	TavernsID INT,
	DateUpdate INT ,
	SupplyCount INT,
	PRIMARY KEY (ID)

);

DROP TABLE IF EXISTS received;
CREATE TABLE received (
	ID INT IDENTITY(1, 1),
	SupplyID INT,
	TavernsID INT,
	Cost INT,
	AmmountRecived INT,
	PRIMARY KEY (ID)

);





