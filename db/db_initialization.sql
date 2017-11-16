-- DROP is a dangerous command
DROP DATABASE IF EXISTS FinalProject;
CREATE DATABASE FinalProject;
USE FinalProject;

CREATE TABLE Course (
	courseID INT(11) PRIMARY KEY AUTO_INCREMENT,
    semesterID INT(11),
    coursePrefix VARCHAR(11) NOT NULL,
    courseNum VARCHAR(25) NOT NULL,
    courseUnits INT(1) NOT NULL
);

INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('CSCI', '103', 4),
		   ('CSCI', '101', 3),
		   ('CSCI', '104', 4),
		   ('CSCI', '109', 2),
           ('CSCI', '201L', 4),
           ('CSCI', '270', 4),
           ('CSCI', '356', 4),
           ('CSCI', '353', 4),
           ('CSCI', '310', 4),
           ('CSCI', '360', 4),
           ('CSCI', '401', 4),
           ('CSCI', '404', 4),
           ('CSCI', '420', 4),
           ('CSCI', '491AL', 4),
           ('CSCI', '491BL', 2),
           ('CSCI', '281', 4),
           ('CSCI', '423', 4);
           
INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('EE', '105', 3),
		   ('EE', '155', 4),
		   ('EE', '141L', 4),
           ('EE', '109', 3),
           ('EE', '250L', 3),
           ('EE', '355', 3),
           ('EE', '202L', 4),
           ('EE', '330', 3),
           ('EE', '364', 3),
           ('EE', '301L', 4),
           ('EE', '209', 4),
           ('EE', '354', 4),
           ('EE', '457', 4),
           ('EE', '451', 4);

INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('ISE', '220', 3),
		   ('ISE', '225', 3),
           ('ISE', '331', 3),
           ('ISE', '460', 3),
           ('ISE', '330', 3),
		   ('ISE', '440', 3),
           ('ISE', '435', 3),
           ('ISE', '470', 3),
           ('ISE', '495A', 2),
           ('ISE', '495B', 2);
           
INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('ENE', '200', 3),
		   ('ENE', '426', 3),
           ('ENE', '428', 3);

INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('ITP', '168', 2),
		   ('ITP', '165', 2),
           ('ITP', '380', 4),
           ('ITP', '485', 4),
           ('ITP', '320', 4);

INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('ENGR', '102', 2);
    
INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('CTIN', '484L', 2),
		   ('CTIN', '488', 4),
           ('CTIN', '489', 2);

INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('CTAN', '452', 2);
    
INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('ECON', '351', 4),
		   ('ECON', '352', 4);

INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('ACCT', '410x', 4);

INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '105', 4);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '201', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '204', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '231L', 3);

INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '301', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '310', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '308', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '341aL', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '302', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '309', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '341bL', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '404', 3);

INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '441aL', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '436', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '451', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '481', 4);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '105', 4);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '101L', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', '331', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('AME', 'CORE', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('ASTE', '101L', 4);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('ASTE', '280', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('ASTE', '301a', 3);

INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('ASTE', '301b', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('ASTE', '330', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('ASTE', '421', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('ASTE', '470', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('ASTE', '480', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '205', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '120', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '330', 3);

INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '350', 3);

INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '405', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '442', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '444aL', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '443', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '476', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '445', 2);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '444bL', 3);

INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '485', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '446', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '460L', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CHE', '480', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '106L', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '108', 2);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '205', 2);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '207L', 2);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '225', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '235', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '309', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '334L', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '358', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '451', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '467L', 4);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '482', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '408', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '460', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '471', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '402', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '480', 3);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('MATH','125',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('MATH','126',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('MATH','226',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('MATH','245',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('MATH','225',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('MATH','407',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('PHYS','151L',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('PHYS','152L',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('PHYS','153L',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('WRIT','150',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('WRIT','340',3);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BME','101',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BME','210',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BME','302L',4);


INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BME','423',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BME','403L',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BME','405L',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BME','ANCHOR COURSE',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BME','425',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BME','413',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BME','402',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BME','410',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('CHEM','105aL',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('CHEM','105bL',4);


INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('CHEM','322aL',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('CHEM','322bL',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('CHEM','300L',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('CHEM','430',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BISC','220L',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BISC','320L',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BUAD','302',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BUAD','304',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BUAD','306',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BUAD','307',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BUAD','311',4);

INSERT INTO Course(coursePrefix , courseNum, courseUnits)
VALUES('BUAD','497',4);

INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('NA', 'Upper Division Elective', 4);

INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('CSCI', '170', 4),
		   ('CSCI', '350', 4),
           ('ISE', '105', 2),
           ('ISE', '315L', 3);

CREATE TABLE Prereq (
	courseID INT(11) not null,
    prereqID INT(11) not null
);

-- CSCI -- 
INSERT INTO Prereq (courseID, prereqID)
	VALUES (3, 1),
		   (155, 1),
           (155, 4),
           (5, 3),
           (6, 3),
           (6, 155),
           (9, 5),
           (7, 3),
           (156, 5),
           (156, 7),
           (10, 155),
           (10, 3),
           (11, 6),
           (11, 9);

-- CSGM / ITP --
INSERT INTO Prereq(courseID, prereqID)
	VALUES (8, 5),
		   (13, 122),
           (13, 3),
           (48, 47),
           (47, 3),
           (17, 47),
           (51, 52),
           (53, 52),
           (15, 14),
           (14, 48);
           
-- EE -- 
INSERT INTO Prereq(courseID, prereqID)
	VALUES (28, 21),
		   (29, 28),
           (26, 122),
           (30, 29),
           (31, 5);

-- ISE -- 
INSERT INTO Prereq(courseID, prereqID)
	VALUES (32, 119),
		   (33, 32),
           (34, 32),
           (36, 122),
           (38, 33),
           (38, 2),
           (158, 33),
           (158, 36),
           (40, 33),
           (40, 35),
           (41, 40),
           (37, 33);
      
-- ENE -- 
INSERT INTO Prereq(courseID, prereqID)
	VALUES (42, 141),
		   (42, 125),
           (42, 120),
           (43, 42),
           (44, 121),
           (44, 141),
           (44, 120);

-- Declan -- 
INSERT into Prereq (courseID, prereqID) 
	VALUES (59, 118),
	       (59, 124),
           (60, 59),
           (61, 59),
           (62, 59),
           (63, 120),
           (64, 60),
           (65, 119),
           (65, 125),
           (66, 121),
           (67, 121),
           (68, 65),
           (69, 66),
           (70, 68),
           (71, 63),
           (72, 66),
           (73, 66),
           (76, 63),
           (79, 120),
           (79, 125),
           (80, 121),
           (80, 126),
           (81, 80),
           (82, 79),
           (82, 126),
           (83, 82),
           (84, 82),
           (85, 82),
           (86, 118),
           (87, 118),
           (88, 87),
           (89, 88),
           (90, 89),
           (91, 89),
           (92, 89),
           (93, 89),
           (94, 89),
           (95, 93),
           (96, 93),
           (97, 93),
           (98, 95),
           (99, 93),
           (100, 95),
           (103, 124),
           (104, 103),
           (104, 122),
           (105, 103),
           (106, 103),
           (107, 106),
           (108, 106),
           (108, 125),
           (109, 106),
           (110, 107),
           (111, 106),
           (112, 111),
           (113, 106),
           (114, 109),
           (115, 109),
           (116, 109),
           (117, 112);

INSERT INTO Prereq(courseID, prereqID)
VALUES(119,118),
			(120,119),
            (121,120),
            (122,119),
            (123,120),
            (125,124),
            (126,125),
             (128,127),
             (131,24),     -- BME302L--
             (132, 121),
             (133,146),  -- BME403--
             (134,130), -- BME 405--
             (134,24), -- BME 405 -- 
           (136,125), -- BME 425--
           (137, 125), -- BME 413--
           (138, 146) , -- BME 402 --
           (138, 130) , -- BME 402 --
           (138, 121) , -- BME 402 --
           (139,  142) , -- BME 410 --
           (141 ,  140) , -- CHEM 105BL --
           (142 , 141), -- CHEM 322AL-- 
           (143, 142 ) , -- CHEM 322BL --
           (144, 141) , -- CHEM 300L --
			(145, 144) , -- CHEM 430 --
            (145, 142) , -- CHEM 430 --
            (145, 120) , -- CHEM 430 --
             (145, 124) , -- CHEM 430 --
             (147, 141) ; -- BISC 320 L --
             
CREATE TABLE Major (
	majorID INT(11) PRIMARY KEY AUTO_INCREMENT,
    studentID INT(11),
    majorPrefix VARCHAR(4) NOT NULL,
    majorTitle VARCHAR(30) NOT NULL
);

CREATE TABLE Student (
	studentID INT(11) PRIMARY KEY AUTO_INCREMENT,
    majorID INT(11) NOT NULL,
    email VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL
    -- FOREIGN KEY fk1(majorID) REFERENCES Major(majorID),
    -- FOREIGN KEY (planID) REFERENCES CoursePlan(planID)
);

CREATE TABLE Semester (
	semesterID INT(11) PRIMARY KEY AUTO_INCREMENT,
    planID INT(11) NOT NULL,
    season VARCHAR(10) NOT NULL,
    year INT(4) NOT NULL
    -- FOREIGN KEY fk2(planID) REFERENCES CoursePlan(planID)
);

CREATE TABLE CoursePlan (
	planID INT(11) PRIMARY KEY AUTO_INCREMENT,
    studentID INT(11) NOT NULL
	-- FOREIGN KEY fk2(studentID) REFERENCES Student(studentID)
);

CREATE TABLE takenCourses (
    studentID INT(11) NOT NULL,
    courseID INT(11) NOT NULL
	-- FOREIGN KEY fk2(studentID) REFERENCES Student(studentID)
);

ALTER TABLE CoursePlan
ADD FOREIGN KEY (studentID) REFERENCES Student(studentID);

ALTER TABLE Semester
ADD FOREIGN KEY (planID) REFERENCES CoursePlan(planID);

ALTER TABLE Course
ADD FOREIGN KEY (semesterID) REFERENCES Semester(semesterID);

ALTER TABLE Student
ADD FOREIGN KEY (majorID) REFERENCES Major(majorID);

ALTER TABLE takenCourses
ADD FOREIGN KEY (studentID) REFERENCES Student(studentID),
ADD FOREIGN KEY (courseID) REFERENCES Course(courseID);



	