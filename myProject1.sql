create table user1(user_id number primary key,name varchar2(150),phone_no number,email varchar2(100),address varchar2(100),reg_date date,password varchar2(100),upload_photo long);
create sequence userid start with 100 increment by 1;

insert into user1(user_id,name,phone_no,email,address,reg_date,password,upload_photo) values(userid.nextval,'Ankit',4578008234,'ankit@gmail.com','noida','03-jan-2021','ankit','img.jpg');

select user_id from user1;
create table contact(user_id number references user1 , name varchar2(150), Email varchar2(50), Phone_no number, Messege varchar2(200), contact_id number primary key);
create sequence contactid start with 1 increment by 1;

insert into contact values (121, 'Ankit', 'ankit@gmail.com',4578008234 , 'Message',contactid.nextval);
select contact_id from contact;

create table admin (admin_id number primary key, name varchar2(100),email varchar2(100), password varchar2(100));
create sequence adminid start with 1 increment by 1;

insert into admin values (adminid.nextval,'ankit','ankit@gmail.com','pass');
select admin_id from admin;

create table course (course_id number primary key, c_name varchar2(150),c_desp varchar2(200), c_fees number,c_resource varchar2(200));
create sequence courseid start with 110 increment by 1;
insert into course values (courseid.nextval,'JAVA','Programing language',299, 'video.mp4');
select course_id from course;

create table feedback(user_id number references user1,name varchar2(150),email varchar2(100),f_id number primary key,feedback varchar2(200));
create sequence fbid start with 0 increment by 1;

insert into feedback(user_id,name,email,f_id,feedback)values(121,'ankit','ankit@gmail.com',fbid.nextval,'good');