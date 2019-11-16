/*
drop database `hone_maker`;
create database `hone_maker`;

use `hone_maker`;

CREATE TABLE `ingredient` (
  `ing_Id` INT(11) unsigned NOT NULL,
  `ing_Name` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`ing_Id`)
);

INSERT INTO `ingredient` (`ing_Id`, `ing_Name`)
VALUES (1, '돼지고기'),
(2, '양파'),
(3, '대파'),
(4, '설탕'),
(5, '깨'),
(6, '후추'),
(7, '고추장'),
(8, '간장'),
(9, '맛술'),
(10, '마늘'),
(11, '춘장'),
(12, '호박'),
(13, '고추'),
(14, '계란'),
(15, '김치'),
(16, '베이컨'),
(17, '고춧가루'),
(18, '소금');


CREATE TABLE `recipe` (
  `rec_Id` char(32) NOT NULL,
  `rec_Name` VARCHAR(32) NOT NULL,
  `ing_Id` INT(11) unsigned NOT NULL,
  `ing_Imp` INT(11) unsigned NOT NULL, 
  FOREIGN KEY (`ing_Id`) REFERENCES `ingredient` (`ing_Id`)
);

INSERT INTO `recipe` (`rec_Id`, `rec_Name`, `ing_Id`, `ing_Imp`)
VALUES (1, '제육볶음', '1', '5'),
(1, '제육볶음', '2', '3'),
(1, '제육볶음', '3', '2'),
(1, '제육볶음', '4', '4'),
(1, '제육볶음', '5', '3'),
(1, '제육볶음', '6', '1'),
(1, '제육볶음', '7', '5'),
(1, '제육볶음', '8', '5'),
(1, '제육볶음', '9', '1'),
(1, '제육볶음', '10', '3'),
(2, '짜장면','1', '5'),
(2, '짜장면','2', '2'),
(2, '짜장면','3', '1'),
(2, '짜장면','4', '1'),
(2, '짜장면','8', '1'),
(2, '짜장면','10', '2'),
(2, '짜장면','11', '3'),
(2, '짜장면','12', '2'),
(2, '짜장면','13', '2'),
(2, '짜장면','14', '2'),
(3, '김치볶음밥','3', '2'),
(3, '김치볶음밥','8', '2'),
(3, '김치볶음밥','9', '2'),
(3, '김치볶음밥','14', '3'),
(3, '김치볶음밥','15', '5'),
(3, '김치볶음밥','16', '5'),
(3, '김치볶음밥','17', '5'),
(3, '김치볶음밥','18', '5');



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
*/

select rec_Id, rec_Name, count
from
(select rec_Id, rec_Name, count(recipe.rec_Id) as count
from recipe
where recipe.ing_Id = any
(select ing_Id
from refrigerator
where u_Id = any
(select u_Id
from h_user
where u_Id='1')
and ing_Imp >= '3'
)
group by recipe.rec_Id)CNT
where count >= 1;

