create database amdocs_project;
use amdocs_project;

create table user1(user_id int(5) primary key auto_increment,name varchar(250),phone_no long,email varchar(120),address varchar(255),reg_date date,password varchar(100),upload_photo long)auto_increment=100;
insert into user1(user_id,name,phone_no,email,address,reg_date,password,upload_photo) values(null,'Ankit',4578008234,'ankit@gmail.com','noida','03-jan-2021','ankit','img.jpg');
select * from user1;
-- drop table user1;

create table contact(user_id int(5) references user1 , name varchar(250), email varchar(120), Phone_no long, messege varchar(255), contact_id int(5) primary key auto_increment);
insert into contact values (101, 'Ankit', 'ankit@gmail.com',4578008234 , 'Message',null);
select * from contact;
-- update contact set user_id=102 where contact_id=2;

-- drop table contact;
create table admin (admin_id int(5) primary key auto_increment, name varchar(250),email varchar(120) not null, password varchar(100) not null)auto_increment=100;
insert into admin values (null,'ankit','ankit@gmail.com','pass');
select admin_id from admin;

create table course (course_id int(5) primary key auto_increment, c_name varchar(250),c_desp varchar(250), c_fees double(8,2) default 999.00,c_resource varchar(250) default 'NA')auto_increment=1000;
insert into course values (null,'JAVA','Programing_language',299, 'video.mp4');
select * from course;

create table feedback(user_id int(5) references user1,name varchar(250),email varchar(120),f_id int(5) primary key auto_increment,feedback varchar(250));
insert into feedback(user_id,name,email,f_id,feedback)values(101,'ankit','ankit@gmail.com',null,'good');
select * from feedback;