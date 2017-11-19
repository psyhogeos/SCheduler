-- DROP is a dangerous command
DROP DATABASE IF EXISTS FinalProject;
CREATE DATABASE FinalProject;
USE FinalProject;

--  ADDED MASC 310 , AND MAYBE AN AME CLASS , 
-- ADED CE 453, CE 456 -- 
-- REMOVED CE 460 
-- ADDED ISE 410 and csci 426 -- 

-- CIVIL  , CHEM , electrical  , industrial is FINE -- 
-- CS , CSBA and CS games are also fine -- 
-- Aerospace is fine -- 
-- Astronautical is fine -- 
-- BME is fine -- 
-- Mechanical is fine -- 


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
	values ('AME', '261', 4);
    
    INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('MASC', '310', 3);

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
	values ('CE', '402', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '408', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '451', 3),    
				('CE', '453', 3), 
				('CE', '456', 3);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '467L', 4);
    
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '471', 3);
        
INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '480', 3);
    
    INSERT into Course (coursePrefix, courseNum, courseUnits) 
	values ('CE', '482', 3);

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
           ('ISE', '315L', 3),
           ('CSCI', '426', 4),
           ('ISE', '410', 3);

CREATE TABLE User
(
	email VARCHAR (30)  NOT NULL,
    passwords VARCHAR (30) NOT NULL

);

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
VALUES
            (121,120),  -- MATHS 126 -- 
            (122,121),  --  MATHS 226 -- 
            (123,122),  --  MATHS 245 -- 
            (124,121),   --  MATHS 225 -- 
            (126,122),  -- MATHS 407 
             (130,129),  -- WRIT 340 
             (133,24),     -- BME302L--
             (134, 123),   -- BME 423 -- 
             (135,148),  -- BME403--
             (136,132), -- BME 405--
			
           (136,24), -- BME 405--
           (139, 127), -- BME 413--
           (140, 148) , -- BME 402 --
           (140, 132) , -- BME 402 --
           (140, 123) , -- BME 402 --
           (141,  144) , -- BME 410 --
           (143 ,  142) , -- CHEM 105BL --
           (144 , 143), -- CHEM 322AL-- 
           (145, 144 ) , -- CHEM 322BL --
           (146, 143) , -- CHEM 300L --
			(147, 146) , -- CHEM 430 --
            (147, 144) , -- CHEM 430 --
            (147, 122) , -- CHEM 430 --
             (147, 126) , -- CHEM 430 --
             (149, 143) ; -- BISC 320 L --
             
CREATE TABLE Major (
	majorID INT(11) PRIMARY KEY AUTO_INCREMENT,
    majorPrefix VARCHAR(4) NOT NULL,
    majorTitle VARCHAR(30) NOT NULL
);

CREATE TABLE  AerospaceEngineering
(
	AerospaceEngineeringID INT(11)  PRIMARY KEY AUTO_INCREMENT,
	GetCourseID  INT(11) NOT NULL
);
INSERT INTO AerospaceEngineering(GetCourseID)
-- NOT ADDED GE's and tech electives. 
VALUES(58), 
			(59),
            (60),
            (61),
            (62),
            (64),
            (65),
            (66),
            (67),
            (68),
            (69),
            (70),
            (71),
            (72),
            (73),
            (74),
            (75),
            (120),
            (121),
			(122),
			(123),
             (126),
            (127),
            (128),
			(129),
			(130),
            (142),
            (50),
            (80),
            (45);
		
           
            
CREATE TABLE  AstronauticalEngineering
( AstronauticalEngineeringID INT(11)  PRIMARY KEY AUTO_INCREMENT,
   GetCourseID  INT(11) NOT NULL
); 
INSERT INTO AstronauticalEngineering(GetCourseID) 
VALUES
-- NOT ADDED TECH ELECTIVES AND GE's 
			(59),
            (60),
            (64),
            (66),
            (67),
            (70),
            (71),
            (72),
            (79),
            (80),
			(81),
		    (82),
			(83),
			(84),
			(85),
			(86),
            (50),
            (45),
            (120),
			(121),
		    (122),
			(123),
            (126),
            (127),
            (128),
            (129),
            (130),
            (142);
            
