drop database `hone_maker`;
create database `hone_maker`;

use `hone_maker`;

CREATE TABLE `recipe` (
  `rec_Id` char(32) NOT NULL,
  `rec_Name` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`rec_Id`)
);

INSERT INTO `recipe` (`rec_Id`, `rec_Name`)
VALUES (1, '제육볶음'),
(2, '짜장면'),
(3, '김치볶음밥');

CREATE TABLE `ingredient` (
  `ing_Id` INT(11) unsigned NOT NULL,
  `ing_Name` VARCHAR(32) NOT NULL,
  `rec_Id` char(32) NOT NULL,
  PRIMARY KEY (`ing_Id`),
  CONSTRAINT ingredient_ibfk_1 FOREIGN KEY (`rec_Id`) REFERENCES `recipe` (`rec_Id`)
);

INSERT INTO `ingredient` (`ing_Id`, `ing_Name`, `rec_Id`)
VALUES (1, '돼지고기', '1,2'),
(2, '양파', '1,2'),
(3, '대파', '1,2,3'),
(4, '설탕', '1,2'),
(5, '깨', 1),
(6, '후추', 1),
(7, '고추장', 1),
(8, '간장', '1,3'),
(9, '맛술', '1,3'),
(10, '마늘', '1,2'),
(11, '춘장', 2),
(12, '호박', 2),
(13, '고추', 2),
(14, '계란', '2,3'),
(15, '김치', 3),
(16, '베이컨', 3),
(17, '고춧가루', 3),
(18, '소금', 3);


CREATE TABLE `refrigerator` (
  `ref_Id` INT(11) unsigned NOT NULL,
  `u_Id` INT(11) unsigned NOT NULL,
  `ing_Id` INT(11) unsigned NOT NULL,
  PRIMARY KEY (`ref_Id`),
  CONSTRAINT refrigerator_ibfk_1 FOREIGN KEY (`ing_Id`) REFERENCES `ingredient` (`ing_Id`)
);

INSERT INTO `refrigerator` (`ref_Id`, `u_Id`, `ing_Id`)
VALUES (1, 1, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18'); 

CREATE TABLE `h_user` (
  `u_Id` INT(11) unsigned NOT NULL,
  `u_Name` VARCHAR(32) NOT NULL,
  `ref_Id` INT(11) unsigned NOT NULL,
  PRIMARY KEY (`u_Id`),
  CONSTRAINT h_user_ibfk_1 FOREIGN KEY (`ref_Id`) REFERENCES `refrigerator` (`ref_Id`)
);

INSERT INTO `h_user` (`u_Id`, `u_Name`, `ref_Id`)
VALUES (1,'홍길동',1);