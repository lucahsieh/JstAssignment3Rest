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
	Emp_ID_FK int NOT NULL,  
	ProjectID int, 
	WorkPackage TINYTEXT, 
	Sat DECIMAL, Sun DECIMAL, Mon DECIMAL, Tue DECIMAL, Wed DECIMAL, Thu DECIMAL, Fri DECIMAL, 
	Notes TINYTEXT,
	PRIMARY KEY(TimesheetRow_ID),
	FOREIGN KEY(Emp_ID_FK) REFERENCES Employees(Emp_ID),
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







DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees(EmpNumber int, Name TINYTEXT, UserName TINYTEXT, AdminRights BIT);
INSERT INTO Employees VALUES(100,"Job Boss", "JB0", 1);
INSERT INTO Employees VALUES(101,"Job Boss", "JB1", 0);
INSERT INTO Employees VALUES(102,"Job Boss", "JB2", 0);
INSERT INTO Employees VALUES(103,"Job Boss", "JB3", 0);
INSERT INTO Employees VALUES(104,"Job Boss", "JB4", 0);

DROP TABLE IF EXISTS Credentials;
CREATE TABLE Credentials(UserName TINYTEXT, Password TINYTEXT);
INSERT INTO Credentials VALUES("JB0", "JB0");
INSERT INTO Credentials VALUES("JB1", "JB1");
INSERT INTO Credentials VALUES("JB2", "JB2");
INSERT INTO Credentials VALUES("JB3", "JB3");
INSERT INTO Credentials VALUES("JB4", "JB4");

DROP TABLE IF EXISTS Timesheets;
CREATE TABLE Timesheets(
	Timesheet_ID INTEGER NOT NULL, 
	EmpNumber int,EndWeek Date ,OverTime DECIMAL, FlexTime DECIMAL,
	PRIMARY KEY(Timesheet_ID)
	);
INSERT INTO Timesheets VALUES(1,100, "2019-11-08", 1.0, 1.2);
INSERT INTO Timesheets VALUES(2,100, "2019-11-01", 1.0, 1.2);
INSERT INTO Timesheets VALUES(3,100, "2019-10-25", 1.0, 1.2);
INSERT INTO Timesheets VALUES(4,100, "2019-10-18", 1.0, 1.2);
INSERT INTO Timesheets VALUES(5,100, "2019-10-11", 1.0, 1.2);
INSERT INTO Timesheets VALUES(6,100, "2019-10-04", 1.0, 1.2);
INSERT INTO Timesheets VALUES(7,100, "2019-09-27", 1.0, 1.2);
INSERT INTO Timesheets VALUES(8,100, "2019-09-20", 1.0, 1.2);
INSERT INTO Timesheets VALUES(9,100, "2019-09-13", 1.0, 1.2);
INSERT INTO Timesheets VALUES(10,100, "2019-09-06", 1.0, 1.2);

INSERT INTO Timesheets VALUES(11,101, "2019-11-08", 1.0, 1.2);
INSERT INTO Timesheets VALUES(12,101, "2019-11-01", 1.0, 1.2);
INSERT INTO Timesheets VALUES(13,101, "2019-10-25", 1.0, 1.2);
INSERT INTO Timesheets VALUES(14,101, "2019-10-18", 1.0, 1.2);
INSERT INTO Timesheets VALUES(15,101, "2019-10-11", 1.0, 1.2);
INSERT INTO Timesheets VALUES(16,101, "2019-10-04", 1.0, 1.2);
INSERT INTO Timesheets VALUES(17,101, "2019-09-27", 1.0, 1.2);
INSERT INTO Timesheets VALUES(18,101, "2019-09-20", 1.0, 1.2);
INSERT INTO Timesheets VALUES(19,101, "2019-09-13", 1.0, 1.2);
INSERT INTO Timesheets VALUES(20,101, "2019-09-06", 1.0, 1.2);

INSERT INTO Timesheets VALUES(21,102, "2019-11-08", 1.0, 1.2);
INSERT INTO Timesheets VALUES(22,102, "2019-11-01", 1.0, 1.2);
INSERT INTO Timesheets VALUES(23,102, "2019-10-25", 1.0, 1.2);
INSERT INTO Timesheets VALUES(24,102, "2019-10-18", 1.0, 1.2);
INSERT INTO Timesheets VALUES(25,102, "2019-10-11", 1.0, 1.2);
INSERT INTO Timesheets VALUES(26,102, "2019-10-04", 1.0, 1.2);
INSERT INTO Timesheets VALUES(27,102, "2019-09-27", 1.0, 1.2);
INSERT INTO Timesheets VALUES(28,102, "2019-09-20", 1.0, 1.2);
INSERT INTO Timesheets VALUES(29,102, "2019-09-13", 1.0, 1.2);
INSERT INTO Timesheets VALUES(30,102, "2019-09-06", 1.0, 1.2);

