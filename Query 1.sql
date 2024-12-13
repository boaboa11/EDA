create database DS604;
SHOW DATABASES;
CREATE DATABASE exp;
create database exp2;
use exp;
create table emp(
 empID INT not null unique,
 empName varchar(20),
 empSalary decimal(8,2)
);

describe emp;
select*from emp;
insert into emp value (123, 'Irfan', 150000.00);
describe emp;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    SSN varchar(20) NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Position VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);
CREATE TABLE school (
    school_id INT PRIMARY KEY AUTO_INCREMENT,
    school_name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    contact_number VARCHAR(15),
    established_year YEAR,
    principal_name VARCHAR(100)
);
INSERT INTO school (school_name, address, city, state, postal_code, contact_number, established_year, principal_name)
VALUES 
    ('Greenwood High School', '123 Maple St', 'Springfield', 'Illinois', '62701', '217-555-1234', 1995, 'Dr. Sarah Johnson'),
    ('Oakwood Academy', '456 Oak St', 'Madison', 'Wisconsin', '53703', '608-555-5678', 1987, 'Mr. John Williams'),
    ('Lincoln Prep School', '789 Lincoln Ave', 'Austin', 'Texas', '73301', '512-555-9012', 2002, 'Ms. Linda Scott'),
    ('River Valley School', '321 River Rd', 'Denver', 'Colorado', '80201', '303-555-3456', 1999, 'Dr. David Brown'),
    ('Pine Hill High', '654 Pine Rd', 'Portland', 'Oregon', '97201', '503-555-7890', 1985, 'Mr. Robert Miller'),
    ('Hilltop Academy', '987 Hilltop Rd', 'Phoenix', 'Arizona', '85001', '602-555-2345', 2000, 'Ms. Karen Davis'),
    ('Sunrise High', '123 Sunrise Blvd', 'Miami', 'Florida', '33101', '305-555-6789', 2005, 'Mr. Michael Anderson'),
    ('Westwood High School', '456 West St', 'Los Angeles', 'California', '90001', '213-555-9012', 1992, 'Dr. Emily Wilson'),
    ('Brighton Prep', '789 Brighton Ln', 'Chicago', 'Illinois', '60601', '312-555-3456', 1998, 'Ms. Jessica Thomas'),
    ('Lakeside High', '321 Lake Dr', 'Seattle', 'Washington', '98101', '206-555-7890', 1984, 'Mr. Charles Martin'),
    ('Cedar Ridge School', '654 Cedar Rd', 'Boston', 'Massachusetts', '02101', '617-555-2345', 2003, 'Dr. Patricia Taylor'),
    ('Evergreen High School', '987 Evergreen St', 'New York', 'New York', '10001', '212-555-6789', 1997, 'Mr. William Lewis'),
    ('Summit Academy', '123 Summit Ave', 'Salt Lake City', 'Utah', '84101', '801-555-9012', 1988, 'Ms. Elizabeth White'),
    ('Meadowbrook High', '456 Meadow Rd', 'Dallas', 'Texas', '75201', '214-555-3456', 2001, 'Dr. James Harris'),
    ('Northgate School', '789 Northgate Dr', 'Atlanta', 'Georgia', '30301', '404-555-7890', 1990, 'Mr. Christopher Martinez'),
    ('Southwood Academy', '321 Southwood Ln', 'Houston', 'Texas', '77001', '713-555-2345', 1994, 'Ms. Susan Clark'),
    ('Brookside High', '654 Brookside Rd', 'Philadelphia', 'Pennsylvania', '19101', '215-555-6789', 1989, 'Mr. Anthony Robinson'),
    ('Mountainview High', '987 Mountain Rd', 'Denver', 'Colorado', '80202', '303-555-9012', 2004, 'Dr. Deborah Walker'),
    ('Maple Grove School', '123 Maple Grove Ln', 'Detroit', 'Michigan', '48201', '313-555-3456', 1991, 'Mr. Steven Young'),
    ('Clearwater Academy', '456 Clearwater Dr', 'Orlando', 'Florida', '32801', '407-555-7890', 1996, 'Ms. Amanda Hall');

describe table school;
select * from school;
select school_name, address from school;
alter table school add ssn int;
alter table employee add ssn int;

