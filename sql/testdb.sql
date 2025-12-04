use testdb;

show tables;

show processlist;
kill 11;

desc DeptBackup;
show index from DeptBackup;

select * from Dept;

create table DeptBackup AS select * from Dept;
drop table DeptBackup;
-- truncate table Dept;
-- Error Code: 1701. Cannot truncate a table referenced in a foreign key constraint (`testdb`.`Emp`, CONSTRAINT `emp_ibfk_1`)

create table EmpBackup AS select * from Emp;
-- truncate table Emp;

insert into Emp select * from EmpBackup;
drop table EmpBackup;
select * from Emp;

select current_user();

create database schooldb;

create user school@'%' identified by 'Schooldb1!';

grant all privileges on schooldb.* to school@'%';

select 256 * 256 * 256 * 256;

create table T (
  id tinyint unsigned auto_increment primary key,
  name varchar(30) not null,
  score enum('A', 'B', 'C', 'F') default 'F' comment '학점'
);
select * from T;
desc T;
insert into T(name, score) values('Hong', 'A');
insert into T(name, score) values ('Kim', 'B'), ('Lee', 'C');
insert into T(name) values ('Park');

insert into T(name, score) values('Choi', 'F');

select * from T where score = 4;

alter table T modify column score enum('A', 'B', 'C', 'D', 'F') default 'F' comment '학점';

select * from T where score = 'F';

insert into T(name, score) values('Han', 'D');

select 16 * 1024 * 4;
select 16382 * 4 + 8; -- 65536
select 16382 * 4 + 4;
select 256 * 256;












