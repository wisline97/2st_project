ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';

create database seoulstore;
use seoulstore;

CREATE TABLE userData(
	memberNo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    memberId VARCHAR(20),
    memberPw VARCHAR(20),
    memberName VARCHAR(20),
    memberEmail VARCHAR(50)
);

INSERT INTO userData VALUES(0, 'hello', '1234', '김수혁', 'hello@naver.com');
INSERT INTO userData VALUES(0, 'qwer', '1234', '홍길동', 'kim@daum.net');
INSERT INTO userData VALUES(0, 'asdf', '1234', '이수정', 'lee@hotmail.com');

select * from userData;

create table prdData(
	prd_No INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    prd_kind varchar(20),
    brd_name varchar(20),
    prd_name varchar(40),
    prd_price int,
    prd_count int,
    prd_img varchar(30),
    prd_content varchar(30),
    prd_discount_rate int,
    prd_salesCount int,
    prd_likesCount int,
    prd_new boolean,
    prd_sale boolean
    );

INSERT INTO prdData VALUES(0, "hat", "아노에틱", "ANC WOOL TWISTED BUCKET HAT_BLACK", 48000, 100, "img/prdImg01.jpeg", "img/prdImg01.jpeg", 27, 48, 1203, false, true);
INSERT INTO prdData VALUES(0, "hoodie", "꼼파뇨", "[기모] GEPPETTO 제페토 크림", 72000, 100, "img/prdImg02.jpeg", "img/prdImg02.jpeg", 45, 98, 20512, false, true);
INSERT INTO prdData VALUES(0, "bag", "무르", "보네백 (6color)", 102000, 100, "img/prdImg03.jpeg", "img/prdImg03.jpeg", 0.35, 97, 664, false, true);
INSERT INTO prdData VALUES(0, "top", "로라로라", "[민니 착용] COLLAR STRIPE BOARDER KNIT···", 79000, 100, "img/prdImg04.jpeg", "img/prdImg04.jpeg", 15, 96, 5797, false, true);
INSERT INTO prdData VALUES(0, "bag", "앨리스마샤", "러비 10Colors 미니 셔링백", 69000, 100, "img/prdImg05.jpeg", "img/prdImg05.jpeg", 15, 95, 1236, false, true);
INSERT INTO prdData VALUES(0, "pants", "판도라핏", "[단독판매][WIDE] Maple jeans Black", 56000, 100, "img/prdImg06.jpeg", "img/prdImg06.jpeg", 25, 94, 724, false, true);
INSERT INTO prdData VALUES(0, "pants", "키르시", "[단독판매] WITTY BUNNY HOODIE [NAVY]",69000, 100, "img/prdImg07.jpeg", "img/prdImg07.jpeg", 5, 93, 1501, false, true);
INSERT INTO prdData VALUES(0, "outer", "오오엠엘", "[단독]퀼팅 퍼 카라 숏패딩 자켓 (2칼라)",139800, 100, "img/prdImg08.jpeg", "img/prdImg08.jpeg", 57, 92, 448, false, true);
INSERT INTO prdData VALUES(0, "outer", "게스", "[수지 착용][POP]여성 레글런 크롭 푸퍼",158000, 100, "img/prdImg09.jpeg", "img/prdImg09.jpeg", 40, 91, 5053, false, true);
INSERT INTO prdData VALUES(0, "outer", "콜릿", "[NCT 재현, 라붐 해인, CLC예은 착용] WOMEN 오버···",219000, 100, "img/prdImg10.jpeg", "img/prdImg10.jpeg", 27, 90, 22733, false, true);
INSERT INTO prdData VALUES(0, "outer", "닉앤니콜", "PUFFER HIGH NECK SHORT PADDING_CRE···",199000, 100, "img/prdImg11.jpeg", "img/prdImg11.jpeg", 55, 89, 654, false, true);
INSERT INTO prdData VALUES(0, "outer", "파르티멘토 우먼", "숏 더플 코트_아이보리",144000, 100, "img/prdImg12.jpeg", "img/prdImg12.jpeg", 42, 88, 520, false, true);
INSERT INTO prdData VALUES(0, "beauty", "한율", "<오복컬렉션> 한율 달빛유자 2종 세트 + [사은품 증정]",60000, 100, "img/prdImg13.jpeg", "img/prdImg13.jpeg", 24, 20, 4, true, true);
INSERT INTO prdData VALUES(0, "beauty", "파파레서피", "블레미쉬 효소 파우더 클렌저 [증정:블레미쉬 크림 7ml * ···",18000, 100, "img/prdImg14.jpeg", "img/prdImg14.jpeg", 18, 20, 11, false, true);
INSERT INTO prdData VALUES(0, "beauty", "데이지크", "데이지크 섀도우 팔레트 1호~16호",34000, 100, "img/prdImg15.jpeg", "img/prdImg15.jpeg", 19, 86, 63, false, true);
INSERT INTO prdData VALUES(0, "beauty", "롬앤", "[롬앤] NEW 글래스팅 멜팅 밤",13000, 100, "img/prdImg16.jpeg", "img/prdImg16.jpeg", 24, 85, 75, false, true);
INSERT INTO prdData VALUES(0, "outer", "아방", "Diamond Quilting Long Hood Jumper ···",166000, 100, "img/prdImg17.jpeg", "img/prdImg17.jpeg", 30, 40, 22, true, true);
INSERT INTO prdData VALUES(0, "outer", "마나비스세븐", "Wool High Neck Toggle Half Coat Iv···",279000, 100, "img/prdImg18.jpeg", "img/prdImg18.jpeg", 20, 83, 7, true, true);
INSERT INTO prdData VALUES(0, "bag", "밸럽", "[22FW] Landyn bag_Brown",279000, 100, "img/prdImg19.jpeg", "img/prdImg19.jpeg", 32, 82, 6, true, true);
INSERT INTO prdData VALUES(0, "shoes", "노스페이스", "[해외] 우먼스 노스페이스 써모볼 트랙션 뮬 V 블랙 NF0A···",154900, 100, "img/prdImg20.jpeg", "img/prdImg20.jpeg", 45, 0, 19, true, true);



DELETE FROM prdData where prd_No=1;
update prdData set prd_img="img/prdImg19.jpeg" where prd_No=19;
select * from prddata;