select * from employee;
INSERT INTO Employee (EmployeeID, SSN, FirstName, LastName, Position, Department, Salary)
VALUES 
(1, '123-45-6789', 'John', 'Doe', 'Manager', 'Sales', 75000.00),
(2, '234-56-7890', 'Jane', 'Smith', 'Developer', 'IT', 85000.00),
(3, '345-67-8901', 'Mike', 'Brown', 'Analyst', 'Finance', 65000.00),
(4, '456-78-9012', 'Emily', 'Davis', 'Designer', 'Marketing', 70000.00),
(5, '567-89-0123', 'David', 'Wilson', 'HR Specialist', 'Human Resources', 60000.00),
(6, '678-90-1234', 'Sarah', 'Moore', 'Accountant', 'Finance', 68000.00),
(7, '789-01-2345', 'Chris', 'Taylor', 'Data Scientist', 'IT', 95000.00),
(8, '890-12-3456', 'Anna', 'Lee', 'Consultant', 'Sales', 72000.00),
(9, '901-23-4567', 'Robert', 'Martinez', 'Project Manager', 'IT', 90000.00),
(10, '012-34-5678', 'Karen', 'Lopez', 'Engineer', 'Operations', 80000.00),
(11, '123-45-6780', 'James', 'Harris', 'Product Manager', 'Marketing', 78000.00),
(12, '234-56-7891', 'Laura', 'Clark', 'Executive Assistant', 'Administration', 55000.00),
(13, '345-67-8902', 'Daniel', 'Walker', 'Supply Chain Specialist', 'Logistics', 65000.00),
(14, '456-78-9013', 'Jessica', 'Hall', 'Legal Advisor', 'Legal', 87000.00),
(15, '567-89-0124', 'Brian', 'Allen', 'Security Officer', 'Security', 50000.00);

create table products (
 Product_id int,
 product_name varchar(50),
 price double, 
 quantity_in_stock int,
 category_id int
);

INSERT INTO products (Product_id, product_name, price, quantity_in_stock, category_id)
VALUES
(1, 'iPhone 13', 999.99, 50, 1),
(2, 'Samsung Galaxy S21', 899.99, 30, 1),
(3, 'Sony PlayStation 5', 499.99, 20, 2),
(4, 'MacBook Pro', 1999.99, 15, 3),
(5, 'Dell XPS 15', 1499.99, 25, 3),
(6, 'Canon EOS R5', 3499.99, 10, 4),
(7, 'Bose QuietComfort 35 II', 299.99, 40, 5),
(8, 'Fitbit Versa 3', 199.99, 35, 6),
(9, 'Amazon Echo Dot', 49.99, 60, 7),
(10, 'Nintendo Switch', 299.99, 30, 2);

create table employees (
employee_id varchar(4),
first_name varchar(20),
Last_name  varchar(20),
email      varchar(20),
hire_date  date,
salary   double,
age      int
) ;

