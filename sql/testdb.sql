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
select last_insert_id();
select current_user();

select 256 * 256 * 256 * 256;

create table T (
  id tinyint unsigned auto_increment primary key,
  name varchar(30) not null,
  score enum('A', 'B', 'C', 'F') default 'F' comment '학점'
);
select * from T;
select * from T where score < 'C';
desc T;
insert into T(name, score) values('Hong', 'A');
insert into T(name, score) values ('Kim', 'B'), ('Lee', 'C');
insert into T(name) values ('Park');

insert into T(name, score) values('Choi', 'F');

select * from T where score = 4;

alter table T modify column score enum('A', 'B', 'C', 'D', 'F') default 'F' comment '학점';

select * from T where score = 'F';

insert into T(name, score) values('Han', 'D');
select * from T;
select last_insert_id();
select * from T where id = last_insert_id();

select 16 * 1024 * 4;
select 16382 * 4 + 8; -- 65536
select 16382 * 4 + 4;
select 256 * 256;

select now(), sysdate(), curdate(), curtime(), unix_timestamp();
select now(), current_time(), current_date(), curdate(), current_timestamp();

select second(now(3)), microsecond(now(3)) / 1000, microsecond(now(6));

show variables like '%time_zone%';

set time_zone = 'Asia/Seoul';


use testdb;

select * from Emp;
alter table Emp add column
  -- auth tinyint(1) not null default 9 comment '1:admin, 3: manager, 5:employee, 7:temporary, 9:guest'
  auth enum('admin', 'manager', 'employee', 'temporary', 'guest') not null default 'guest'
;

/*  Auth.admin
const enum Auth {
  'admin' = 1,
  'manager' = 2,
  ...
}
*/
desc Emp;
select * from Dept;
alter table Dept add column captain int unsigned null comment '부서장';

alter table Dept add constraint foreign key fk_Dept_captain_Emp (captain)
    references Emp (id) on update cascade on delete set null;

create table EmailLog (
  id int unsigned not null auto_increment primary key,
  sender int unsigned not null,
  receivers varchar(1024),
  subject varchar(255),
  body text,
  foreign key fk_EmailLog_sender_Emp (sender) 
      references Emp(id) on delete no action on update cascade
);
show create table EmailLog;

alter table EmailLog add constraint foreign key fk_EmailLog_sender_Emp (sender) 
      references Emp(id) on delete no action on update cascade;

alter table EmailLog drop foreign key emaillog_ibfk_1;
alter table EmailLog drop index fk_EmailLog_sender_Emp;

alter table EmailLog engine = MyISAM;

show index from EmailLog;

show index from Emp;

select * from EmailLog;
insert into EmailLog(sender, receivers, subject, body)
              values(2, 'Hong, Kim', 'test mail', 'test mail body');
              
select * from Emp where id = 1;

insert into EmailLog(sender, receivers, subject, body)
              values(1, 'Hong, Kim', 'test mail', 'test mail body');

