CREATE DATABASE timesheetDB;
CREATE USER 'stock3'@'localhost' IDENTIFIED BY 'check';
CREATE USER 'stock3'@'%' IDENTIFIED BY 'check';
GRANT ALL PRIVILEGES ON inventory.* TO 'stock'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON inventory.* TO 'stock'@'%' WITH GRANT OPTION;
USE timesheetDB;

DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Timesheets;
DROP TABLE IF EXISTS TimesheetRows;

CREATE TABLE Employees(
	Emp_ID int NOT NULL,  
	EmpNumber int, 
	Name TINYTEXT, 
	UserName TINYTEXT, 
	AdminRights BIT,
	PRIMARY KEY(Emp_ID)
	);

CREATE TABLE Users(
	User_ID int NOT NULL, 
	Emp_ID_FK int NOT NULL, 
	Password TINYTEXT, 
	PRIMARY KEY(User_ID),
	FOREIGN KEY(Emp_ID_FK) REFERENCES Employees(Emp_ID)
	);


CREATE TABLE Timesheets(
	Timesheet_ID int NOT NULL, 
	Emp_ID_FK int NOT NULL,
	EndWeek Date ,OverTime DECIMAL, FlexTime DECIMAL,
	PRIMARY KEY(Timesheet_ID),
	FOREIGN KEY(Emp_ID_FK) REFERENCES Employees(Emp_ID)
	);


CREATE TABLE TimesheetRows(
	TimesheetRow_ID int NOT NULL, 
	Timesheet_ID_FK int NOT NULL,
	ProjectID int, 
	WorkPackage TINYTEXT, 
	Sat DECIMAL, Sun DECIMAL, Mon DECIMAL, Tue DECIMAL, Wed DECIMAL, Thu DECIMAL, Fri DECIMAL, 
	Notes TINYTEXT,
	PRIMARY KEY(TimesheetRow_ID),
	FOREIGN KEY(Timesheet_ID_FK) REFERENCES Timesheets(Timesheet_ID)
	);

INSERT INTO Employees VALUES(0,100,"Job Boss", "JB0", 1);
INSERT INTO Employees VALUES(1,100,"Job Boss", "JB0", 0);
INSERT INTO Employees VALUES(2,100,"Job Boss", "JB0", 0);

INSERT INTO Users VALUES(0,0, "JB0");
INSERT INTO Users VALUES(1,1, "JB1");
INSERT INTO Users VALUES(2,2, "JB2");

INSERT INTO Timesheets VALUES(0,0, "2019-11-08", 1.0, 1.2);
INSERT INTO Timesheets VALUES(1,0, "2019-11-01", 1.0, 1.2);
INSERT INTO Timesheets VALUES(2,0, "2019-10-25", 1.0, 1.2);
INSERT INTO Timesheets VALUES(3,1, "2019-11-08", 1.0, 1.2);
INSERT INTO Timesheets VALUES(4,1, "2019-11-01", 1.0, 1.2);
INSERT INTO Timesheets VALUES(5,1, "2019-10-25", 1.0, 1.2);
INSERT INTO Timesheets VALUES(6,2, "2019-11-08", 1.0, 1.2);
INSERT INTO Timesheets VALUES(7,2, "2019-11-01", 1.0, 1.2);
INSERT INTO Timesheets VALUES(8,2, "2019-10-25", 1.0, 1.2);

INSERT INTO TimesheetRows VALUES(0, 0, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(1, 0, 991, "BB991", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(2, 0, 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(3, 0, 131, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(4, 0, 136, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(5, 1, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(6, 1, 991, "BB991", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(7, 1, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(8, 1, 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(9, 1, 131, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");

INSERT INTO TimesheetRows VALUES(10, 2, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(11, 2, 991, "BB991", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(12, 2, 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(13, 2, 131, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(14, 2, 136, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(15, 3, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(16, 3, 991, "BB991", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(17, 3, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(18, 3, 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(19, 3, 131, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");

INSERT INTO TimesheetRows VALUES(20, 4, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(21, 4, 991, "BB991", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(22, 4, 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(23, 4, 131, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(24, 4, 136, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(25, 5, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(26, 5, 991, "BB991", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(27, 5, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(28, 5, 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(29, 5, 131, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");

INSERT INTO TimesheetRows VALUES(30, 6, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(31, 6, 991, "BB991", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(32, 6, 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(33, 6, 131, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(34, 6, 136, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(35, 7, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(36, 7, 991, "BB991", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(37, 7, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(38, 7, 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(39, 7, 131, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");

INSERT INTO TimesheetRows VALUES(40, 8, 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(41, 8, 991, "BB991", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(42, 8, 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(43, 8, 131, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(44, 8, 136, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");