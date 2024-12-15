create database Final_Project_BMV; 
SET SQL_SAFE_UPDATES=0; 
use Final_Project_BMV; 

CREATE TABLE Locations ( 
LocationID INT auto_increment PRIMARY KEY, 
Address VARCHAR (255), 
State VARCHAR (255), 
Zipcode INT 
); 

CREATE TABLE Users ( 
    User_ID INT auto_increment PRIMARY KEY, 
    Username VARCHAR(255), 
    Password VARCHAR(255), 
    Access_Type ENUM('Admin', 'Employee', 'Customer'), 
    User_F_Name VARCHAR(255), 
    User_L_Name VARCHAR(255) 
); 

create table Jobs( 
JobID int AUTO_INCREMENT, 
JobTitle varchar(40), 
Hiring bool, 
Salary double, 
PositionSlots int, 
PositionSlotsFilled int, 
PositionSlotsOpen int, 
Primary Key (JobID) 
); 

CREATE TABLE Fees( 
    Fee_ID int auto_increment PRIMARY KEY, 
    Fee_Type varchar (70), 
    Cost int, 
    Due_Deadline int, 
    Monthly_Overdue_Fee int 
); 

CREATE TABLE EmergencyContact( 
        EM_Cont_ID INT auto_increment PRIMARY KEY, 
        EC_Fname varchar (15), 
        EC_Lname varchar (15), 
        Relationship varchar (25), 
        EM_Cont_PhoneNumber int, 
        LocationID int, 
        EM_Email varchar (40), 
        FOREIGN KEY (LocationID) REFERENCES Locations(LocationID) 
); 

CREATE TABLE Licenses ( 
    LicID INT auto_increment PRIMARY KEY, 
    DLN VARCHAR(255), 
    LiscType VARCHAR(20), 
    Sex CHAR(1), 
    Height INT,
    Weight INT, 
    EyeColor VARCHAR(20), 
    HairColor VARCHAR(20), 
    IssDate DATE NOT NULL, 
    ExpDate DATE, 
    State VARCHAR(2), 
    LiscFName VARCHAR(255), 
    LiscLName VARCHAR(255), 
    LiscMName VARCHAR(255), 
    PhotoID VARCHAR(255), 
    DOB DATE, 
    DD VARCHAR(255),  
    User_ID INT, 
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) 
); 

 

CREATE TABLE Insurance ( 
InsID int auto_increment PRIMARY KEY, 
CompanyName VARCHAR (255), 
Coverage VARCHAR (255), 
PolicyNum INT, 
CompanyPhone VARCHAR (20),  
LocationID INT, 
FOREIGN KEY (LocationID) REFERENCES locations (LocationID) 
); 

CREATE TABLE UserFees( 
        UserFeeID INT auto_increment PRIMARY KEY, 
        Fee_ID int, 
        User_ID int,  
        Due_Start int, 
        FOREIGN KEY (Fee_ID) REFERENCES Fees(Fee_ID), 
        FOREIGN KEY (User_ID) REFERENCES Users(User_ID) 
); 

CREATE TABLE Employees( 
        Emp_ID INT auto_increment PRIMARY KEY, 
        Emp_Fname varchar (20), 
        Emp_Lname varchar (20), 
        LocationID int, 
        Emp_PhoneNumber varchar(255), 
        Emp_Email varchar (40), 
        EM_Cont_ID int, 
        JobID int, 
        Date_Hired int, 
        User_ID int, 
        FOREIGN KEY (LocationID) REFERENCES Locations(LocationID), 
        FOREIGN KEY (EM_Cont_ID) REFERENCES EmergencyContact(EM_Cont_ID), 
        FOREIGN KEY (JobID) REFERENCES Jobs(JobID), 
		FOREIGN KEY (User_ID) REFERENCES Users(User_ID) 
); 


create table Owners( 
OwnerID int AUTO_INCREMENT, 
OwnerFName varchar(30), 
OwnerLName varchar(30), 
LocationID int, 
OwnerPhone varchar (15), 
OwnerEmail varchar (50), 
LicID int, 
NumVehicles int, 
InsID int,
UserID int, 
Primary Key (OwnerID), 
Foreign Key (LocationID) references Locations(LocationID), 
Foreign Key (LicID) references Licenses(LicID), 
Foreign Key (InsID) references Insurance(InsID), 
Foreign Key (UserID) references Users(User_ID) 
);   

create table Vehicles( 
VehicleID int AUTO_INCREMENT, 
VehicleType varchar(50), 
Make varchar(50), 
Model varchar(50), 
ModelYear int, 
VIN varchar(17), 
Color varchar(50), 
OwnerID int, 
Primary Key (VehicleID), 
Foreign Key (OwnerID) references Owners(OwnerID) 
); 

