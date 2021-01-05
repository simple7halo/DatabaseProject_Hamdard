INSERT INTO Department(Code, Name)
VALUES('AHIS','Art History');
INSERT INTO Department(Code, Name)
VALUES('BIOL','Biology');
INSERT INTO Department(Code, Name)
VALUES('CHEM','Chemistry');
INSERT INTO Department(Code, Name)
VALUES('CPSC','Computer Science');
INSERT INTO Department(Code, Name)
VALUES('MATH','Mathematics');
INSERT INTO Department(Code, Name)
VALUES('ENGL','ENGLISH');

INSERT INTO StudentEnrolled(ID, Password, Name, Address, DepartmentCode)
VALUES(1001,'student', 'Henry', '164-221 15ave, san harry street', 'AHIS');
INSERT INTO StudentEnrolled(ID, Password, Name, Address, DepartmentCode)
VALUES(1002,'student', 'Josh', '184-251 23ave, bull buker street', 'BIOL');
INSERT INTO StudentEnrolled(ID, Password, Name, Address, DepartmentCode)
VALUES(1003,'student', 'Kelplen', '64-421 44ave, Kol Hawaii street', 'CHEM');
INSERT INTO StudentEnrolled(ID, Password, Name, Address, DepartmentCode)
VALUES(1004,'student', 'Calpheon', '44-032 11ave, Tree street', 'CPSC');
INSERT INTO StudentEnrolled(ID, Password, Name, Address, DepartmentCode)
VALUES(1005,'student', 'Khushwant', '75-80 76ave, Scott street', 'MATH');
INSERT INTO StudentEnrolled(ID, Password, Name, Address, DepartmentCode)
VALUES(1006,'student', 'Gurleen', '12-769 70ave, Night street', 'ENGL');

INSERT INTO InvoicePaidBy(TransactionID, PaymentMethod, Amount, RegisteredCredit, StudentID)
VALUES(50001,'Cash', 1233.45, 9, 1001);
INSERT INTO InvoicePaidBy(TransactionID, PaymentMethod, Amount, RegisteredCredit, StudentID)
VALUES(50002,'Credit Card', 2233.45, 15, 1002);
INSERT INTO InvoicePaidBy(TransactionID, PaymentMethod, Amount, RegisteredCredit, StudentID)
VALUES(50003,'Debit Card', 1653.45, 12, 1003);
INSERT INTO InvoicePaidBy(TransactionID, PaymentMethod, Amount, RegisteredCredit, StudentID)
VALUES(50004,'Cheque', 1733.45, 12, 1004);
INSERT INTO InvoicePaidBy(TransactionID, PaymentMethod, Amount, RegisteredCredit, StudentID)
VALUES(50005,'Cash', 1933.45, 14, 1005);
INSERT INTO InvoicePaidBy(TransactionID, PaymentMethod, Amount, RegisteredCredit, StudentID)
VALUES(50006,'Student Loan', 2033.45, 15, 1006);

INSERT INTO Instructor(ID, Password, Name)
VALUES(2001, 'Instructor', 'Akerman');
INSERT INTO Instructor(ID, Password, Name)
VALUES(2002, 'Instructor', 'Fly Man');
INSERT INTO Instructor(ID, Password, Name)
VALUES(2003, 'Instructor', 'Hashman');
INSERT INTO Instructor(ID, Password, Name)
VALUES(2004, 'Instructor', 'Hukushaman');
INSERT INTO Instructor(ID, Password, Name)
VALUES(2005, 'Instructor', 'Treankleman');
INSERT INTO Instructor(ID, Password, Name)
VALUES(2006, 'Instructor', 'Nutahman');
INSERT INTO Instructor(ID, Password, Name)
VALUES(2007, 'Instructor', 'Hysahman');

INSERT INTO InstructorWithPHD(ID, Institution)
VALUES(2001, 'Valencia University');
INSERT INTO InstructorWithPHD(ID, Institution)
VALUES(2003, 'Heidel University');
INSERT INTO InstructorWithPHD(ID, Institution)
VALUES(2005, 'Velia University');
INSERT INTO InstructorWithPHD(ID, Institution)
VALUES(2007, 'Grana University');

INSERT INTO InstructorWithNoPHD(ID, YearsOfExp)
VALUES(2002, 3);
INSERT INTO InstructorWithNoPHD(ID, YearsOfExp)
VALUES(2004, 2);
INSERT INTO InstructorWithNoPHD(ID, YearsOfExp)
VALUES(2006, 5);

INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(102, 'AHIS', 'A130', 5, 'MWF 10.30-12.30', 2002);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(102, 'BIOL', 'B110', 5, 'TueThr 8.30-10.30', 2004);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(103, 'CHEM', 'C205', 5, 'MWF 12.30-14.30', 2001);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(107, 'CPSC', 'D150', 5, 'TueThr 10.30-12.30', 2007);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(110, 'MATH', 'B130', 5, 'MWF 14.30-16.30', 2003);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(103, 'ENGL', 'A130', 5, 'TueThr 12.30-14.30', 2006);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(112, 'AHIS', 'A230', 5, 'MWF 16.30-18.30', 2002);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(112, 'BIOL', 'B210', 5, 'TueThr 14.30-16.30', 2004);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(123, 'CHEM', 'C230', 5, 'MW 8.30-10.30', 2001);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(127, 'CPSC', 'D250', 5, 'MWF 10.30-12.30', 2005);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(130, 'MATH', 'B230', 5, 'MW 12.30-14.30', 2003);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(115, 'ENGL', 'A230', 5, 'MWF 14.30-16.30', 2004);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(142, 'AHIS', 'A330', 5, 'MWF 16.30-18.30', 2002);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(152, 'BIOL', 'B310', 5, 'TueThr 14.30-16.30', 2004);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(153, 'CHEM', 'C330', 5, 'MW 8.30-10.30', 2001);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(227, 'CPSC', 'D350', 5, 'MWF 10.30-12.30', 2005);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(212, 'AHIS', 'A330', 5, 'MWF 16.30-18.30', 2002);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(212, 'BIOL', 'B310', 5, 'TueThr 14.30-16.30', 2004);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(187, 'CHEM', 'C330', 5, 'MW 8.30-10.30', 2001);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(257, 'CPSC', 'D350', 5, 'MWF 10.30-12.30', 2005);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(242, 'AHIS', 'A430', 5, 'MWF 16.30-18.30', 2002);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(242, 'BIOL', 'B410', 5, 'TueThr 14.30-16.30', 2004);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(223, 'CHEM', 'C430', 5, 'MW 8.30-10.30', 2001);
INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
VALUES(307, 'CPSC', 'D450', 5, 'MWF 10.30-12.30', 2005);

INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(307, 'CPSC', 'CPSC', 227);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(227, 'CPSC', 'CPSC', 127);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(227, 'CPSC', 'MATH', 130);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(127, 'CPSC', 'CPSC', 107);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(107, 'CPSC', 'MATH', 110);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(107, 'CPSC', 'ENGL', 103);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(223, 'CHEM', 'CHEM', 187);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(223, 'CHEM', 'MATH', 130);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(187, 'CHEM', 'CHEM', 153);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(153, 'CHEM', 'CHEM', 123);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(153, 'CHEM', 'CHEM', 103);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(123, 'CHEM', 'MATH', 110);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(130, 'MATH', 'MATH', 110);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(242, 'AHIS', 'AHIS', 212);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(212, 'AHIS', 'AHIS', 142);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(212, 'AHIS', 'AHIS', 112);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(112, 'AHIS', 'AHIS', 102);
INSERT INTO Prerequisite(CourseID, Department, PreDepart, PreID)
VALUES(102, 'AHIS', 'ENGL', 103);

INSERT INTO StudentTakeCourse(StudentID, DepartmentCode, CourseID)
VALUES(1001, 'AHIS', 102);
INSERT INTO StudentTakeCourse(StudentID, DepartmentCode, CourseID)
VALUES(1002, 'BIOL', 102);
INSERT INTO StudentTakeCourse(StudentID, DepartmentCode, CourseID)
VALUES(1003, 'CHEM', 103);
INSERT INTO StudentTakeCourse(StudentID, DepartmentCode, CourseID)
VALUES(1004, 'CPSC', 107);
INSERT INTO StudentTakeCourse(StudentID, DepartmentCode, CourseID)
VALUES(1005, 'MATH', 110);
INSERT INTO StudentTakeCourse(StudentID, DepartmentCode, CourseID)
VALUES(1006, 'ENGL', 103);

INSERT INTO WaitList(StudentID, DepartmentCode, CourseID, PositionInLine)
VALUES(1001, 'AHIS', 112, 1);
INSERT INTO WaitList(StudentID, DepartmentCode, CourseID, PositionInLine)
VALUES(1002, 'BIOL', 112, 1);
INSERT INTO WaitList(StudentID, DepartmentCode, CourseID, PositionInLine)
VALUES(1003, 'CHEM', 123, 1);
INSERT INTO WaitList(StudentID, DepartmentCode, CourseID, PositionInLine)
VALUES(1004, 'CPSC', 127, 1);
INSERT INTO WaitList(StudentID, DepartmentCode, CourseID, PositionInLine)
VALUES(1005, 'MATH', 130, 1);
INSERT INTO WaitList(StudentID, DepartmentCode, CourseID, PositionInLine)
VALUES(1006, 'ENGL', 115, 1);