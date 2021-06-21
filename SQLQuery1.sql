
----------- Class 1 Assignment PART 1--------
--DROP DATABASE IF EXISTS MTTDB;
--CREATE DATABASE MTTDB;
--USE MTTDB;
--@CREATE A TABLE FOR TAVERNS
DROP TABLE IF EXISTS Taverns;
CREATE TABLE Taverns     
(
	ID INT IDENTITY(1, 1),
	TavernName varchar(250),
	LocationID INT, 
	OwnerID INT,
	PRIMARY KEY (ID)
);
--END CREATE A TABLE FOR TAVERNS
--SEEDING --
INSERT INTO Taverns (TavernName,	LocationID, OwnerID) 
			VALUES ('The First T', 1, 1),
					('The Second T', 2, 2),
					('The Third T', 3, 3), 
					('The Forth T', 3, 2), 
					('The Fifth T', 1, 1);
--END SEEDING --
-------------------------------------------------------
--@CREATE A TABLE FOR LOCATIONS
DROP TABLE IF EXISTS Locations;
CREATE TABLE Locations 
(
	ID INT IDENTITY(1,1),
	LName varchar(250) ,
	PRIMARY KEY (ID)
);
--END CREATE A TABLE FOR LOCATIONS
--SEEDING--
INSERT INTO Locations (LName)
			VALUES ('The first location'),
					('The second location'),
					('The third location');
--END SEEDING --
-------------------------------------------------------
--@CREATE A TABLE FOR Role 
DROP TABLE IF EXISTS Roles;
CREATE TABLE Roles (
	ID INT IDENTITY(1, 1),
	RoleName varchar(50) ,
	Discription varchar(Max),
	PRIMARY KEY (ID)
);
--END CREATE A TABLE FOR Role 
--SEEDING--
INSERT INTO Roles (RoleName, Discription)
		VALUES ('Owner','D1'),
				('Cleaner','D2'),
				('Guest','D3'),
				('Client','D4'),
				('Worker','D5');
--END SEEDING --
-------------------------------------------------------
--@CREATE A TABLE FOR Users 
DROP TABLE IF EXISTS Users;
CREATE TABLE Users
(
	ID INT IDENTITY(1, 1),
	FirstName varchar(50), 
	LastName varchar(100), 
	RoleID INT,
	PRIMARY KEY (ID)
);
-- END CREATE A TABLE FOR Users 
--SEEDING--
INSERT INTO Users (FirstName,LastName,RoleID) 
			VALUES ('F1','L1',1),
					('F2','L2',2),
					('F3','L3',3),
					('F4','L4',3),
					('F5','L5',4),
					('F6','L6',2),
					('F7','L7',4);
--END SEEDING --
-------------------------------------------------------
--@CREATE A TABLE FOR BasementRats
--DROP TABLE IF EXISTS BasementRats;
--CREATE TABLE BasementRats (
--	ID INT IDENTITY(1, 1),
--	Name varchar(100) ,
--	TavernID int,
--	PRIMARY KEY (ID)
--);
------BasementRats Deleted No need to seed again ------
------------------------ Class 1 Assignment PART 2---------------------
--@CREATE A TABLE FOR Supplies
DROP TABLE IF EXISTS Supplies;
CREATE TABLE Supplies (
	ID INT IDENTITY(1, 1),
	Unit varchar(50),
	SupplyName varchar(50),
	PRIMARY KEY (ID)
);
--END CREATE A TABLE FOR Supplies
--SEEDING --
INSERT INTO Supplies (Unit, SupplyName)
		VALUES ('lbs','Salt'), 
				('lbs','Lime' ), 
				('lbs','Chicken'),
				('Count','Kinfe'),
				( 'oz','strong ale'),
				('unit example','Something else');
