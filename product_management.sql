CREATE DATABASE product_management
USE product_management

CREATE TABLE category(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	category_code VARCHAR(30) NOT NULL,
	category_name VARCHAR(200) NOT NULL,
	created_date DATE NOT NULL,
	update_date DATE NOT NULL 
);

CREATE TABLE supplier(
	id INT PRIMARY KEY AUTO_INCREMENT,
	supplier_code VARCHAR(30) NOT NULL,
	supplier_name VARCHAR(200) NOT NULL,
	image VARCHAR(200),
	created_date DATE NOT NULL,
	update_date DATE NOT NULL  
);

CREATE TABLE product(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	product_name VARCHAR(200) NOT NULL,
	description VARCHAR(250),
	from_country VARCHAR(200),
	is_new VARCHAR(30),
	created_date DATE NOT NULL,
	update_date DATE NOT NULL,
	product_type VARCHAR(30),
	provider VARCHAR(200)
);

CREATE TABLE product_detail(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	image VARCHAR(200),
	standard_cost BIGINT,
	quantity INT,
	color VARCHAR(30),
	created_date DATE NOT NULL,
	update_date DATE NOT NULL,
	product_id BIGINT,
	FOREIGN KEY(product_id) REFERENCES product(id) 
);

CREATE TABLE customer(
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(30) NOT NULL,
	password VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(10),
	email VARCHAR(200),
	birthday DATE,
	avatar VARCHAR(200),
	address VARCHAR(200),
	status VARCHAR(10),
	created_date DATE NOT NULL,
	update_date DATE NOT NULL 
);

CREATE TABLE order_table(
	id INT PRIMARY KEY AUTO_INCREMENT,
	order_code VARCHAR(30) NOT NULL,
	total_money BIGINT NOT NULL,
	status VARCHAR(10),
	created_date DATE NOT NULL,
	update_date DATE NOT NULL,
	product_id BIGINT,
	customer_id INT,
	FOREIGN KEY(product_id) REFERENCES product(id),
	FOREIGN KEY(customer_id) REFERENCES customer(id)
);

CREATE TABLE order_detail(
	id INT PRIMARY KEY AUTO_INCREMENT,
	product_id BIGINT,
	product_detail_id BIGINT,
	quantity INT,
	total BIGINT NOT NULL,
	order_id INT,
	FOREIGN KEY(product_id) REFERENCES product(id),
	FOREIGN KEY(product_detail_id) REFERENCES product_detail(id),
	FOREIGN KEY(order_id) REFERENCES order_table(id)
);


INSERT INTO category (category_code, category_name, created_date, update_date)
VALUES
    ('49884-235', 'Amblyrhynchus cristatus', now(), now()),
    ('65649-432', 'Antidorcas marsupialis', now(), now()),
    ('68647-206', 'Ara ararauna', now(), now()),
    ('68647-206', 'Ara ararauna', now(), now()),
    ('68647-206', 'Ara ararauna', now(), now());

INSERT INTO supplier (supplier_code, supplier_name, image, created_date, update_date)
VALUES
    ('49288-0870', 'Corvus brachyrhynchos', 'data:image/png;base64,iVBORw0KGgoAAAANSUhE',now(), now()),
    ('64809-104', 'Gymnorhina tibicen', 'data:image/png;base64,iVBORw0KG', now(), now()),
('63323-258', 'Ursus americanus', 'data:image/png;base64,iVBORw0KGgo', now(), now()),
('63323-258', 'Ursus americanus', 'data:image/png;base64,iVBORw0KGgo', now(), now()),
('63323-258', 'Ursus americanus', 'data:image/png;base64,iVBORw0KGgo', now(), now());

INSERT INTO product (product_name,description,from_country,is_new ,created_date, update_date, product_type, provider)
VALUES
('kẹo','none','Trung Quoc', 'Y','2006-10-10', NOW(),'đồ ăn', 'bakery'),
('bánh','none','Trung Quoc','Y', '2006-10-10', now(),'đồ ăn', 'bakery'),
( 'bút', 'none','Thai Lan','N', '2006-10-10', NOW(), 'vật dụng', 'factory'),
('bút', 'none', 'Singapore','Y', '2006-10-10', now(), 'vật dụng', 'factory'),
('bút', 'none','viet nam','N', '2006-10-10', now(),'vật dụng', 'factory');

INSERT INTO customer (username, password, first_name, last_name, gender,email,birthday,avatar,address,status,created_date, update_date)
VALUES
('tien1', 'fdfdf39', 'OPANA', 'Ronstring','FEMALE','tien1@gmail.com','2000-12-04','img/something/...','Đà Nẵng','ONLINE' ,now(), now()),
('tien2', 'fdf34127', 'Night ', 'Home Ing','MALE','tien2@gmail.com','2001-11-12','img/something/...','Hà Nội','ONLINE' , now(), now()),
('tien3', 'dsafsf5', 'Vida Mia ', 'Pannier','FEMALE','tien3@gmail.com','2002-10-22','img/something/...','Hải Phòng','OFFLINE' , now(), now()),
('tien4', 'grggr5', 'Vida Mia ', 'Pannier','FEMALE','tien4@gmail.com','2003-02-28','img/something/...','Sài Gòn','ONLINE' , now(), now()),
('tien5', 'fvfvfv5', 'Vida Mia ', 'Pannier','MALE','tien5@gmail.com','2004-10-02','img/something/...','Hà Nội','OFFLINE' , now(), now());

INSERT INTO order_table (order_code,total_money,status,created_date,update_date, product_id, customer_id)
VALUES
('111','88743', 'PENDING','2006-10-10',NOW(),2,6),
('122','9106', 'PENDING','2007-10-10',NOW(),3 ,6),
('134','2984','COMPELETE', '2007-10-10',NOW(),4 ,8),
('112','2984','PENDING', '2006-10-10',NOW(),1 ,7),
('141','2984','COMPELETE', '2006-11-10',NOW(), 1,9);

INSERT INTO product_detail(image,standard_cost,quantity,color,created_date,update_date,product_id ) VALUE
('img/something/...',11,10,'red',now(), NOW(),2),
('img/something/...',12,10,'blue',now(), NOW(),3),
('img/something/...',13,10,'white',now(), NOW(),1),
('img/something/...',14,10,'brown',now(), NOW(),4),
('img/something/...',15,10,'red',now(), NOW(),4);


INSERT INTO order_detail ( product_id,product_detail_id, quantity, total,order_id)
VALUES
(1, 1, 10, 700,11),
(1, 2, 10, 700,12),
(1, 3, 10, 700,12),
(2, 3, 10, 700,13),
(3, 3, 10, 700,13);



