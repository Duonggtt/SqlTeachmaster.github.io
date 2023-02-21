CREATE DATABASE btvn_buoi3
USE btvn_buoi3

CREATE TABLE hoa_don(
	id INT PRIMARY KEY AUTO_INCREMENT,
	product_name VARCHAR(50),
	ten_khach_hang VARCHAR(50),
	country VARCHAR(50),
	gender VARCHAR(20),
	email VARCHAR(50),
	price INT 
);

INSERT INTO hoa_don VALUE
(1, 'Bánh mì ngọt', 'Sinderland', 'US', 'Male', 'gsinderland0@hostgator.com', 1698),
(2, 'Sữa chua', 'Millett', 'UK', 'Female', 'cmillett1@oakley.com', 722),
(3, 'Sữa chua', 'Wasbrough', 'US', 'Female', 'awasbrough2@icio.us', 1572),
(4, 'Bánh mì ngọt', 'Bubbings', 'UK', 'Female', 'gbubbings3@fda.gov', 1602),
(5, 'Tiêu bắc', 'Loody', 'UK', 'Female', 'gloody4@wix.com', 1703),
(6, 'Tiêu bắc', 'Sealeaf', 'UK', 'Female', 'jsealeaf5@google.es', 937),
(7, 'Nấm Nhật Bản', 'Tesdale', 'US', 'Agender', 'jtesdale6@cbc.ca', 704),
(8, 'Nấm Nhật Bản', 'Maestro', 'US', 'Female', 'kmaestro7@soup.io', 1141),
(9, 'Nấm Nhật Bản', 'Sugg', 'VN', 'Male', 'rsugg8@vistaprint.com', 1612),
(10, 'Nấm Nhật Bản', 'Matteucci', 'INDIA', 'Male', 'ematteucci9@dell.com', 1577),
(11, 'Nấm Nhật Bản', 'Taillant', 'VN', 'Male', 'ttaillanta@ocn.ne.jp', 1109),
(12, 'Bánh mì ngọt', 'Birt', 'INDIA', 'Male', 'cbirtb@yolasite.com', 833),
(13, 'Cà phê', 'Kevane', 'INDIA', 'Male', 'qkevanec@lulu.com', 804),
(14, 'Bánh mì ngọt', 'Bisset', 'VN', 'Male', 'sbissetd@aol.com', 1310),
(15, 'Nấm Nhật Bản', 'Flello', 'INDIA', 'Female', 'sflelloe@edublogs.org', 1908),
(16, 'Nấm Nhật Bản', 'Hamlett', 'INDIA', 'Female', 'mhamlettf@github.com', 541),
(17, 'Bánh mì ngọt', 'Billington', 'VN', 'Female', 'nbillingtong@soundcloud.com', 897),
(18, 'Cà phê', 'Huison', 'INDIA', 'Male', 'hhuisonh@ihg.com', 444),
(19, 'Cà phê', 'Ledbetter', 'VN', 'Male', 'eledbetteri@exblog.jp', 507),
(20, 'Cà phê', 'Suddick', 'VN', 'Genderfluid', 'asuddickj@ted.com', 657),
(21, 'Sữa chua', 'Guenther', 'US', 'Female', 'kguentherk@sohu.com', 690),
(22, 'Cà phê', 'Heck', 'INDIA', 'Male', 'kheckl@epa.gov', 1058),
(23, 'Sữa chua', 'Lieb', 'INDIA', 'Female', 'jliebm@huffingtonpost.com', 1318),
(24, 'Sữa chua', 'Demead', 'INDIA', 'Female', 'jdemeadn@senate.gov', 1461),
(25, 'Sữa chua', 'Scedall', 'VN', 'Male', 'escedallo@samsung.com', 970),
(26, 'Tiêu bắc', 'Grastye', 'VN', 'Female', 'mgrastyep@google.nl', 1992),
(27, 'Tiêu bắc', 'Vooght', 'VN', 'Male', 'lvooghtq@upenn.edu', 1325),
(28, 'Tiêu bắc', 'Threadgall', 'VN', 'Female', 'ethreadgallr@ihg.com', 1700),
(29, 'Tiêu bắc', 'Jannasch', 'US', 'Male', 'fjannaschs@sourceforge.net', 1593),
(30, 'Cà phê', 'Rayner', 'US', 'Female', 'graynert@forbes.com', 345);

SELECT country ,SUM(price) AS total_price FROM hoa_don GROUP BY country = 'UK';
SELECT product_name, MIN(price) AS min_price FROM hoa_don GROUP BY product_name;
SELECT product_name, MAX(price) AS max_price FROM hoa_don ORDER BY country;
SELECT gender, SUM(price) AS total_price FROM hoa_don ORDER BY gender;--
SELECT country, AVG(price) AS total_price FROM hoa_don GROUP BY country; 
UPDATE hoa_don 
SET price = 1225 WHERE product_name = 'Tiêu bắc';
DELETE FROM hoa_don WHERE country = 'INDIA' AND price BETWEEN 900 AND 1200;
SELECT country,  AVG(price) AS avg_price FROM hoa_don GROUP BY country HAVING  AVG(price) > 1100;
