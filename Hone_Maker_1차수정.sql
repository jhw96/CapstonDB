drop database `hone_maker`;
create database `hone_maker`;

use `hone_maker`;

CREATE TABLE `ingredient` (
  `ing_Id` INT(11) unsigned NOT NULL,
  `ing_Name` VARCHAR(32) NOT NULL,
  `ing_Imp` BOOL NOT NULL,
  PRIMARY KEY (`ing_Id`)
);

INSERT INTO `ingredient` (`ing_Id`, `ing_Name`, `ing_Imp`)
VALUES (1, '돼지고기', true),
(2, '양파', false),
(3, '대파', false),
(4, '설탕', false),
(5, '깨', false),
(6, '후추', false),
(7, '고추장', false),
(8, '간장', false),
(9, '맛술', false),
(10, '마늘', false),
(11, '춘장', false),
(12, '호박', false),
(13, '고추', false),
(14, '계란', false),
(15, '김치', false),
(16, '베이컨', true),
(17, '고춧가루', false),
(18, '소금', false);


CREATE TABLE `recipe` (
  `rec_Id` char(32) NOT NULL,
  `rec_Name` VARCHAR(32) NOT NULL,
  `ing_Id` INT(11) unsigned NOT NULL,
  FOREIGN KEY (`ing_Id`) REFERENCES `ingredient` (`ing_Id`)
);

INSERT INTO `recipe` (`rec_Id`, `rec_Name`, `ing_Id`)
VALUES (1, '제육볶음', '1'),
(1, '제육볶음', '2'),
(1, '제육볶음', '3'),
(1, '제육볶음', '4'),
(1, '제육볶음', '5'),
(1, '제육볶음', '6'),
(1, '제육볶음', '7'),
(1, '제육볶음', '8'),
(1, '제육볶음', '9'),
(1, '제육볶음', '10'),
(2, '짜장면','1'),
(2, '짜장면','2'),
(2, '짜장면','3'),
(2, '짜장면','4'),
(2, '짜장면','8'),
(2, '짜장면','10'),
(2, '짜장면','11'),
(2, '짜장면','12'),
(2, '짜장면','13'),
(2, '짜장면','14'),
(3, '김치볶음밥','3'),
(3, '김치볶음밥','8'),
(3, '김치볶음밥','9'),
(3, '김치볶음밥','14'),
(3, '김치볶음밥','15'),
(3, '김치볶음밥','16'),
(3, '김치볶음밥','17'),
(3, '김치볶음밥','18');



CREATE TABLE `h_user` (
  `u_Id` INT(11) unsigned NOT NULL,
  `u_Name` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`u_Id`)
);

INSERT INTO `h_user` (`u_Id`, `u_Name`)
VALUES (1,'홍길동'),
(2,'임꺽정');

CREATE TABLE `refrigerator` (
  `u_Id` INT(11) unsigned NOT NULL,
  `ing_Id` INT(11) unsigned NOT NULL,
  FOREIGN KEY (`u_Id`) REFERENCES `h_user`(`u_Id`),
  FOREIGN KEY (`ing_Id`) REFERENCES `ingredient` (`ing_Id`)
);

INSERT INTO `refrigerator` (`u_Id`, `ing_Id`) VALUES 
(1, 11), 
(1, 2),
(1, 3),
(1, 4),
(1, 8),
(2, 7);

