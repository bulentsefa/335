CREATE TABLE Student (
StudentID  int ,
Name Char(40) ,
Surname Char(30),
Address Char(50),
BirthPlace Char(20),
BirthDate Date,
GPA Real,
Constraint PK_Student Primary Key (StudentID))

CREATE TABLE Department(
DepartmentID Integer,
Dname Char(40)
Constraint PK_Dep Primary Key(DepartmentID))


CREATE TABLE Study (
StudentID  Integer,
DepartmentID  Integer,
CONSTRAINT PK_Student Primary Key (StudentID,DepartmentID),
CONSTRAINT FK_Student 
	Foreign Key (StudentID) References Student,
CONSTRAINT FK_Dep	
	Foreign Key (DepartmentID) References Department)

CREATE TABLE Course (
CourseID Integer,
CourseName CHAR(30),
QuotaLimit Integer,
Constraint PK_Course Primary Key(CourseID))

CREATE TABLE Instructor(
InstructorID  Integer,
Name Char(40),
Surname  Char(30),
Address  Char(50),
BirthDate Date,
Birthplace Char(20),
constraint PK_inst Primary Key(InstructorID))

Create table Dependent ( 
StudentID int NOT NULL, 
PName Char(20), 
Relationship char(50), 
Constraint PK_Student Primary key (StudentID, DName), 
Constraint FK_Student 
	Foreign key (StudentID) References Student (StudentID) on DELETE CASCADE)

CREATE TABLE Has(
CourseID Integer,
InstructorID Integer,
Constraint PK_Course Primary Key(CourseID,InstructorID),
Constraint FK_Course 
	Foreign Key(CourseID) References Course,
Constraint FK_Inst
	Foreign Key(InstructorID) References Instructor)

CREATE TABLE WorkOn(
DepartmentID Integer,
InstructorID Integer,
Constraint PK_Depart Primary Key(DepartmentID,InstructorID),
Constraint FK_Depart
	Foreign Key(DepartmentID) References Department,
Constraint FK_Inst	
	Foreign Key(InstructorID) References Instructor)


CREATE TABLE Enroll (
CourseID int,
StudentID int,
LetterGrade Char(2),
Constraint PK_Course Primary Key(CourseID,StudentID),
Constraint FK_Course
	Foreign Key(CourseID) References Course,
Constraint FK_Student	
	Foreign Key(StudentID) References Student
)

INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(1,'AYSE','ATA','ISTANBUL','IZMIR','1990-10-23',3.2)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(2,'RABIA','TURKEN','ISTANBUL','KAYSERI','1994-11-03',2.7)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(3,'MELIH','YENI','TRABZON','TRABZON','1997-01-16',2.1)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(4,'AHSEN','CELIK','RIZE','ISTANBUL','1995-07-05',3.4)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(5,'BUSE','KAYA','EDIRNE','BURSA','1999-12-30',1.9)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(6,'OZAN','CETIN','YOZGAT','ISTANBUL','1999-08-18',1.3)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(7,'KEREM','OZKAYA','ARDAHAN','ARDAHAN','1994-11-03',2.7)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(8,'SEDAT','KANAR','ISTANBUL','ADANA','1993-06-17',3.2)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birthdate,GPA) VALUES(9,'ATAKAN','OZGUR','ANKARA','SAMSUN','1996-10-01',2.9)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birthdate,GPA) VALUES(10,'YUSUF','BOZDOGAN','','KAYSERI','1994-11-03',2.5)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(11,'OZLEM','KAZAN','ANKARA','KAYSERI','1992-01-14',1.4)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(12,'MURAT','DOGAN','ISTANBUL','KONYA','1998-06-16',3.0)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(13,'CEREN','ESKI','ISTANBUL','HAKKARI','199-11-03',3.9)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(14,'AYSEGUL','MERIC','EDIRNE','ISTANBUL','1997-08-13',2.0)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(15,'SENA','LALE','KASTAMONU','ISTANBUL','1995-11-30',3.2)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(16,'BILAL','TURAL','ISTANBUL','HATAY','1997-11-23',3.8)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(17,'MELISA','KARAKOC','KUTAHYA','ISTANBUL','1993-03-23',1.2)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(18,'BEHNAN','TEMIZ','SAKARYA','KAYSERI','1992-01-17',2.4)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(19,'SENA','GEDIK','ISTANBUL','ISTANBUL','1994-10-23',2.9)
INSERT INTO Student(StudentID,Name,Surname,Address,Birthplace,Birtdate,GPA) VALUES(20,'TAHA','KORKMAZ','SINOP','TRABZON','1999-12-02',3.9)
INSERT INTO Department(DepartmentID,Dname) VALUES(1,'CHEMISTRY')
INSERT INTO Department(DepartmentID,Dname) VALUES(2,'CIVIL ENGINEERING')
INSERT INTO Department(DepartmentID,Dname) VALUES(3,'ECONOMICS')
INSERT INTO Department(DepartmentID,Dname) VALUES(4,'MANAGEMENT INFORMATION SYSTEMS')
INSERT INTO Department(DepartmentID,Dname) VALUES(5,'EARLY CHILDHOOD EDUCATION')
INSERT INTO Department(DepartmentID,Dname) VALUES(6,'HISTORY')
INSERT INTO Department(DepartmentID,Dname) VALUES(7,'PHYSICS')
INSERT INTO Department(DepartmentID,Dname) VALUES(8,'PSYCHOLOGY')
INSERT INTO Department(DepartmentID,Dname) VALUES(9,'TOURISM ADMINISTRATION')
INSERT INTO Department(DepartmentID,Dname) VALUES(10,'INDUSTRIAL ENGINEERING')
INSERT INTO Department(DepartmentID,Dname) VALUES(11,'LINGUISTICS')
INSERT INTO Department(DepartmentID,Dname) VALUES(12,'MANAGEMENT')
INSERT INTO Department(DepartmentID,Dname) VALUES(13,'SOCIOLOGY')
INSERT INTO Department(DepartmentID,Dname) VALUES(14,'TURKISH LANGUAGE AND LITERATURE')
INSERT INTO Department(DepartmentID,Dname) VALUES(15,'MOLECULAR BIOLOGY AND GENETICS')
INSERT INTO Department(DepartmentID,Dname) VALUES(16,'INTERNATIONAL TRADE')
INSERT INTO Department(DepartmentID,Dname) VALUES(17,'COMPUTER ENGINEERING')
INSERT INTO Department(DepartmentID,Dname) VALUES(18,'MATHEMATICS')
INSERT INTO Department(DepartmentID,Dname) VALUES(19,'ENVIRONMENTAL SCIENCE')
INSERT INTO Department(DepartmentID,Dname) VALUES(20,'MECHANICAL ENGINEERING')
INSERT INTO Study(StudentID,DepartmentID) VALUES(1,3)
INSERT INTO Study(StudentID,DepartmentID) VALUES(2,1)
INSERT INTO Study(StudentID,DepartmentID) VALUES(3,14)
INSERT INTO Study(StudentID,DepartmentID) VALUES(4,15)
INSERT INTO Study(StudentID,DepartmentID) VALUES(5,12)
INSERT INTO Study(StudentID,DepartmentID) VALUES(6,13)
INSERT INTO Study(StudentID,DepartmentID) VALUES(7,4)
INSERT INTO Study(StudentID,DepartmentID) VALUES(8,6)
INSERT INTO Study(StudentID,DepartmentID) VALUES(9,10)
INSERT INTO Study(StudentID,DepartmentID) VALUES(10,5)
INSERT INTO Study(StudentID,DepartmentID) VALUES(11,20)
INSERT INTO Study(StudentID,DepartmentID) VALUES(12,19)
INSERT INTO Study(StudentID,DepartmentID) VALUES(13,2)
INSERT INTO Study(StudentID,DepartmentID) VALUES(14,11)
INSERT INTO Study(StudentID,DepartmentID) VALUES(15,16)
INSERT INTO Study(StudentID,DepartmentID) VALUES(16,7)
INSERT INTO Study(StudentID,DepartmentID) VALUES(17,9)
INSERT INTO Study(StudentID,DepartmentID) VALUES(18,17)
INSERT INTO Study(StudentID,DepartmentID) VALUES(19,8)
INSERT INTO Study(StudentID,DepartmentID) VALUES(20,18)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(1,'GENERAL CHEMISTRY',40)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(2,'ORGANIC CHEMISTRY',69)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(3,'MARKETING',44)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(4,'INTRODUCTION TO COMPUTING',100)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(5,'ANALYSIS OF ALGORITHIMS',35)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(6,'MICROECONOMICS',120)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(7,'MACROECONOMICS',120)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(8,'ANCIENT GREEK',40)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(9,'OTTOMAN HISTORY',100)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(10,'INTERNATIONAL TRADE',60)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(11,'TOURISM INDUSTRY',60)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(12,'FINANCIAL ACCOUNTING',70)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(13,'STATISTICS',100)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(14,'INTRODUCTION TO LAW',60)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(15,'SOCIAL PSYCHOLOGY',80)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(16,'SYNTAX',50)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(17,'BIOSTATISTICS',40)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(18,'MATERIAL SCIENCE',36)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(19,'GLOBAL CLIMATE CHANGE',30)
INSERT INTO Course(CourseID,CourseName,QuotaLimit) VALUES(20,'HEAT TRANSFER',32)
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(1,'ONUR','KOKSAL','ISTANBUL',1981-04-23,'ADANA')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(2,'AYSEGUL','TEZEL','ISTANBUL',1978-05-12,'SAMSUN')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(3,'ADEM','BUYUK','ANKARA',1953-09-29,'ANKARA')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(4,'KABIL','DEMIRKIRAN','ISTANBUL',1974-12-13,'BURSA')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(5,'MEHTAP','SOYSAL','EDIRNE',1972-01-01,'AYDIN')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(6,'ATAKAN','DEMIR','ISTANBUL',1975-07-07,'IZMIR')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(7,'CUNEYT','AKIN','BURSA',1983-02-21,'ANKARA')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(8,'TAHA','EROL','ISTANBUL',1988-02-01,'MERSIN')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(9,'PIRIL','SACAK','MANISA',1977-11-30,'BALIKESIR')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(10,'ERMAN','KUNTER','KARS',1950-01-01,'IGDIR')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(11,'FATIH','BOZKAYA','VAN',1983-01-21,'VAN')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(12,'FURKAN','BAYRAK','ISTANBUL',1980-01-03,'KASTAMONU')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(13,'ALPER','HACI','EDIRNE',1986-10-26,'EDIRNE')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(13,'BUSRA','KENDIR','AYDIN',1974-12-31,'AYDIN')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(14,'ELIF','EKINCI','ISTANBUL',1970-10-12,'NEVSEHIR')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(15,'BURAK','GUN','ANKARA',1989-02-14,'ANKARA')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(16,'SENOL','GUNES','TRABZON',1952-10-10,'TRABZON')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(17,'BOTAN','KAYA','SIVAS',1973-03-19,'YOZGAT')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(18,'MELTEM','CALISKAN','KIRKLARELI',1986-12-28,'EDIRNE')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(19,'BAHTIYAR','KAYA','DIYARBAKIR',1970-01-01,'DIYARBAKIR')
INSERT INTO Instructor(InstructorID,Name,Surname,Address,BirthDate,Birthplace) VALUES(20,'ALPASLAN','BOZKIR','ANKARA',1950-04-29,'ERZURUM')
INSERT INTO Has(CourseID,InstructorID) VALUES(1,7)
INSERT INTO Has(CourseID,InstructorID) VALUES(2,16)
INSERT INTO Has(CourseID,InstructorID) VALUES(3,14)
INSERT INTO Has(CourseID,InstructorID) VALUES(4,5)
INSERT INTO Has(CourseID,InstructorID) VALUES(5,15)
INSERT INTO Has(CourseID,InstructorID) VALUES(6,18)
INSERT INTO Has(CourseID,InstructorID) VALUES(7,13)
INSERT INTO Has(CourseID,InstructorID) VALUES(8,8)
INSERT INTO Has(CourseID,InstructorID) VALUES(9,2)
INSERT INTO Has(CourseID,InstructorID) VALUES(10,20)
INSERT INTO Has(CourseID,InstructorID) VALUES(11,1)
INSERT INTO Has(CourseID,InstructorID) VALUES(12,17)
INSERT INTO Has(CourseID,InstructorID) VALUES(13,6)
INSERT INTO Has(CourseID,InstructorID) VALUES(14,19)
INSERT INTO Has(CourseID,InstructorID) VALUES(15,11)
INSERT INTO Has(CourseID,InstructorID) VALUES(16,9)
INSERT INTO Has(CourseID,InstructorID) VALUES(17,4)
INSERT INTO Has(CourseID,InstructorID) VALUES(18,12)
INSERT INTO Has(CourseID,InstructorID) VALUES(19,3)
INSERT INTO Has(CourseID,InstructorID) VALUES(20,10)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(1,18)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(2,10)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(3,4)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(4,15)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(5,20)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(6,6)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(7,13)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(8,19)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(9,14)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(10,7)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(11,2)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(12,11)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(13,9)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(14,17)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(15,12)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(16,3)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(17,16)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(18,1)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(19,8)
INSERT INTO WorkOn(DepartmentID,InstructorID) VALUES(20,5)
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(1,17,'AA')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(2,9,'CB')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(3,15,'DD')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(4,4,'BB')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(5,12,'BA')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(6,16,'BA')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(7,13,'CC')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(8,2,'CB')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(9,8,'AA')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(10,20,'DC')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(11,6,'BB')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(12,14,'DD')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(13,19,'AA')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(14,7,'CC')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(15,18,'BA')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(16,5,'BB')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(17,11,'DD')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(18,1,'FF')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(19,10,'BA')
INSERT INTO Enroll(CourseID,StudentID,LetterGrade) VALUES(20,3,'CC')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(1,'CENK','FATHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(2,'CAN','BROTHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(3,'MERT','BROTHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(4,'TULAY','MOTHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(5,'FATMA','MOTHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(6,'TALHA','BROTHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(7,'CEREN','SISTER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(8,'BULENT','FATHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(9,'ARDA','BROTHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(10,'BURAK','FATHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(11,'SIRIN','MOTHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(12,'EMIN','FATHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(13,'ELIF','MOTHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(14,'LALE','SISTER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(15,'RUKIYE','MOTHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(16,'KEMAL','BROTHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(17,'EMIRHAN','BROTHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(18,'AYSE','MOTHER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(19,'EBRU','SISTER')
INSERT INTO Dependent(StudentID,Pname,Relationship) VALUES(20,'ZEYNEP','MOTHER')

