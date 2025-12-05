use schooldb;

show index from Major;

alter table Major add column updatedata timestamp
  default current_timestamp on update current_timestamp
  after id;
  
alter table Major add column building varchar(15) not null default '';

update Major set name = '건축공학과' where id = 3;

-- 
update Major set building = (case when name like '%공학과' then '공학관' else '인문관' end);

update Major set building = '공학관'
-- select * from Major
 where name like '%공학과';
 
update Major set building = '인문관' where building = ''; -- building is null

select * from Major order by id;
insert into Major(name) values ('경영학과');

insert ignore into Major(name) values ('경영학과');

insert into Major(name, building) values ('경제학과', '인문관');

insert into Major(name, building) values ('경제학과', '인문관')
  on duplicate key update building = '인문관';

alter table Major auto_increment = 8;
  
show create table Major;
select 2 % 4;
select * from testdb.Emp;
select * from Student;
desc Student;

insert into Student(name, birthdt, major, email, mobile, gender)
select ename, concat('2000-12-', id), dept % 4 + 1, concat('stu', id, '@gmail.com'),
       concat('0101234', id + 1000), id % 2
  from testdb.Emp
 where id between 10 and 31 limit 30; -- id >= 10 and id <= 31
 
select * from Prof;
insert into Prof(name) values ('김교수'),('박교수'),('최교수'),('이교수'),('한교수');

select * from Subject;
insert into Subject(name, prof)
select concat('과목', id), id from Prof;

select * from Enroll;
-- 
insert into Enroll(student, subject)
select id, (select id from Subject order by rand() limit 1)
  from Student order by rand();

-- insert into Enroll(subject, student)
select id, (select id from Student order by rand() limit 1)
  from Subject order by rand();

select s.id as x, (select id from Student where id > s.id order by rand() limit 1) y
  from Student s order by s.id;
  
select s1.id, (case when s1.id = s2.id then '-' else s2.id end), if(s1.id = s2.id, 'X', 'Y')
  from Student s1 join (select s2.id, (@rownum := @rownum + 1) rn
                          from Student s2, (select @rownum := 0) rnum) s2
                    on s1.id = s2.rn
 order by rand();
  
select s2.id, (@rownum := @rownum + 1) rn
  from Student s2, (select @rownum := 0) rnum;
  
