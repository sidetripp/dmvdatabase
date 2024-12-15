create database finalProjectWorkSpace;

create table Locations (
LocationID int auto_increment primary key,
Address varchar(255),
State varchar(255),
Zipcode int
); 

create table Insurance (
InsID int auto_increment primary key,
CompanyName varchar(255),
Coverage varchar(255),
PolicyNum int,
CompanyPhone varchar(20), 
LocationID int,
foreign key (LocationID) references locations(LocationID)
);


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

