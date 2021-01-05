CREATE TABLE Department
(Code VARCHAR(20) PRIMARY KEY,
 Name VARCHAR(20) NOT NULL);
 
 CREATE TABLE StudentEnrolled
 (ID INTEGER PRIMARY KEY,
 Password VARCHAR(20) NOT NULL, 
 Name VARCHAR(20) NOT NULL,
 Address VARCHAR(40) NOT NULL,
 DepartmentCode VARCHAR(20),
 FOREIGN KEY(DepartmentCode) REFERENCES Department(Code));
 
 CREATE TABLE InvoicePaidBy
 (TransactionID INTEGER,
 PaymentMethod VARCHAR(20) NOT NULL,
 Amount REAL NOT NULL,
 RegisteredCredit INTEGER NOT NULL,
 StudentID INTEGER,
 PRIMARY KEY(TransactionID, StudentID),
 FOREIGN KEY(StudentID) REFERENCES StudentEnrolled(ID) ON DELETE CASCADE);
 
 CREATE TABLE Instructor
 (ID INTEGER PRIMARY KEY,
 Password VARCHAR(20) NOT NULL,
 Name VARCHAR(20) NOT NULL);
 
 CREATE TABLE InstructorWithPHD
 (ID INTEGER PRIMARY KEY,
 Institution VARCHAR(20) NOT NULL,
 FOREIGN KEY(ID) REFERENCES Instructor(ID));
 
 CREATE TABLE InstructorWithNoPHD
 (ID INTEGER PRIMARY KEY,
 YearsOfExp INTEGER NOT NULL,
 FOREIGN KEY(ID) REFERENCES Instructor(ID));
 
 CREATE TABLE CourseTaughtBy
 (ID INTEGER,
 DepartmentCode VARCHAR(20),
 Room VARCHAR(20) NOT NULL,
 AvailableSeat INTEGER NOT NULL,
 Time VARCHAR(20) NOT NULL,
 InstructorID INTEGER NOT NULL,
 PRIMARY KEY(ID, DepartmentCode),
 FOREIGN KEY(DepartmentCode) REFERENCES Department(Code),
 FOREIGN KEY(InstructorID) REFERENCES Instructor(ID));
 
 CREATE TABLE Prerequisite
 (Department VARCHAR(20) NOT NULL,
 CourseID INTEGER NOT NULL,
 PreDepart VARCHAR(20) NOT NULL,
 PreID INTEGER NOT NULL,
 FOREIGN KEY(Department, CourseID) REFERENCES CourseTaughtBy(DepartmentCode, ID),
 FOREIGN KEY(PreDepart, PreID) REFERENCES CourseTaughtBy(DepartmentCode, ID),
 UNIQUE(Department, CourseID, PreDepart, PreID));
 
 CREATE TABLE StudentTakeCourse
 (StudentID INTEGER NOT NULL,
 DepartmentCode VARCHAR(20) NOT NULL,
 CourseID INTEGER NOT NULL,
 FOREIGN KEY(StudentID) REFERENCES StudentEnrolled(ID),
 FOREIGN KEY(DepartmentCode, CourseID) REFERENCES CourseTaughtBy(DepartmentCode, ID),
 UNIQUE(StudentID, DepartmentCode, CourseID));
 
 CREATE TABLE WaitList
 (StudentID INTEGER NOT NULL,
 DepartmentCode VARCHAR(20) NOT NULL,
 CourseID INTEGER NOT NULL,
 PositionInLine INTEGER NOT NULL,
 FOREIGN KEY(StudentID) REFERENCES StudentEnrolled(ID),
 FOREIGN KEY(DepartmentCode, CourseID) REFERENCES CourseTaughtBy(DepartmentCode, ID),
 UNIQUE(StudentID, DepartmentCode, CourseID, PositionInLine));