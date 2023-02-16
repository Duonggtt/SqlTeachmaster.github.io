CREATE DATABASE quan_ly_kho
USE quan_ly_kho

CREATE TABLE product (
	id INT PRIMARY KEY AUTO_INCREMENT,
	product_name VARCHAR(100),
	price BIGINT,
	branch VARCHAR(200),
	created_date DATETIME
);

INSERT INTO product (product_name, price,branch) VALUE
('Toyota Vios',520000000, 'chi nhánh Trần Duy Hưng'),
('Toyota Cross', 800000000,'chi nhánh Gia Lâm'),
('Hyundai Accent', 510000000,'chi nhánh Trần Duy Hưng'),
('Honda City', 550000000,'chi nhánh Hai Bà Trưng'),
('Vinfast Fadil', 360000000,''),
('Mitsubishi Xpander', 620000000,'chi nhánh Trần Duy Hưng'),
('Mazda CX-5', 900000000,'chi nhánh Lý Thường Kiệt'),
('Kia Seltos', 700000000,'chi nhánh Gia Lâm'),
('Hyundai Santafe', 1000000000,'chi nhánh Gia Lâm'),
('Kia Carnival', 1800000000,'chi nhánh Hai Bà Trưng'),
('Hyundai i10', 360000000,'chi nhánh Gia Lâm');

/*Viết câu lệnh lấy ra các sản phẩm có giá tiền > 115 triệu */
SELECT * FROM product WHERE price > 115000000;

/*Viết câu lệnh lấy ra các sản phẩm có chứa chữ 'k' */
SELECT * FROM product WHERE product_name LIKE '%k%';

/*Viết câu lệnh lấy ra các sản phẩm có tên là dòng xe 'kia' (Vì xe ô tô có kia morning, Toyota vios) hoặc giá tiền < 200 triệu */
SELECT * FROM product WHERE product_name LIKE '%kia%' OR price < 200000000;

/*Viết câu lệnh lấy ra các sản phẩm dùng toán tử IN với giá trị giá cả là 100 triệu, 130 triệu, 140 triệu, 150 triệu, 160 triệu, 170 triệu*/
SELECT * FROM product WHERE price IN(100000000,130000000,140000000,150000000,160000000,170000000);

/*Viết câu lệnh lấy ra tất cả giá tiền trong bảng, nếu có nhiều giá tiền trùng lặp thì chỉ lấy 1 giá trị thôi*/
SELECT DISTINCT price FROM product; 

/* Viết câu lệnh lấy ra sản phẩm ở chi nhánh Lý Thường Kiệt hoặc Hai Bà Trưng */
SELECT * FROM product WHERE branch LIKE N'chi nhánh Hai Bà Trưng' OR branch LIKE N'chi nhánh Lý Thường Kiệt';

/*Viết câu lệnh lấy ra sản phẩm ở chi nhánh Lý Thường Kiệt hoặc Hai Bà Trưng mà giá dưới 1 tỷ */
SELECT * FROM product WHERE branch LIKE N'chi nhánh Hai Bà Trưng' AND price < 1000000000 
OR branch LIKE N'chi nhánh Lý Thường Kiệt' AND price < 1000000000; 