CREATE TABLE  BiomedicalEngineering
(
	BiomedicalEngineeringID INT(11)  PRIMARY KEY AUTO_INCREMENT,
    GetCourseID   INT(11) NOT NULL
    
);
INSERT INTO BiomedicalEngineering(GetCourseID)
VALUES

-- NO TECHNICAL ELECTIVES AND GE's ADDED
  -- 131 to 141 cover BME courses
  
 
 (131),
 (132),
 (133),
 (134),
 (135),     -- BME ANCHOR COURSE 
 (136),
 (137),
 (138),
 (139),
 (140),
 (141),
 (142),
 (143),
 (144),
 (145),
 (120),
 (121),
 (122),
 (123),
 (126),
(127),
(129),
(130),
(148),
(149),
(24),
(50);





CREATE TABLE CivilEngineering
(
	CivilEngineeringID INT(11)  PRIMARY KEY AUTO_INCREMENT,
    GetCourseID    INT(11) NOT NULL
   
);
INSERT INTO CivilEngineering(GetCourseID)

-- GEOLOGY NOT ADDED , GE NOT ADDED , DESIGN KERNEL AND CE NOT ADDED -- 
VALUES
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109),
(110),
(111),
(112),
(113),
(114),
(115),
(116),
(117),
(118),
(119),
(120),
(121),
(122),
(123),
(126),
(127),
(129),
(130),
(142),
(35),
(24),
(50);




CREATE TABLE ChemicalEngineering
(
	ChemicalEngineeringID INT(11)  PRIMARY KEY AUTO_INCREMENT,
    GetCourseID   INT(11) NOT NULL
 
);

INSERT INTO ChemicalEngineering( GetCourseID)
--  NOT ADDED GE's , CHEMISTRY ELECTIVE , TECH ELECTIVES AND APPROVED ELECTIVES

VALUES 
(87),
(88),
(89),
(90),
(91),
(92),
(93),
(94),
(95),
(96),
(97),
(98),
(99),
(100),
(101),
(50),
(120),
(121),
(122),
(123),
(126),
(127),
(129),
(130),
(142),
(143),
(146),
(144),
(147);




CREATE TABLE ElectricalEngineering
(
	ElectricalEngineeringID INT(11)  PRIMARY KEY AUTO_INCREMENT,
    GetCourseID   INT(11) NOT NULL
    
);

INSERT INTO ElectricalEngineering(GetCourseID)
-- NOT INCLUDED GE's , REquired Elective , capstone , ee elective. 
VALUES
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(120),
(121),
(122),
(123),
(126),
(127),
(128),
(129),
(130),
(142),
(50);

CREATE TABLE EnvironmentalEngineering
(
	EnvironmentalEngineeringID INT(11)  PRIMARY KEY AUTO_INCREMENT,
   GetCourseID   INT(11) NOT NULL
);
INSERT INTO EnvironmentalEngineering(GetCourseID)
VALUES
 -- I AM NOT DOING ENVIRONMENTAL -- 
(120),
(121),
(122),
(123),
(126),
(127),

(129),
(130),
(5);

CREATE TABLE ComputerScience
(
	ComputerScienceID INT(11)  PRIMARY KEY AUTO_INCREMENT,
    GetCourseID  INT(11) NOT NULL
    
);

INSERT INTO ComputerScience(GetCourseID)
VALUES  
-- NOT ADDED GE's , Basic Science , tech electives , required electives. 
(1),
(4),
(3),
(155),
(5),
(6),
(9),    
(156),  -- 350 --
(7),   --  356 -- 
(10),  -- 360 -- 
(11),     -- 401 -- 
(120),
(121),
(122),
(124),
(125),
(129),
(130),
(21),
(50),

	(12);   -- DELETE THIS


CREATE TABLE ComputerScienceBusinessAdministration
(
	ComputerScienceBusinessAdministrationID INT(11)  PRIMARY KEY AUTO_INCREMENT,
     GetCourseID INT(11) NOT NULL
);

INSERT INTO ComputerScienceBusinessAdministration( GetCourseID)
VALUES

