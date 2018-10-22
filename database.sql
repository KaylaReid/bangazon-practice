DELETE FROM Department;
DELETE FROM EmployeeComputer;
DELETE FROM Employee;
DELETE FROM Computers;
DELETE FROM EmployeeTrainingProgram;
DELETE FROM TrainingProgram;


DROP TABLE Department;
DROP TABLE EmployeeComputer;
DROP TABLE Employee;
DROP TABLE Computer;
DROP TABLE EmployeeTrainingProgram;
DROP TABLE TrainingProgram;

CREATE TABLE Department (
		Id INTEGER NOT NULL PRIMARY KEY  AUTOINCREMENT,
		Name VARCHAR NOT NULL,
		Budget DOUBLE NOT NULL
);

CREATE TABLE Computer (
		Id INTEGER NOT NULL PRIMARY KEY  AUTOINCREMENT,
		Manufacturer VARCHAR NOT NULL,
		Model VARCHAR NOT NULL,
		PurchaseDate DATETIME NOT NULL,
		DecomissionDate DATETIME NOT NULL
);

CREATE TABLE Employee (
		Id INTEGER NOT NULL PRIMARY KEY  AUTOINCREMENT,
		FirstName VARCHAR,
		LastName VARCHAR,
		IsSuperviser BOOL NOT NULL,
		DepartmentId INTEGER NOT NULL ,
			FOREIGN KEY(DepartmentId) REFERENCES Department(Id)	
);

CREATE TABLE EmployeeComputer (
		Id INTEGER NOT NULL PRIMARY KEY  AUTOINCREMENT,
		Assigned DATETIME NOT NULL,
		Unasigned DATETIME, 
		EmployeeId INTEGER NOT NULL,
		ComputerId INTEGER NOT NULL,
			FOREIGN KEY(EmployeeId) REFERENCES Employee(Id),
			FOREIGN KEY(ComputerId) REFERENCES Computer(Id)
);

CREATE TABLE TrainingProgram (
		Id INTEGER NOT NULL PRIMARY KEY  AUTOINCREMENT,
		StartDate DATETIME NOT NULL,
		EndDATE DATETIME NOT NULL,
		Capacity INTEGER NOT NULL,
		Name VARCHAR NOT NULL
);

CREATE TABLE EmployeeTrainingProgram (
		Id INTEGER NOT NULL PRIMARY KEY  AUTOINCREMENT,
		EmployeeId INTEGER NOT NULL,
		TrainingProgramId INTEGER NOT NULL,
			FOREIGN KEY(EmployeeId) REFERENCES Employee(Id),
			FOREIGN KEY(TrainingProgramId) REFERENCES TrainingProgram(Id)
);

INSERT INTO Department (Name, Budget)
VALUES ("HR",  230.00),
			("IT", 450000.00)
;

--INSERT INTO Comupter (Manufacture, Model, PurchaseDate, DecommissionDate)
--VALUES ("Mac",  "MacBook Air", "12/23/2019"),
--			("IT", 450000.00)
--;





