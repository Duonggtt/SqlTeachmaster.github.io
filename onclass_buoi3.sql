CREATE DATABASE revenue_manager
USE revenue_manager

CREATE TABLE revenue(
	id INT PRIMARY KEY AUTO_INCREMENT,
	record_date DATE,
	amount INT
)

CREATE TABLE student(
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	address VARCHAR(50),
	phone VARCHAR(50)
);

CREATE TABLE acount(
 	id INT PRIMARY KEY ,  
	email VARCHAR(50),
	PASSWORD VARCHAR(20)
);

INSERT INTO acount VALUE
(1, 'duonggtung173@gmail.com', 'duonggtung173'),
(2, 'duongg174@gmail.com', 'duongg174'),
(3, 'tung175@gmail.com', 'tung175'),
(4, 'duongtran176@gmail.com', 'duongtran176');

UPDATE acount
SET email = 'anonymos', PASSWORD = '123' WHERE id = 1 OR id = 3;
SELECT * FROM acount;
DELETE FROM acount WHERE id = 1;

INSERT INTO student (id, first_name, last_name, email, address, phone) VALUE
(1, 'Nguyễn', 'Trang', 'nguyentrang16@gmail.com', '36 Hàng Bài, HN', '0888.669.112'),
(2, 'Nguyễn', 'Ngọc', 'nguyenngoc19@gmail.com', '41 Phú Đô, HN', '0613.118.256'),
(3, 'Phạm', 'Thanh', 'pahmthanh48@gmail.com', '19 Dương Quảng Hàm, HCM','0988.115.268'),
(4, 'Trần', 'Thanh', 'tranthanh01@gmail.com', '447 Cầu Giấy, HN', '0988.116.267'),
(5, 'Như', 'Ngọc', 'nhungoc89@gmail.com', '21 Dương Quảng Hàm, HCM','0653.118.171');

SELECT * FROM student;
SELECT CONCAT(first_name,' ',last_name) AS full_name, email, address, phone FROM student; 


INSERT INTO revenue(id,record_date,amount) VALUE(1, '2020-03-02', 635000),
(2, '2020-03-03', 136000),
(3, '2020-03-04', 1098000),
(4, '2020-03-05', 782000),
(5, '2020-03-06', 891000),
(6, '2020-03-07', 632000),
(7, '2020-03-08', 633000),
(8, '2020-03-09', 789000),
(9, '2020-03-10', 100100),
(10, '2020-03-11', 210000);

SELECT * FROM revenue WHERE amount > 500000;
SELECT * FROM revenue r1, revenue r2 WHERE DATEDIFF(r1.record_date,r2.record_date) = 1 AND r1.amount > r2.amount;


CREATE TABLE stu (
	id INT PRIMARY KEY AUTO_INCREMENT,
	student_name VARCHAR(200),
	age INT,
	score float
);

INSERT INTO stu (student_name, age, score)
VALUES
	('Ngọc', 12, 7.5),
	('Thanh', 25, 6),
	('Trang', 22, 9),
	('Mai', 32, 9),
	('Tùng', 19, 6.5);
	
SELECT MAX(age) AS max_age FROM stu;
SELECT MIN(age) AS min_age FROM stu;
SELECT AVG(score) AS score_avg FROM stu;
SELECT COUNT(id) AS student_count FROM stu;
SELECT SUM(score) AS total_score FROM stu;