INSERT INTO Timesheets VALUES(31,103, "2019-11-08", 1.0, 1.2);
INSERT INTO Timesheets VALUES(32,103, "2019-11-01", 1.0, 1.2);
INSERT INTO Timesheets VALUES(33,103, "2019-10-25", 1.0, 1.2);
INSERT INTO Timesheets VALUES(34,103, "2019-10-18", 1.0, 1.2);
INSERT INTO Timesheets VALUES(35,103, "2019-10-11", 1.0, 1.2);
INSERT INTO Timesheets VALUES(36,103, "2019-10-04", 1.0, 1.2);
INSERT INTO Timesheets VALUES(37,103, "2019-09-27", 1.0, 1.2);
INSERT INTO Timesheets VALUES(38,103, "2019-09-20", 1.0, 1.2);
INSERT INTO Timesheets VALUES(39,103, "2019-09-13", 1.0, 1.2);
INSERT INTO Timesheets VALUES(40,103, "2019-09-06", 1.0, 1.2);

INSERT INTO Timesheets VALUES(41,104, "2019-11-08", 1.0, 1.2);
INSERT INTO Timesheets VALUES(42,104, "2019-11-01", 1.0, 1.2);
INSERT INTO Timesheets VALUES(43,104, "2019-10-25", 1.0, 1.2);
INSERT INTO Timesheets VALUES(44,104, "2019-10-18", 1.0, 1.2);
INSERT INTO Timesheets VALUES(45,104, "2019-10-11", 1.0, 1.2);
INSERT INTO Timesheets VALUES(46,104, "2019-10-04", 1.0, 1.2);
INSERT INTO Timesheets VALUES(47,104, "2019-09-27", 1.0, 1.2);
INSERT INTO Timesheets VALUES(48,104, "2019-09-20", 1.0, 1.2);
INSERT INTO Timesheets VALUES(49,104, "2019-09-13", 1.0, 1.2);
INSERT INTO Timesheets VALUES(50,104, "2019-09-06", 1.0, 1.2);

DROP TABLE IF EXISTS TimesheetRows;
CREATE TABLE TimesheetRows(CUSTOMER_ID INTEGER NOT NULL, EmpNumber int, EndWeek Date, ProjectID int, WorkPackage TINYTEXT, Sat DECIMAL, Sun DECIMAL, Mon DECIMAL, Tue DECIMAL, Wed DECIMAL, Thu DECIMAL, Fri DECIMAL, Notes TINYTEXT);
INSERT INTO TimesheetRows VALUES(100, "2019-11-01", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-01", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-01", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-01", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-01", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-01", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-01", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-08", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-08", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-08", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-08", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-08", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-08", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-11-08", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-25", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-25", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-25", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-25", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-25", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-25", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-25", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-18", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-18", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-18", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-18", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-18", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-18", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(100, "2019-10-18", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");

INSERT INTO TimesheetRows VALUES(101, "2019-11-01", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-01", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-01", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-01", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-01", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-01", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-01", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-08", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-08", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-08", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-08", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-08", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-08", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-11-08", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-25", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-25", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-25", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-25", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-25", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-25", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-25", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-18", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-18", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-18", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-18", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-18", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-18", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(101, "2019-10-18", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");

INSERT INTO TimesheetRows VALUES(102, "2019-11-01", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-01", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-01", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-01", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-01", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-01", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-01", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-08", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-08", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-08", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-08", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-08", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-08", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-11-08", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-25", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-25", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-25", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-25", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-25", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-25", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-25", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-18", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-18", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-18", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-18", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-18", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-18", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(102, "2019-10-18", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");

INSERT INTO TimesheetRows VALUES(103, "2019-11-01", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-01", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-01", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-01", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-01", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-01", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-01", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-08", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-08", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-08", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-08", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-08", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-08", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-11-08", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-25", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-25", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-25", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-25", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-25", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-25", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-25", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-18", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-18", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-18", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-18", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-18", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-18", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(103, "2019-10-18", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");

INSERT INTO TimesheetRows VALUES(104, "2019-11-01", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-01", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-01", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-01", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-01", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-01", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-01", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-08", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-08", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-08", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-08", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-08", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-08", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-11-08", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-25", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-25", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-25", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-25", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-25", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-25", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-25", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-18", 130, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-18", 130, "AA121", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-18", 130, "AA122", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-18", 130, "AA123", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-18", 131, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-18", 132, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");
INSERT INTO TimesheetRows VALUES(104, "2019-10-18", 133, "AA120", 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, "");

