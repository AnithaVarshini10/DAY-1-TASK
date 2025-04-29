create database SISDB;
use SISDB;
create table Teacher 
(
teacher_id int auto_increment primary key,
first_name varchar(30) not null,
last_name varchar(30) not null,
email varchar(100) unique not null
);
create table Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL,
    teacher_id INT NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id)
);

create table Students
(
student_id int auto_increment primary key,
first_name varchar(30) not null,
last_name varchar(30) not null,
date_of_birth date not null,
email varchar(150) unique not null,
phone_number varchar(20)
);
create table Enrollments (
    enrollment_id int auto_increment PRIMARY KEY,
    student_id int NOT NULL,
    course_id int NOT NULL,
    enrollment_date datetime default CURRENT_TIMESTAMP,
    foreign key (student_id) references Students(student_id) on update cascade,
    foreign key (course_id) references Courses(course_id) on update cascade
);

CREATE TABLE Payments (
    payment_id int auto_increment PRIMARY KEY,
    student_id int not null,
    amount decimal(10,2) NOT NULL,
    payment_date DATETIME default CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES Students(student_id) on update cascade
);
insert into Teacher (first_name, last_name, email) values
('Alice', 'Brown', 'alice@example.com'),
('Bob', 'Smith', 'bob@example.com'),
('Clara', 'Jones', 'clara@example.com'),
('David', 'Taylor', 'david@example.com'),
('Eva', 'Green', 'eva@example.com'),
('Frank', 'Adams', 'frank@example.com'),
('Grace', 'Bell', 'grace@example.com'),
('Henry', 'Young', 'henry@example.com'),
('Ivy', 'Clark', 'ivy@example.com'),
('Jack', 'Hall', 'jackl@example.com');
Insert into Courses (course_name, credits, teacher_id) Values
('Math', 3, 1),
('Physics', 4, 2),
('Chemistry', 4, 3),
('Biology', 3, 4),
('English', 2, 5),
('Computer Science', 3, 6),
('History', 2, 7),
('Art', 2, 8),
('Economics', 3, 9),
('Philosophy', 2, 10);
insert into Students (first_name, last_name, date_of_birth, email, phone_number) Values
('Lia', 'Wilson', '2000-03-15', 'liam@example.com', '9876543210'),
('Emma', 'Johnson', '2001-07-12', 'emma@example.com', '9123456780'),
('Noa', 'Williams', '1999-11-20', 'noah@example.com', '9988776655'),
('Olivia', 'Brown', '2000-01-30', 'olivia@example.com', '9812345678'),
('Avn', 'Jones', '2002-06-05', 'avn@example.com', '9765432109'),
('Eli', 'Garcia', '2001-09-18', 'eli@example.com', '9654321098'),
('Sophia', 'Martia', '1998-12-25', 'sophia@example.com', '9543210987'),
('William', 'Davis', '2000-08-09', 'william@example.com', '9432109876'),
('Isa', 'Rod', '2001-02-14', 'isa@example.com', '9321098765'),
('James', 'Lopez', '1999-05-27', 'james@example.com', '9210987654');
insert into Enrollments (student_id, course_id) Values
(1, 1), (2, 1), (3, 2), (4, 3), (5, 4),
(6, 5), (7, 6), (8, 7), (9, 8), (10, 9);

insert into Payments (student_id, amount) Values
(1, 1000.00), (2, 950.00), (3, 1100.00), (4, 1200.00), (5, 900.00),
(6, 1050.00), (7, 980.00), (8, 1010.00), (9, 1150.00), (10, 1075.00);
desc payments;
select * from Students;
select * from Payments;
select count(last_name) from Students;