-- END SEEDING --
-----------------------------------------------------
--@CREATE A TABLE FOR Inventory
DROP TABLE IF EXISTS Inventory;
CREATE TABLE Inventory
(
	ID INT IDENTITY(1,1),
	TavernID INT,
	SupplyID INT,
	DateUpdate DATE,
	SupplyCount INT,
	PRIMARY KEY (ID)
);
--END CREATE A TABLE FOR Inventory
--SEEDING --
INSERT INTO Inventory (TavernID,SupplyID,SupplyCount)
			VALUES (1,1,15),
					(1,2,6),
					(2,1,5),
					(3,3,100),
					(4,5,5),
					(5,1,85),
					(5,3,56);
-- END SEEDING --
-------------------------------------------------
--@CREATE A TABLE FOR  Tavern_Received.
DROP TABLE IF EXISTS Tavern_Received;
CREATE TABLE Tavern_Received
(
	ID INT IDENTITY (1,1),
	TavernID INT,
	SupplyID INT,
	Amount INT,
	Cost INT,
	Date_Receved Date,
	PRIMARY KEY (ID),
);
-- END CREATE A TABLE FOR  Tavern_Received.
--  SEEDING --
INSERT INTO Tavern_Received (TavernID,SupplyID,Amount,Cost)
			VALUES (1,2,52,105),
					(1,1,10,56),
					(1,3,12,100),
					(2,1,100,56),
					(3,1,20,60),
					(4,4,60,90);
-- END SEEDING --
----------------------------------------
------------------------ Class 1 Assignment PART 3---------------------
--  CREATE A TABLE FOR  ServiceStatuses.
DROP TABLE IF EXISTS ServiceStatuses;
CREATE TABLE ServiceStatuses
(
	ID INT IDENTITY(1,1),
	SName Varchar(15),
	PRIMARY KEY (ID)
);
-- END CREATE A TABLE FOR  ServiceStatuses.
-- SEEDING ---
INSERT INTO ServiceStatuses (SName)
			VALUES ('Active'),
			('Incative'),
			('out of stock'),
			('discontinued');
-- END SEEDING --
--  CREATE A TABLE FOR  Services.
DROP TABLE IF EXISTS Services;
CREATE TABLE services
(
	ID INT IDENTITY(1,1),
	serviceName Varchar (150),
	StatusID INT,
	PRIMARY KEY (ID)
);
-- END CREATE A TABLE FOR  services.
--SEEDING --
INSERT INTO	services (ServiceName,StatusID)
		VALUES ('Pool',1),
				('Weapon sharpening',1),
				('service3',2),
				('service4',4),
				('service5',3)
-- END SEEDING --
--  CREATE A TABLE FOR  Sales
DROP TABLE IF EXISTS Sales;
CREATE TABLE Sales
(
	ID INT IDENTITY (1,1),
	ServiceID INT,
	GuestID INT,
	Price INT,
	DatePurchase DATE,
	AmmountPurchased INT,
	TaverenID INT
	PRIMARY KEY (ID)
);
-- END CREATE A TABLE FOR  Sales
--SEEDING --
INSERT INTO Sales (ServiceID,GuestID,Price,AmmountPurchased,TaverenID)
		VALUES (1,4,23,22,1),
				(2,5,23,2,1),
				(3,6,44,443,2),
				(5,7,546,2,3),
				(4,6,3,6,4),
				(1,7,1,1,1)

-- END SEEDING --
GO
							----------END Class 1 Assignment PART 1--------

--  CREATE A TABLE FOR  GuestStatus.
DROP TABLE IF EXISTS GuestStatus;
CREATE TABLE GuestStatus
(
	ID INT IDENTITY(1,1),
	GuestStatus Varchar(15),
	PRIMARY KEY (ID)
);
-- END CREATE A TABLE FOR  ClassLevel.
-- SEEDING ---
INSERT INTO GuestStatus(GuestStatus)
			VALUES ('sick'), 
					('fine'), 
					('hangry'), 
					('raging'), 
					('placid');
-- END SEEDING --