-- NOT ADDED GE's and CSCI/BUAD ELECTIVES --
(1),
(4),
(3),
(155),
(5),
(6),
(9),
(11), 
(148),   
(149),
(150),
(151),
(152),
(153),
(57), 
(55),
(56),
(129),
(130),
(126),
(50),
(120),
(121),
(124),
(125);


CREATE TABLE ComputerScienceGames
(
	ComputerScienceGamesID INT(11)  PRIMARY KEY AUTO_INCREMENT,
    GetCourseID INT(11)  NOT NULL
);

INSERT INTO ComputerScienceGames(GetCourseID)
VALUES 
--  NOT ADDED GE's 
(1),
(4),
(3),
(155),
(5),
(6),
(9),    
(156),  -- 350 --
(8), -- 353 --
(7),   --  356 -- 
(10),  -- 360 -- 
(13),   -- 420 --
(14),  -- 491 --
(15), -- 491 --
(16),
(17),
(161), -- CSCI 426 -- 
(47),
(48),
(51),
(52),
(53),
(54),
(50),
(129),
(130),
(126),
(120),
(121),
(124);



CREATE TABLE IndustrialEngineering
(
	IndustrialEngineeringID INT(11)  PRIMARY KEY AUTO_INCREMENT,
		GetCourseID INT(11)  NOT NULL
);
INSERT INTO IndustrialEngineering(GetCourseID)
-- NOT ADDED GE's , DSO 435 and Other Courses 
VALUES
(159), -- 105 --
(160), -- 315--
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(162) ,  -- ISE 410 --
(120),
(121),
(122),
(124),
(126),
(127),
(142),
(129),
(130),
(2),
(50),
(49);





CREATE TABLE MechanicalEngineering
(
	MechanicalEngineeringID INT(11)  PRIMARY KEY AUTO_INCREMENT,
    GetCourseID INT(11) NOT NULL  
);

INSERT INTO MechanicalEngineering ( GetCourseID)
VALUES
			(76),		--   -- AME 101 --
			(59),     -- AME 201 -- 
            (60),		-- AME 204 -- 
            (64),     -- AME 301 -- 
            (68),		-- AME 302 -- 
            (65),    -- AME 308 -- 
            (66),    -- AME 309 -- 
            (69),    -- AME 310 -- 
            (77),     -- AME 331 -- 
            (67),   -- AME 341al -- 
            (70),	 -- AME 341bl --
            (70),	 -- AME  441  --
            (120),    -- MATH 226 --
            (121),     -- MATH 245 --
             (122),    -- MATH 226 --
            (123),     -- MATH 245 --
            (126),    -- PHYS 151 -- 
            (127),    -- PHYS 152 -- 
            (128),    -- PHYS 153 -- 
            ( 129),
            (130),
             (50),  -- ENGR 102 -- 
             (45),  -- ITP 168 --
             (142),
             (63); 
             -- I HAVE NOT ADDED  , GE's AME CORE , AME DESIGN ELECTIVE AND CAPSTONE ELECTIVE
           
            
            
            





CREATE TABLE ComputerEngineeringandComputerScience
(
	ComputerEngineeringandComputerScienceID INT(11)  PRIMARY KEY AUTO_INCREMENT,
    GetCourseID   INT(11)   NOT NULL

);
INSERT INTO ComputerEngineeringandComputerScience(GetCourseID)
VALUES 

(11);  -- DELETE THIS -- 







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
    studentID INT(11) NOT NULL,
     GetCourseID  INT(11) NOT NULL
    
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

INSERT INTO Course (coursePrefix, courseNum, courseUnits)
	VALUES ('AME', 'TECH ELECTIVE', 3),
		   ('ASTE', 'TECH ELECTIVE', 3),
           ('BME', 'TECH ELECTIVE', 3),
           ('CHE', 'TECH ELECTIVE', 3),
           ('CE', 'TECH ELECTIVE', 3),
           ('ENE', 'TECH ELECTIVE', 3),
           ('CSCI', 'TECH ELECTIVE I', 3),
		   ('CSCI', 'TECH ELECTIVE II', 3),
           ('CSCI', 'TECH ELECTIVE III', 4),
           ('CSCI', 'TECH ELECTIVE IV', 4),
           ('EE', 'TECH ELECTIVE', 4),
           ('ISE', 'TECH ELECTIVE', 4);