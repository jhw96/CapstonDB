drop database `hone_maker`;
create database `hone_maker`;

use `hone_maker`;

CREATE TABLE `ingredient` (
  `ing_Id` INT(11) unsigned NOT NULL AUTO_INCREMENT,
  `ing_Name` VARCHAR(32) NOT NULL,
  `ing_Location` varchar(32) NOT NULL,
  `ing_ImageURL` varchar(200),
  PRIMARY KEY (`ing_Id`)
);

INSERT INTO `ingredient` (`ing_Id`, `ing_Name`, `ing_Location`, `ing_ImageURL`)
VALUES (1, '쇠고기', '냉동', 'https://user-images.githubusercontent.com/57614563/68989852-91f01f80-088f-11ea-9299-777cc54a5af1.png'),
(2, '양파', '냉장', 'https://user-images.githubusercontent.com/57614563/68989872-e4314080-088f-11ea-82f6-1ef5b698e943.png'),
(3, '생강', '냉장', 'https://user-images.githubusercontent.com/57614563/68989901-1e024700-0890-11ea-929a-b7caf13a85af.png'),
(4, '고추', '냉장', 'https://user-images.githubusercontent.com/57614563/68989923-49853180-0890-11ea-8c87-9ba40a79d88f.png'),
(5, '대파', '냉장', 'https://user-images.githubusercontent.com/57614563/68989958-a2ed6080-0890-11ea-9be0-8eae9f46cb25.png'),
(6, '면', '상온', 'https://user-images.githubusercontent.com/18098363/68964085-d17d2400-081b-11ea-8e82-d5060b755ab0.png'),
(7, '고수', '냉장', 'https://image.flaticon.com/icons/png/512/2149/2149858.png'),
(8, '소금', '상온', 'https://user-images.githubusercontent.com/57614563/68990292-0a0d1400-0895-11ea-9353-af7bb14d18ff.png'),
(9, '닭', '냉동', 'https://user-images.githubusercontent.com/57614563/68990390-d979aa00-0895-11ea-8d68-158551e705b6.png'),
(10, '양파', '냉장', 'https://user-images.githubusercontent.com/18098363/68990378-b64efa80-0895-11ea-9996-e16f82051b16.png'),
(11, '밀가루', '상온', 'https://user-images.githubusercontent.com/18098363/68990414-0e85fc80-0896-11ea-9711-5e7074793c8d.png'),
(12, '마늘', '냉장', 'https://user-images.githubusercontent.com/57614563/68990620-a258c800-0898-11ea-9384-5548e460198f.png'),
(13, '후추', '상온', 'https://image.flaticon.com/icons/png/512/2195/2195413.png'),
(14, '간장', '상온', 'https://user-images.githubusercontent.com/57614563/68990669-2612b480-0899-11ea-976a-feedd1c2142e.png'),
(15,'두부','냉장','https://user-images.githubusercontent.com/57614563/68990804-d208cf80-089a-11ea-8fa9-9da11362e17f.png'),
(16,'계란','냉장','https://user-images.githubusercontent.com/57614563/68990857-7c80f280-089b-11ea-9462-b3d071d2cd98.png'),
(17,'참기름','상온','https://image.flaticon.com/icons/png/512/2195/2195306.png'),
(18,'무','냉장', 'https://user-images.githubusercontent.com/18098363/68965035-2fab0680-081e-11ea-985a-0f3e809adeb3.png'),
(19, '미역', '상온', 'https://user-images.githubusercontent.com/57614563/68991261-38dcb780-08a0-11ea-906b-ce636bae42bc.png'),
(20, '호박', '냉장', 'https://user-images.githubusercontent.com/57614563/68991324-ea7be880-08a0-11ea-80fa-0c980b963264.png'),
(21, '된장', '냉장', 'https://image.flaticon.com/icons/png/512/694/694311.png'),
(22, '버섯', '냉장', 'https://user-images.githubusercontent.com/57614563/68991365-6c6c1180-08a1-11ea-951b-d4df58a47854.png'),
(23, '멸치', '냉장', 'https://user-images.githubusercontent.com/57614563/68991377-8ad20d00-08a1-11ea-93ac-62d6e7ddfece.png'),
(24, '순두부', '냉장', 'https://user-images.githubusercontent.com/18098363/68964418-b232c680-081c-11ea-9665-ca1c29218ffb.png'),
(25, '돼지고기', '냉동', 'https://user-images.githubusercontent.com/18098363/68991108-26fa1500-089e-11ea-8edf-08d984e6773d.png'),
(26, '조개', '냉동', 'https://user-images.githubusercontent.com/57614563/68991479-b0abe180-08a2-11ea-990b-9b9a932455ee.png'),
(27, '김치', '냉장', 'https://image.flaticon.com/icons/png/512/2276/2276861.png');




CREATE TABLE `recipeList` (
  `rec_Id` INT(11) NOT NULL AUTO_INCREMENT,
  `rec_Name` VARCHAR(32) NOT NULL,
  `rec_imgageURL` varchar(200) NOT NULL,
  `rec_recipeURL` varchar(200) NOT NULL,
   PRIMARY KEY (`rec_Id`)
);