insert into employees values(101,'Mehmet','Sezgin','mehmet@gmail.com','2020-11-1',7500,38); 
insert into employees values(102,'Kaan','Burhan','kaan@gmail.com','2022-10-20',9500,21); 
insert into employees values(103,'Bahadir','Furkan','bahadir@gmail.com','2019-05-25',10750,35); 
insert into employees values(104,'Ayse','Naz','ayse@gmail.com','2020-01-28',15000,25); 
insert into employees values(105,'Elcin','Mustafa','elcin@gmail.com','2010-01-01',8750,30); 
insert into employees values(106,'Mohammad','Hasbi','mohammad@gmail.com','2018-08-18',7800,25); 
insert into employees values(107,'Erva','Sezgin','erva@gmail.com','2020-05-30',7500,18); 
insert into employees values(107,'Asli','Sezgin','asli@gmail.com','2020-06-21',7500,18); 
insert into employees values(109,'Asli','Sezgin','asli@gmail.com','2020-06-21',7500,18); 
insert into employees values(110,'Asli','Sezgin','asli@gmail.com','2020-06-21',7500,18); 
select * from employees;
use DS604;
create table Schools(
 InstructorId int unique,
 Name varchar(50),
 Surname varchar(50),
 Field varchar(50),
 TeachingHoursPerWeek int,
 City varchar(20),
 Salary decimal(10,2)
);
insert into schools (InstructorId,Name,Surname,Field,TeachingHoursPerWeek,City,Salary) values
  (1, 'John', 'Doe', 'Math', 30, 'New York', 5000.00),
  (2, 'Jane', 'Smith', 'Science', 25, 'Los Angeles', 4500.00),
  (3, 'Michael', 'Johnson', 'English', 20, 'Chicago', 4000.00),
  (4, 'Emily', 'Brown', 'History', 15, 'San Francisco', 3500.00),
  (5, 'David', 'Lee', 'Music', 10, 'Boston', 3000.00),
  (6, 'John', 'Smith', 'Math', 25, 'New York', 4500.00),
  (7, 'Emma', 'Johnson', 'Science', 20, 'Los Angeles', 4000.00),
  (8, 'Daniel', 'Davis', 'English', 15, 'Chicago', 3500.00),
  (9, 'Olivia', 'Williams', 'History', 10, 'San Francisco', 3000.00),
  (10, 'James', 'Taylor', 'Music', 5, 'Boston', 2500.00),
  (11, 'John', 'Brown', 'Math', 20, 'New York', 4000.00),
  (12, 'Sophia', 'Miller', 'Science', 15, 'Los Angeles', 3500.00),
  (13, 'William', 'Wilson', 'English', 10, 'Chicago', 3000.00),
  (14, 'Isabella', 'Jones', 'History', 5, 'San Francisco', 2500.00),
  (15, 'Ethan', 'Anderson', 'Music', 1, 'Boston', 2000.00);
select * from schools;

select * from schools where Name='John';
select Name, Surname, Salary from schools where Name='William';
select * from schools where TeachingHoursPerWeek>20 ;
select name,surname,city from schools where TeachingHoursPerWeek>20 ;
select * from schools where TeachingHoursPerWeek between 15 and 30 ;
select * from schools where salary between 4000 and 6000 ;

select * from schools where Surname='Smith' and City='Los Angeles';
select * from schools where TeachingHoursPerWeek>15 and city = 'Chicago' ; 
select * from schools where TeachingHoursPerWeek = 15 or TeachingHoursPerWeek = 30  ; 
select * from schools where TeachingHoursPerWeek in(15,20,30) ; 
use exp;
select * from employees where first_name like '%t';
select * from employees where first_name like 'M%';
select * from employees where Last_name like '%a%' ;
select * from employees where first_name like '%n' and Last_name like 'B%' ;
select * from employees where first_name like '%n' and salary > 5000 ;
select * from employees where first_name like '__h%';
select * from employees where salary between 10000 and 99999;

create table facebookusers(
id int unique,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(100) not null,
password varchar(100) not null,
birthdate date not null,
gender enum('Male','Female','Other'),
city varchar(50),
country varchar(50),
created_at timestamp default current_timestamp
);
INSERT INTO facebookusers (id,first_name, last_name, email, password, birthdate, gender, city, country)
VALUES
  (1,'John', 'Doe', 'john.doe@example.com', 'password123', '1990-05-15', 'Male', 'New York', 'United States'),
  (2,'Jane', 'Smith', 'jane.smith@example.com', 'password456', '1992-08-21', 'Female', 'London', 'United Kingdom'),
  (3,'Michael', 'Johnson', 'michael.johnson@example.com', 'password789', '1988-03-10', 'Male', 'Los Angeles', 'United States'),
  (4,'Emily', 'Brown', 'emily.brown@example.com', 'password321', '1995-12-07', 'Female', 'Sydney', 'Australia'),
  (5,'David', 'Wilson', 'david.wilson@example.com', 'password654', '1993-02-18', 'Male', 'Toronto', 'Canada'),
  (6,'Sarah', 'Taylor', 'sarah.taylor@example.com', 'password987', '1991-09-25', 'Female', 'Berlin', 'Germany'),
  (7,'Daniel', 'Anderson', 'daniel.anderson@example.com', 'password789', '1994-06-12', 'Male', 'Paris', 'France'),
  (8,'Jessica', 'Thomas', 'jessica.thomas@example.com', 'password567', '1996-11-03', 'Female', 'Tokyo', 'Japan'),
  (9,'Christopher', 'Lee', 'christopher.lee@example.com', 'password234', '1989-04-28', 'Male', 'Mumbai', 'India'),
  (10,'Amanda', 'Garcia', 'amanda.garcia@example.com', 'password890', '1997-07-14', 'Female', 'Rio de Janeiro', 'Brazil');


