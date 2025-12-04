show tables;

show processlist;
kill 11;

select * from Dept;
select * from Emp;
select current_user();

create database schooldb;

create user school@'%' identified by 'Schooldb1!';

grant all privileges on schooldb.* to school@'%';