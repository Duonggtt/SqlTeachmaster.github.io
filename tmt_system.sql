CREATE DATABASE tmt_system 
USE tmt_system

CREATE TABLE blog(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200),
	description VARCHAR(200),
	content VARCHAR(200),
	created_at DATE
);

CREATE TABLE user(
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(200),
	PASSWORD VARCHAR(30),
	full_name VARCHAR(50),
	phone VARCHAR(12),
	email VARCHAR(200),
	role_id INT,
	FOREIGN KEY(role_id) REFERENCES role(id)
);

CREATE TABLE account_banking(
	id INT PRIMARY KEY AUTO_INCREMENT,
	bank_name VARCHAR(200),
	account_num VARCHAR(30),
	user_id INT UNIQUE,
	FOREIGN KEY(user_id) REFERENCES user(id)
);

CREATE TABLE role(
	id INT PRIMARY KEY AUTO_INCREMENT,
	role_name VARCHAR(30)
);

CREATE TABLE course(
	id INT PRIMARY KEY AUTO_INCREMENT,
	course_name VARCHAR(200),
	DESCRIPTION VARCHAR(200),
	price BIGINT,
	course_type VARCHAR(200),
	vote VARCHAR(200),
	history_id INT,
	FOREIGN KEY(history_id) REFERENCES transaction_history(id)
);

CREATE TABLE user_course(
	user_id INT,
	course_id INT,
	FOREIGN KEY(user_id) REFERENCES user(id),
	FOREIGN KEY(course_id) REFERENCES course(id)
);

CREATE TABLE opening_schedule(
	id INT PRIMARY KEY AUTO_INCREMENT,
	start_date DATE,
	address VARCHAR(200),
	study_day DATE,
	study_time INT 
);

CREATE TABLE schedule_course(
	op_schedule_id INT,
	course_id INT,
	FOREIGN KEY(op_schedule_id) REFERENCES opening_schedule(id),
	FOREIGN KEY(course_id) REFERENCES course(id)
)

CREATE TABLE transaction_history(
	id INT PRIMARY KEY AUTO_INCREMENT,
	registion_date DATE,
	STATUS VARCHAR(200),
	price BIGINT,
	user_id INT,
	FOREIGN KEY(user_id) REFERENCES user(id)
);


INSERT INTO blog(title,DESCRIPTION,content,created_at) VALUE
('CNTT', 'none','hoc onl', NOW()),
('CNTT', 'none','hoc off', NOW()),
('CNPM', 'none','hoc off', NOW()),
('CNTT', 'none','hoc off', NOW()),
('CNPM', 'none','hoc onl', NOW());


INSERT INTO role(role_name) VALUE
('student'),
('teacher'),
('student'),
('student'),
('teacher');


INSERT INTO user(username,PASSWORD,full_name,phone,email,role_id) VALUE
('user1', '123','user1 full name', '0972433566','user1@gmail.com',1),
('user2', '123','user2 full name', '0972411166','user2@gmail.com',2),
('user3', '123','user3 full name', '0972111566','user3@gmail.com',3),
('user4', '123','user4 full name', '0974443566','user4@gmail.com',2),
('user5', '123','user5 full name', '0972123566','user5@gmail.com',4);


INSERT INTO account_banking(bank_name,account_num,user_id) VALUE
('vcb','111111111111',2),
('vcb','2234234342',1),
('mb','22222222222',4),
('vcb','123123123123',3),
('agr','765767567',5);

INSERT INTO transaction_history(registion_date,STATUS,price,user_id) VALUE
('2000-12-21','COMPLETE',2000000,2),
('2000-11-05','COMPLETE',1650000,1),
('2001-02-09','PENDING',2200000,4),
('2002-06-11','COMPLETE',4200000,4),
('2003-12-12','PENDING',3000000,3);

INSERT INTO course(course_name,DESCRIPTION,price,course_type,vote,history_id) VALUE
('java','none',22000000,'onl','2*',2),
('scratch','none',21000000,'off','5*',1),
('php','none',9000000,'off','4',3),
('ruby','none',14000000,'off','5*',2),
('js','none',10000000,'onl','1*',4);

INSERT INTO opening_schedule(start_date,address,study_day,study_time) VALUE
(NOW(),'Ha Noi', NOW(),2),
(NOW(),'Ha Noi', NOW(),3),
(NOW(),'Ha Noi', NOW(),1),
(NOW(),'Ha Noi', NOW(),2),
(NOW(),'Ha Noi', NOW(),3);

INSERT INTO schedule_course(op_schedule_id,course_id)VALUE 
(1,2),
(2,3),
(1,2),
(3,4),
(4,2),
(4,1),
(5,5),
(2,4);

INSERT INTO user_course(user_id,course_id) VALUE
(1,2),
(1,4),
(2,3),
(3,1),
(5,3),
(2,2),
(3,5),
(4,4);

--------

SELECT user.id,user.username,user.phone,user.email,user.role_id,account_banking.account_num AS banking_num FROM user JOIN account_banking ON user.id = account_banking.user_id;

SELECT user.username FROM user JOIN course ON course.course_type = 'onl';

SELECT opening_schedule.start_date, opening_schedule.study_day, course.course_name FROM opening_schedule JOIN schedule_course ON schedule_course.op_schedule_id = opening_schedule.id JOIN course ON course.id = schedule_course.course_id;

SELECT transaction_history.id,user.username,course.course_name, transaction_history.registion_date,transaction_history.status FROM transaction_history
JOIN user ON user.id = transaction_history.user_id 
JOIN user_course ON user_course.user_id = user.id 
JOIN course ON course.id = user_course.course_id;