INSERT INTO `recipeList` (`rec_Id`, `rec_Name`, `rec_imgageURL`, `rec_recipeURL`)
VALUES (1, '쌀국수', 'http://file.okdab.com/UserFiles/searching/recipe/131400.jpg', 'http://www.horangi.kr/foodinfo/viewRecipe.asp?rid=437&own='),
(2, '닭불고기', 'http://file.okdab.com/UserFiles/searching/recipe/007800.jpg', 'http://www.horangi.kr/foodinfo/viewRecipe.asp?rid=40&own=' ),
(3, '양파전' , 'http://file.okdab.com/UserFiles/searching/recipe/119300.jpg', 'http://www.horangi.kr/foodinfo/viewRecipe.asp?rid=421&own='),
(4, '쇠고기무국', 'http://file.okdab.com/UserFiles/searching/recipe/049400.jpg','http://www.horangi.kr/foodinfo/viewRecipe.asp?rid=202&own='),
(5, '쇠고기미역국', 'http://file.okdab.com/UserFiles/searching/recipe/004700.jpg', 'http://www.horangi.kr/foodinfo/viewRecipe.asp?rid=21&own='),
(6, '된장찌개', 'http://file.okdab.com/UserFiles/searching/recipe/137600.jpg', 'http://www.horangi.kr/foodinfo/viewRecipe.asp?rid=445&own='),
(7, '순두부찌개', 'http://file.okdab.com/UserFiles/searching/recipe/011300.jpg', 'http://www.horangi.kr/foodinfo/viewRecipe.asp?rid=54&own=');


CREATE TABLE `recipe` (
  `rec_Id` INT(11) NOT NULL,
  `rec_Name` VARCHAR(32) NOT NULL, 
  `ing_Id` INT(11) unsigned NOT NULL, 
  `ing_Imp` bool NOT NULL, 
  FOREIGN KEY (`ing_Id`) REFERENCES `ingredient` (`ing_Id`),
  FOREIGN KEY (`rec_Id`) REFERENCES `recipeList` (`rec_Id`)
);

INSERT INTO `recipe` (`rec_Id`, `rec_Name`, `ing_Id`, `ing_Imp`)
VALUES (1, '쌀국수', '1', true),
(1, '쌀국수', '2', true),
(1, '쌀국수', '3', true),
(1, '쌀국수', '4', false),
(1, '쌀국수', '5', false),
(1, '쌀국수', '6', true),
(1, '쌀국수', '7', false),
(1, '쌀국수', '8', true),
(2, '닭불고기', '9', true),
(2, '닭불고기', '12', false),
(2, '닭불고기', '8', true),
(2, '닭불고기', '5', false),
(2, '닭불고기', '3', false),
(2, '닭불고기', '4', true),
(3, '양파전', '10', true),
(3, '양파전', '11', true),
(3, '양파전', '1', false),
(3, '양파전', '15', false),
(3, '양파전', '16', true),
(3, '양파전', '17', false),
(3, '양파전', '13', false),
(3, '양파전', '8', false),
(3, '양파전', '5', false),
(4, '쇠고기무국', '1', true),
(4, '쇠고기무국', '18', true),
(4, '쇠고기무국', '5', false),
(4, '쇠고기무국', '12', false),
(4, '쇠고기무국', '14', true),
(4, '쇠고기무국', '8', false),
(4, '쇠고기무국', '17', false),
(4, '쇠고기무국', '13', false),
(5, '쇠고기미역국', '1', true),
(5, '쇠고기미역국', '19', true),
(5, '쇠고기미역국', '17', false),
(5, '쇠고기미역국', '12', false),
(5, '쇠고기미역국', '13', false),
(5, '쇠고기미역국', '14', false),
(6, '된장찌개', '20', false),
(6, '된장찌개', '21', true),
(6, '된장찌개', '15', true),
(6, '된장찌개', '23', false),
(6, '된장찌개', '17', false),
(6, '된장찌개', '12', false),
(6, '된장찌개', '5', false),
(7, '순두부찌개', '24', true),
(7, '순두부찌개', '25', true),
(7, '순두부찌개', '26', true),
(7, '순두부찌개', '2', false),
(7, '순두부찌개', '12', false),
(7, '순두부찌개', '13', false),
(7, '순두부찌개', '4', false),
(7, '순두부찌개', '5', false),
(7, '순두부찌개', '16', false),
(7, '순두부찌개', '27', false);

CREATE TABLE `user` (
  `u_Id` varchar(100) NOT NULL,
  PRIMARY KEY (`u_Id`)
);

INSERT INTO `user` (`u_Id`)
VALUES (1),
(2);

CREATE TABLE `refrigerator` (
  `u_Id` VARCHAR(100) NOT NULL,
  `ing_Id` INT(11) unsigned NOT NULL,
  FOREIGN KEY (`u_Id`) REFERENCES `user`(`u_Id`),
  FOREIGN KEY (`ing_Id`) REFERENCES `ingredient` (`ing_Id`)
);

INSERT INTO `refrigerator` (`u_Id`, `ing_Id`) VALUES 
(1, 11),
(1, 2),
(1, 3),
(1, 4),
(1, 8),
(1, 10),
(1, 14),
(1, 18),
(1, 3),
(2, 7);

CREATE TABLE `eachRating` (
  `u_Id` VARCHAR(100) NOT NULL,
  `rec_Id` INT(11) NOT NULL,
  `ratio` INT(11),
  FOREIGN KEY (`u_Id`) REFERENCES `user`(`u_Id`),
  FOREIGN KEY (`rec_Id`) REFERENCES `recipeList` (`rec_Id`)
);


/*
select *
from
(select rec_Id, rec_Name, count
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
and ing_Imp is true
)
group by recipe.rec_Id)CNT
where count >= 2) b, recipeList
where b.rec_Id = recipeList.rec_Id and recipeList.rec_Rec >=3;

select *
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
and ing_Imp is true
)
group by recipe.rec_Id)CNT
where count >= 4;

select *
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
)
group by recipe.rec_Id)CNT
where count >= 4;
*/