select * from facebookusers ;
select * from facebookusers where email ='christopher.lee@example.com' ;
select * from facebookusers where birthdate > '1993-01-01' ;
select * from facebookusers where gender = 'male'  and city='New York' ;
select * from facebookusers where first_name like 'J%' ;
select * from facebookusers where regexp_like (email, '\.com$');
select * from facebookusers where email like '%.com';
select * from facebookusers where regexp_like(last_name, '[0,9]') ;
select * from facebookusers where regexp_like(password, '[0,1,3,9]') ;
select * from facebookusers where password between 0 and 9;
create table myTable(
id int primary key,
name varchar(50),
age int,
email varchar(100),
address varchar(200)
);

INSERT INTO myTable (id, name, age, email, address)
VALUES
  (1, 'Ahmet Yılmaz', 30, 'ahmet@example.com', 'İstanbul, Türkiye'),
  (2, 'Ayşe Kaya', 25, 'ayse@example.com', 'Ankara, Türkiye'),
  (3, 'Mehmet Arslan', 35, 'mehmet@example.com', 'İzmir, Türkiye'),
  (4, 'Elif Öztürk', 28, 'elif@example.com', 'Bursa, Türkiye'),
  (5, 'Cemal Can', 32, 'cemal@example.com', 'Antalya, Türkiye'),
  (6, 'Fatma Kara', 27, 'fatma@example.com', 'Adana, Türkiye'),
  (7, 'Ali Yıldız', 29, 'ali@example.com', 'Konya, Türkiye'),
  (8, 'Zeynep Avcı', 31, 'zeynep@example.com', 'Eskişehir, Türkiye'),
  (9, 'Mustafa Demir', 33, 'mustafa@example.com', 'Diyarbakır, Türkiye'),
  (10, 'Sevgi Şahin', 26, 'sevgi@example.com', 'Trabzon, Türkiye');

create table bookstore(
book_id int,
store_id int,
title varchar(100),
author varchar(100),
category varchar(50),
price decimal(10,2),
publication_date date,
in_stock boolean,
primary key(book_id,store_id)
);

select * from bookstore;

INSERT INTO bookstore (book_id,store_id, title, author, category, price, publication_date, in_stock)
VALUES
  (1,254, 'Kuyucaklı Yusuf', 'Sabahattin Ali', 'Roman', 24.99, '2002-05-10', true),
  (2,255, 'İnce Memed', 'Yaşar Kemal', 'Roman', 34.99, '1984-03-15', true),
  (3,256, 'Serenad', 'Zülfü Livaneli', 'Roman', 29.99, '2007-11-20', true),
  (4,257, 'İstanbul Hatırası', 'Ahmet Ümit', 'Polisiye', 19.99, '2010-09-05', true),
  (5,258, 'Tutunamayanlar', 'Oğuz Atay', 'Roman', 27.99, '1971-12-01', true),
  (6,259, 'Beyaz Zambaklar Ülkesinde', 'Grigory Petrov', 'Roman', 21.99, '1998-07-17', true),
  (7,260, 'Kardeşimin Hikayesi', 'Zülfü Livaneli', 'Roman', 26.99, '2014-06-03', true),
  (8,261, 'İçimizdeki Şeytan', 'Sabahattin Ali', 'Roman', 23.99, '2009-08-22', true),
  (9,262, 'Aşk-ı Memnu', 'Halit Ziya Uşaklıgil', 'Roman', 18.99, '1899-05-01', true),
  (10,263, 'Kürk Mantolu Madonna', 'Sabahattin Ali', 'Roman', 25.99, '1943-10-10', true);
  
create table customer (
customer_id int primary key,
customer_name varchar(100),
email  varchar(100),
phone_number varchar(50),
city varchar(50)
);