create table RegisteredVehicles (  
RegID int AUTO_INCREMENT,  
OwnerID int, 
VehicleID int,  
RegDate date,  
ExpDate date,  
PlateID varchar(8),  
InsID int, 
Primary Key (RegID),  
Foreign Key (OwnerID) references Owners(OwnerID),  
Foreign Key (VehicleID) references Vehicles(VehicleID),  
Foreign Key (InsID) references Insurance(InsID)  
); 

#inserting data into tables

INSERT INTO Locations (LocationID, Address, State, ZipCode) VALUES 
(1, '5225 Pearl Dr', 'IN', '47715'), 
(2, '1999 6th Street', 'IN', '47715'), 
(3, '2881 Mountain Ln', 'IN', '47701'), 
(4, '5600 E Virginia St', 'IN', '47715'), 
(5, '5310 Pearl Dr B', 'IN', '47711'), 
(6, '123 Elm St', 'IN', '47716'),
(7, '456 Oak Ave', 'IN', '47721'), 
(8, '789 Pine Rd', 'IN', '47725'), 
(9, '101 Apple Blvd', 'IN', '47701'), 
(10, '202 Cherry Ln', 'IN', '47725'), 
(11, '303 Peach St', 'IN', '47706'), 
(12, '404 Berry St', 'IN', '47704'), 
(13, '505 Plum Pl', 'IN', '47714'), 
(14, '606 Lemon Ln', 'IN', '47711'), 
(15, '707 Orange Ave', 'IN', '47711'), 
(16, '808 Pear Pkwy', 'IN', '47715'), 
(17, '909 Willow Ln', 'IN', '47715'), 
(18, '1010 Grape St', 'IN', '47715'), 
(19, '1111 Alder Ave', 'IN', '47715'), 
(20, '1212 Beach St', 'IN', '47708'), 
(21, '1313 Fir Dr', 'IN', '47721'), 
(22, '1414 Spruce St', 'IN', '47725'), 
(23, '1515 Hemlock Pl', 'IN', '47728'), 
(24, '1616 Sequoia Ln', 'IN', '47737'), 
(25, '1717 Magnolia St', 'IN', '47747'), 
(26, '1818 Dogwood Ave', 'IN', '47750'),
(27, '1919 Hawthorn Dr', 'IN', '47715'), 
(28, '2020 Juniper Rd', 'IN', '47715'), 
(29, '2121 Yew Blvd', 'IN', '47722'), 
(30, '2222 Holly St', 'IN', '47725'), 
(31, '2323 Redwood Ave', 'IN', '47730'), 
(32, '2424 Sycamore Pkwy', 'IN', '47734'), 
(33, '2525 Chestnut St', 'IN', '47706'); 

INSERT INTO Users (Username, Password, Access_Type, User_F_Name, User_L_Name) VALUES 
('Algarner', 'admin_password1', 'Admin', 'Alec', 'Garner'),  
('Klamb', 'admin_password2', 'Admin', 'Kaleb', 'Lamb'),  
('Bdiekmann', 'admin_password3', 'Admin', 'Blake', 'Diekmann'),  
('Ngrayer', 'admin_password4', 'Admin', 'Nick', 'grayer'),  
('Aelessar', 'employee_password5', 'Employee', 'Aragorn', 'Elessar'),  
('Lskywalker', 'customer_password1', 'Customer', 'Luke', 'Skywalker'),  
('Skyguy', 'customer_password2', 'Customer', 'Anakin', 'Skywalker'),  
('Sithlord', 'customer_password3', 'Customer', 'Darth', 'Vader'),  
('Thegreat', 'customer_password4', 'Customer', 'Alexander', 'Great'),  
('Emperor', 'customer_password5', 'Customer', 'Julius', 'caesar'), 
('SUCandle', 'employee_password4', 'Employee', 'Susie', 'Candle'),
('RiKane', 'employee_password5', 'Employee', 'Rico', 'Kane'),
('MpleHrt', 'employee_password6', 'Employee', 'Maple', 'Lockhart');