--  CREATE A TABLE FOR  Classes.
DROP TABLE IF EXISTS Classes;
CREATE TABLE Classes
(
	ID INT IDENTITY(1,1),
	ClaseName Varchar(15),
	PRIMARY KEY (ID)
);
-- END CREATE A TABLE FOR  Classes.
-- SEEDING ---
INSERT INTO Classes(ClaseName)
			VALUES ('mage'),
			('fighter'),
			('Warrior'),
			('VIP');
-- END SEEDING --
----  CREATE A TABLE FOR  guestNotes.
--DROP TABLE IF EXISTS GuestNotes;
--CREATE TABLE GuestNotes
--(
--	ID INT IDENTITY(1,1),
--	Note Varchar(MAX),
--	PRIMARY KEY (ID)
--);
---- END CREATE A TABLE FOR  GuestNotes.
---- SEEDING ---
--INSERT INTO GuestNotes(Note)
--			VALUES ('Note1'),
--			('Note2'),
--			('Note3'),
--			('Note4');
---- END SEEDING --
--  CREATE A TABLE FOR  Guests.
DROP TABLE IF EXISTS Guests;
CREATE TABLE Guests
(
	ID INT IDENTITY (1,1),
	FirstName varchar(100),
	LastName varchar(150),
	Birthday Date,
	cakedays Date, --I have no idea what this is????????????????????????????-- 
	--GustNoteID INT,
	Notes Varchar(MAX),
	StatusID INT,
	--GuestClass_Level_ID INT,
	PRIMARY KEY (ID)
);
---- END CREATE A TABLE FOR  Guests.
---- SEEDING ---
INSERT INTO Guests (FirstName,LastName,StatusID)
			VALUES ('FN1','LN1',1),
					('FN2','LN2',1),
					('FN3','LN3',1),
					('FN4','LN4',1),
					('FN5','LN5',1),
					('FN6','LN6',1),
					('FN7','LN7',1);
---- END SEEDING --







--  CREATE A TABLE FOR  ClassLevel.
DROP TABLE IF EXISTS GuestLevel;
CREATE TABLE GuestLevel
(
	ID INT IDENTITY(1,1),
	GuestID INT,
	ClassID INT,
	CLevel INT,
	PRIMARY KEY (ID)
);
-- END CREATE A TABLE FOR  ClassLevel.
-- SEEDING ---
INSERT INTO GuestLevel(GuestID,ClassID,CLevel)
		Values (1,1,3) ,  --(Guest1,mage,3)--
				(2,1,5);
-- END SEEDING --


--------------------------------------------
-----ADDING FORGEN KEYS-----------
-------------------------------------------
ALTER TABLE Taverns ADD FOREIGN KEY (LocationID) References Locations(ID);
ALTER TABLE Taverns ADD FOREIGN KEY (OwnerID) References Users(ID);
ALTER TABLE Users ADD FOREIGN KEY (RoleID) References Roles(ID);
ALTER TABLE Inventory ADD FOREIGN KEY (TavernID) References Taverns(ID);
ALTER TABLE Inventory ADD FOREIGN KEY (SupplyID) References Supplies(ID);
ALTER TABLE Tavern_Received ADD FOREIGN KEY (TavernID) References Taverns(ID);
ALTER TABLE Tavern_Received ADD FOREIGN KEY (SupplyID) References Supplies(ID);
ALTER TABLE services ADD FOREIGN KEY (StatusID) References ServiceStatuses(ID);
ALTER TABLE Sales ADD FOREIGN KEY (ServiceID) References Services(ID);   --(ServiceID,GuestID,Price,AmmountPurchased,TaverenID)
ALTER TABLE Sales ADD fOREIGN KEY (GuestID) References Guests(ID);
ALTER TABLE Sales ADD FOREIGN KEY (TaverenID) References Taverns(ID);
ALTER TABLE Guests ADD FOREIGN KEY (StatusID) References GuestStatus(ID);
ALTER TABLE GuestLevel ADD FOREIGN KEY (GuestID) References Guests(ID);-----GuestLevel(GuestID,ClassID,CLevel)
ALTER TABLE GuestLevel ADD FOREIGN KEY (ClassID) References Classes(ID);