INSERT INTO customer (customer_id, customer_name, email, phone_number, city) VALUES
(1, 'Ahmet Yılmaz', 'ahmet@example.com', '1234567890', 'İstanbul'),
(2, 'Ayşe Demir', 'ayse@example.com', '9876543210', 'Ankara'),
(3, 'Mehmet Kaya', 'mehmet@example.com', '4567891230', 'İzmir'),
(4, 'Fatma Arslan', 'fatma@example.com', '7891234560', 'Bursa'),
(5, 'Ali Öztürk', 'ali@example.com', '3216549870', 'Antalya'),
(6, 'Zeynep Toprak', 'zeynep@example.com', '6549873210', 'Adana'),
(7, 'Mustafa Aksoy', 'mustafa@example.com', '9517534680', 'Konya'),
(8, 'Ayhan Çelik', 'ayhan@example.com', '3692581470', 'Gaziantep'),
(9, 'Gamze Şahin', 'gamze@example.com', '2581473690', 'Trabzon'),
(10, 'Burak Yıldırım', 'burak@example.com', '1473692580', 'Eskişehir');

create table orders(
order_id int primary key,
order_date date,
total_amount decimal(10,2),
customer_id int,
foreign key (customer_id) references customer(customer_id)
);

INSERT INTO orders (order_id, order_date, total_amount, customer_id) VALUES
(1, '2023-05-01', 100.00, 1),
(2, '2023-05-02', 75.50, 1),
(3, '2023-05-03', 200.00, 2),
(4, '2023-05-04', 150.75, 3),
(5, '2023-05-05', 50.00, 4),
(6, '2023-05-06', 300.25, 5),
(7, '2023-05-07', 120.50, 6),
(8, '2023-05-08', 80.00, 7),
(9, '2023-05-09', 175.25, 8),
(10, '2023-05-10', 90.75, 9);
CREATE database DM604;
USE DM604;

create table companies(
company_id int, 
company_name varchar(20),
numberof_person int
);

INSERT INTO companies VALUES(1238,'Honda',985);
INSERT INTO companies VALUES(1236,'Toyota',125);
INSERT INTO companies VALUES(1239,'Honda',741);
INSERT INTO companies VALUES(1237,'Ford',852);
INSERT INTO companies VALUES(1209,'Hyundai',321);
INSERT INTO companies VALUES(1209,'Ford',300);
INSERT INTO companies VALUES(1912,'Honda',148);
INSERT INTO companies VALUES(1238,'Honda',985);
INSERT INTO companies VALUES(1236,'Toyota',125);
INSERT INTO companies VALUES(1239,'Honda',741);
INSERT INTO companies VALUES(1237,'Ford',852);
INSERT INTO companies VALUES(1210,'Hyundai',321);
INSERT INTO companies VALUES(1209,'Ford',300);
INSERT INTO companies VALUES(1912,'Honda',148);
INSERT INTO companies VALUES(1085,'Mercedes',500);
INSERT INTO companies VALUES(1095,'BMW',149);
INSERT INTO companies VALUES(1019,'Renault',268);
INSERT INTO companies VALUES(1745,'Mercedes',954);
INSERT INTO companies VALUES(3210,'Tofas',852);

select * from companies ;


create table salesman(
salesman_id int, 
firstname varchar(20),
city varchar(20),
earning int,
company_name varchar(20)
);
INSERT INTO salesman VALUES(12387,'Ali','Istanbul',1200,'Honda');
INSERT INTO salesman VALUES(123654,'Veli','Rize',2000,'Toyota');
INSERT INTO salesman VALUES(123963,'Kemal','Samsun',3000,'Honda');
INSERT INTO salesman VALUES(123741,'Hulya','Ordu',5000,'Ford');
INSERT INTO salesman VALUES(123852,'Ayse','Amasya',4000,'Hyundai');
INSERT INTO salesman VALUES(123159,'Kiraz','Aydin',1000,'Ford');
INSERT INTO salesman VALUES(123981,'Mutlu','Izmir',3600,'Honda');
INSERT INTO salesman VALUES(12387,'Ali','Istanbul',1200,'Honda');
INSERT INTO salesman VALUES(123654,'Veli','Rize',2000,'Toyota');
INSERT INTO salesman VALUES(123963,'Kemal','Samsun',3000,'Honda');
INSERT INTO salesman VALUES(123741,'Hulya','Ordu',5000,'Ford');
INSERT INTO salesman VALUES(123852,'Ayse','Amasya',4000,'Hyundai');
INSERT INTO salesman VALUES(123159,'Kiraz','Aydin',1000,'Ford');
INSERT INTO salesman VALUES(123981,'Mutlu','Izmir',3600,'Honda');
INSERT INTO salesman VALUES(128541,'Hasan','Van',4500,'Mercedes');
INSERT INTO salesman VALUES(129874,'Ahmet','Erbil',3845,'BMW');
INSERT INTO salesman VALUES(121234,'Sevim','Siirt',9854,'Renault');
INSERT INTO salesman VALUES(120281,'Selma','Malatya',9654,'Mercedes');
INSERT INTO salesman VALUES(120481,'Derya','Giresun',1235,'Tofas');