insert into Jobs (JobTitle, Hiring, Salary, PositionSlots, PositionSlotsFilled, PositionSlotsOpen) values 
('Database Administer', False, 120000.00, 4, 4, PositionSlots-PositionSlotsFilled), 
('Chief Executive Officer', FALSE, 185000.00, 1, 1, PositionSlots-PositionSlotsFilled), 
('Customer Service Representative', TRUE, 36000.00, 4, 2, PositionSlots-PositionSlotsFilled), 
('Service Manager', FALSE, 54000.00,  2, 2, PositionSlots-PositionSlotsFilled), 
('Janitor', TRUE, 27000.00,  4, 1, PositionSlots-PositionSlotsFilled), 
('Web Designer', TRUE, 102000.00,  1, 0, PositionSlots-PositionSlotsFilled), 
('Emergency Medical Technician', TRUE, 98000.00,  2, 0, PositionSlots-PositionSlotsFilled), 
('IT Specialist',	TRUE, 46000.00,  1, 0, PositionSlots-PositionSlotsFilled), 
('Business Accountant', TRUE,	 98000.00,  2,	0, PositionSlots-PositionSlotsFilled); 

INSERT INTO Fees (Fee_Type, Cost, Due_Deadline, Monthly_Overdue_Fee)
VALUES  ("Outdated Lisence", 30, 30, 30), 
		("Crash", 250, 25, 15), 
		("ID Renewal", 15, 30, 10), 
        ("Drone Permit", 40, 40, 10), 
        ("Yaht permit", 70, 45, 10), 
        ("Mortorcycle Permit", 30, 25, 10), 
        ("DUI", 100, 15, 20), 
        ("Drivers Test", 20, 5, 35), 
        ("Lisence Plate Renewal", 25, 26, 35), 
        ("RV Certification", 25, 30, 10); 

INSERT INTO EmergencyContact (EC_Fname, EC_Lname, Relationship, EM_Cont_PhoneNumber, LocationID, EM_Email)
VALUES 	("Sam", "Bloom", "Parent", 4461583, 21, "ragdollpuncher@gmail.com"), 
		("Jack", "Hyde", "Parent", 1239015, 22, "lunartick@gmail.com"), 
        ("Jess", "Guess", "Guardian", 2348567, 23, "wigburner@gmail.com"), 
        ("Ron", "Seek", "Brother", 3451235, 24, "micernice@gmail.com"), 
        ("Paul", "Bunt", "Brother", 4567808, 25, "pyrofile@gmail.com"), 
        ("Roco", "Bunyan", "Husband", 5677706, 26, "raindrinker@gmail.com"), 
        ("Elmer", "Mud", "Husband", 6788724, 27, "burnintoast@gmail.com"), 
        ("Eliza", "Fudda", "Wife", 7899903, 28, "toadbeater@gmail.com"), 
        ("Liam", "Kennedy", "Wife", 8901011, 29, "untrustworthy@gmail.com"), 
        ("Tracy", "Shots", "Wife", 110234, 30, "rockcandyglutton@gmail.com"); 

INSERT INTO Licenses (LicID, DLN, LiscType, Sex, Height, Weight, EyeColor, HairColor, IssDate, ExpDate, State, LiscFName, LiscLName, LiscMName, PhotoID, DOB, DD, User_ID) 
VALUES   
(1, '9999-97-7999', 'Motorcycle', 'M', 5.8, 148, 'Blue', 'Blonde', '1941-12-7', '2024-12-7', 'IN', 'Alec', 'Garner', 'Delain', 'Image3', '1999-9-27', 1234567890123450, 1), 
(2, '5555-59-9999', 'Class D', 'M', 5.7, 200, 'Gray', 'Brown', '2018-5-5', '2024-6-5', 'IN', 'Blake', 'Diekmann', 'Ryan', 'Image2', '2003-5-16', 1234567890987650, 3), 
(3, '9898-23-4545', 'Class D', 'M', 5.11, 150,'Green', 'Black', '2022-11-5', '2028-12-5', 'IN', 'Kaleb', 'Lamb', 'Andrew', 'Image1', '2000-9-25', 1234567890123450, 2), 
(4, '5682-95-1559', 'Class D', 'M', 5.5, 144, 'Blue', 'Red', '2018-8-8', '2022-8-8', 'IN', 'Nick', 'Grayer', 'Riley', 'Image4', '2008-8-8', 1234567890123450, 4), 
(5, '5288-49-4385', 'Class D', 'M', 6.6, 170, 'Green', 'Black', '1950-1-5', '2025-5-5', 'IN', 'Aragorn', 'Elessar', 'Dwight', 'Image5', '1900-6-5', 1234567890123450, 5), 
(6, '5185-84-4518', 'Class D', 'M', 5.6, 150, 'Blue', 'Blonde', '1977-1-5', '2024-6-6', 'IN', 'Luke', 'Skywalker', 'Bob', 'Image6', '1901-8-7', 1234567890123450, 6), 
(7, '1856-85-6815', 'Class A', 'M', 6.2, 171, 'Blue', 'Brown', '1977-1-9', '2025-9-9', 'IN', 'Anakin', 'Skywalker', 'Kenny', 'Image7', '1902-9-9', 9876543214567890, 7), 
(8, '4958-72-3587', 'Class B', 'M', 6.7, 264, 'Red', 'Bald', '1983-5-10', '2026-10-10', 'IN', 'Darth', 'Vader', 'Rob', 'Image8', '1903-10-10', 4567894562589740, 8), 
(9, '7589-24-2684', 'Class D', 'M', 5.7, 168, 'Black', 'Blonde', '1900-8-17', '2027-11-11', 'IN', 'Alexander', 'Macedon', 'Nicholaos', 'Image9', '1904-11-11', 6751894529749560, 9), 
(10, '8752-48-6854', 'Class B', 'M', 5.9, 182, 'Yellow', 'Black', '1902-4-20', '2029-12-12', 'IN', 'Julius', 'Caesar', 'Romanus', 'Image10', '1905-12-12', 5879461235897450, 10); 

INSERT INTO Insurance (InsID, CompanyName, Coverage, PolicyNum, CompanyPhone, LocationID) VALUES 
(1, 'State Farm', 'Liability', '3456', '1-800-782-8332', 1), 
(2, 'GEICO', 'Liability', '1001', '1-800-207-7847', 3), 
(3, 'Progressive', 'Collision', '7890', '1-800-671-4405', 4), 
(4, 'Allstate', 'Comprehensive', '8899', '1-800-726-6033', 5), 
(5, 'USAA', 'Collision', '5467', '1-800-531-8722', 6), 
(6, 'Liberty Mutal', 'Liability', '3334', '1-800-290-8711', 7), 
(7, 'Farmers Insurance', 'Comprehensive', '6667', '1-888-327-6335', 8), 
(8, 'Nationwide', 'Comprehensive', '5556', '1-877-669-6877', 9), 
(9, 'American Family', 'Liability', '9990', '1-800-692-6326', 10), 
(10, 'Travelers', 'Liability', '9000', '1-800-842-5075', 11);  

INSERT INTO UserFees (Fee_ID, User_ID, Due_Start)
VALUES 	(10, 1, 11/14/2023), 
		(9, 2, 11/14/2023), 
        (8, 3, 11/14/2023), 
        (7, 4, 11/14/2023), 
        (6, 5, 11/14/2023), 
        (5, 10, 11/15/2023), 
        (4, 9, 11/16/2023), 
        (3, 8, 11/17/2023), 
        (2, 7, 11/18/2023), 
        (1, 6, 11/19/2023); 

INSERT INTO Employees (Emp_Fname, Emp_Lname, LocationID, Emp_PhoneNumber, Emp_Email, EM_Cont_ID, JobID, Date_Hired, User_ID)
VALUES 	("Alec", "Garner", 12, "8123394", "agarner@bmv.net", 10, 1, 1/24/2010, 1), 
		("Kaleb", "Lamb", 13, "8834679", "klamb@bmv.net", 9, 1, 5/6/2012, 2), 
        ("Blake", "Diekmann", 2, "1134685", "bdiekmann@bmv.net", 6, 1, 8/30/2015, 3), 
        ("Nick", "Grayer", 14, "2679446", "ngrayer@bmv.net", 7, 1, 2/10/2002, 4), 
        ("Aragorn", "Elessar", 15, "6285115", "aelessar@bmv.net", 8, 3, 4/11/2004, 5), 
        ("Luke", "Skywalker", 16, "6783142", "lskywalker@bmv.net", 5, 4, 6/4/2013, 6), 
        ("Anakin", "Skywalker", 17, "9982042", "askywalker@bmv.net", 2, 2, 7/7/2007, 7), 
        ("Susie", "Candle", 31, "3735472", "scandle@bmv.net", 3, 4, 10/12/2013, 11), 
        ("Rico", "Cane", 32, "5554323", "rkane@bmv.net", 1, 5, 11/28/2017, 12), 
        ("Maple", "Lockheart", 33, "1213374", "mlockheart@bmv.net", 4, 3, 11/30/2017, 13); 