select * from salesman;
select company_name, numberof_person, 
(select avg(earning) from salesman
where companies.company_name = salesman.company_name) as 'earning_avg'
from companies ;
select company_name, 
(select max(earning) from salesman where companies.company_name = salesman.company_name ) as 'max_earning' 
from companies ;
select company_id, company_name, 
(select min(earning) from salesman where companies.company_name = salesman.company_name ) as 'min_earning' 
from companies ;

select company_id, company_name,
(select count(city) from salesman where companies.company_name = salesman.company_name)
as 'number of City' from companies ;

select * from companies
join salesman on companies.company_name = salesman.company_name;

create table universities (
university_id varchar(3) primary key,
university varchar(40),
university_city varchar(40)
);

INSERT INTO universities VALUES ('CLS', 'Istanbul University', 'Istanbul');
INSERT INTO universities VALUES ('SIO', 'Ljubljana University', 'Ljubljana');
INSERT INTO universities VALUES ('CKA', 'Bogazici University', 'Istanbul');
INSERT INTO universities VALUES ('ILO', 'ODTU', 'Ankara');
INSERT INTO universities VALUES ('UBK', 'BILKENT', 'Ankara');
INSERT INTO universities VALUES ('EPK', 'Ege University', 'Izmir');
INSERT INTO universities VALUES ('ETH', 'Ishik University', 'Erbil');
INSERT INTO universities VALUES ('EPW', 'Atsu', 'Kutaisi');

create table professors(
id numeric,
firstname varchar(40),
lastname varchar(40),
university_shortname varchar(3) primary key,
foreign key (university_shortname) references universities (university_id)
);


select * from universities;
update universities 
set university = 'asu' where university_id = 'EPW';

update universities set university='Ankara University'
where university_id = 'ILO' ;

select earning, city from salesman
where company_name 
in (select company_name from companies where company_id>1209) ; 
select earning, city from salesman
where exists (select company_name from companies where company_id>1209) ; 

create table people(
SSN numeric,
firstname varchar(20),
address varchar(20),
postcode int
);

INSERT INTO people VALUES(1234,'Ali Can','Istanbul',34000);
INSERT INTO people VALUES(7412,'Veli Cem','Tokat',60100);
INSERT INTO people VALUES(7896,'Mine','Ljubljana',1000);
INSERT INTO people VALUES(3698,'Ahmet','Sivas',58000);
INSERT INTO people(SSN,firstname) VALUES(3698,'Osman');
INSERT INTO people(address) VALUES('Adana');
INSERT INTO people(SSN) VALUES(3852);
INSERT INTO people VALUES(4000,'Ahmet','Tokat',98100);
INSERT INTO people VALUES(3698,'Mine','Kutahya',43000);
INSERT INTO people VALUES(3698,'Ali','Istanbul',34000);
INSERT INTO people VALUES(3698,'Mustafa','Sivas',58000);
INSERT INTO people VALUES(3698,'Mustafa','Sivas',58000);
INSERT INTO people VALUES(3690,'Eda','Sivas',59000);
INSERT INTO people VALUES(3698,'Eda','Sivas',57000);
INSERT INTO people VALUES(4687,'Eda','Artvin',08000);

select * from people
where firstname is null ;

select * from people
where ssn is null ;

select * from people 
where address is null ;

SET SQL_SAFE_UPDATES = 0;
update people set firstname='No Name' where firstname is null ;
select * from people;

select * from people order by address;
select * from people order by address DESC;

select * from people where firstname='Ahmet' order by ssn desc ;

select * from people where firstname='Eda' order by ssn desc ;

select * from people order by ssn desc, firstname asc ;

select  company_id, company_name,
(select count(city) from salesman where companies.company_name = salesman.company_name)
as 'number of City' from companies where company_id>1209 ;