insert into Owners (OwnerFName,OwnerLName, LocationID, OwnerPhone,OwnerEmail,LicID,NumVehicles,InsID,User_ID) values 
('Alec', 'Garner', 12, '(812) 669-2837', 'agarner@gmail.com', 1, 1, 2, 1), 
('Blake', 'Diekmann', 2, '(812) 445-6587', 'brdiekmann@astound.net', 2, 1, 9, 3), 
('Kaleb', 'Lamb', 13, '(812) 342-8631', 'klamb@hotmail.com', 3, 1, 4, 2), 
('Nick', 'Grayer', 14, '(812) 550-1675', 'ngrayer@gmail.com', 4, 1, 3, 4), 
('Aragorn', 'Elessar', 15, '(248) 762-0356', 'aelessar@hotmail.com', 5, 1, 6, 5), 
('Luke',	'Skywalker', 16, '(812) 644-2182', 'lskywalker@yodamail.com', 6, 1, 5, 6), 
('Anakin', 'Skywalker', 17, '(212) 658-3916', 'askywalker@clonemail.com', 7, 1, 1, 7), 
('Darth', 'Vader', 18, '(812) 300-2557', 'dvader@empiremail.net', 8, 1, 7, 8), 
('Alexander', 'Macedon', 19, '(812) 162-1585', 'amacedon@snailmail.com', 9, 1, 10, 9), 
('Julius', 'Caesar', 20, '(234) 109-6666', 'jcaesar@pidgenmail.com', 10, 1, 8, 10); 

insert into Vehicles (VehicleType,Make,Model,ModelYear,VIN,Color,OwnerID) values 
('Motorcycle', 'Harley Davidson', 'V-Rod 360', 2020, '1FMYU93156KB09076', 'White', 1), 
('Coupe', 'Ford', 'Mustang Ecoboost', 2019, '2HGFG12647H585704', 'Black', 2), 
('Coupe', 'Dodge', 'Challenger R/T', 2019, 'KNAFE121185570298', 'Blue', 3), 
('Sedan', 'Chrysler', '300 C', 2012, '3GSCL53769S597448', 'Red', 4), 
('Sedan', 'Toyota', 'Camry XLE', 2018, '5N1ED28T63C617390', 'Yellow', 5), 
('SUV', 'Jeep', 'Wrangler', 2015, '1GNCS13W8Y2347399', 'Black', 6), 
('Semi', 'Mack', 'LR', 2012, '2B3KA53H16H377916', 'Green', 7), 
('Semi','Freight Liner Trucks', 'eCascadia', 2022, 'JM1FE173880239499', 'Orange', 8), 
('Coupe', 'Chevrolet', 'Camaro SS', 2017, '2MEFM74WX1X631359', 'Gray', 9), 
('Semi', 'Kenworth', 'T680 Cab', 2011, '1ZVHT88S485107238', 'Red', 10); 

INSERT INTO RegisteredVehicles (OwnerID, VehicleID, RegDate, ExpDate, PlateID, InsID) 
VALUES  
(1, 1, '2011-01-26', '2024-02-28', 'PKD4984', 10),  
(2, 2, '2010-08-12', '2024-02-29', '7AAA761', 9),  
(3, 3, '2012-03-16', '2025-03-03', 'IEBN11', 2),  
(4, 4, '2016-06-03', '2025-05-19', '8EZM300', 5),  
(5, 5, '2016-10-03', '2025-05-23', '8FVX696', 6),  
(6, 6, '2020-06-26', '2026-09-07', 'IXSE89', 3),  
(7, 7, '2021-06-24', '2027-02-08', 'UC826', 8),  
(8, 8, '2021-08-04', '2028-07-21', '1079110', 4),  
(9, 9, '2022-12-20', '2028-08-28', '8AZZ566', 7),  
(10, 10, '2023-08-16', '2029-02-02', 'CKW3033', 1);

#Creating views

CREATE VIEW EmployeeJobEmergencyDetails AS 
SELECT 
    e.Emp_ID, 
    j.JobTitle, 
    e.Emp_Fname, 
    e.Emp_Lname, 
    e.Emp_PhoneNumber, 
    e.Emp_Email, 
    empLoc.Address AS Emp_Address, 
    empLoc.Zipcode AS Emp_Zipcode, 
    empLoc.State AS Emp_State,
    ec.EC_Fname, 
    ec.EC_Lname, 
    ec.Relationship, 
    ec.EM_Cont_PhoneNumber, 
    ec.EM_Email,
    ecLoc.Address AS EC_Address, 
    ecLoc.Zipcode AS EC_Zipcode, 
    ecLoc.State AS EC_State
FROM Employees e 
JOIN Jobs j ON e.JobID = j.JobID 
LEFT JOIN EmergencyContact ec ON e.EM_Cont_ID = ec.EM_Cont_ID
LEFT JOIN Locations empLoc ON e.LocationID = empLoc.LocationID
LEFT JOIN Locations ecLoc ON ec.LocationID = ecLoc.LocationID;

