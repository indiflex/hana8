select * from Subject;

create view v_subject AS
    select s.*, p.name profname, p.likecnt
      from Subject s left outer join Prof p on s.prof = p.id;
  
select * from v_subject;

select name, substring(name, 1, 1) from Student;

use testdb;
create view v_dept AS
  select d.*, e.ename
    from Dept d left outer join Emp e on d.captain = e.id;
    
select * from v_dept;

use schooldb;
select * from Prof;
alter table Prof add column subjectcnt tinyint unsigned not null default 0;

select * from Subject;
select prof, count(*) from Subject group by prof;

insert into Subject(name, prof) values('과목6', 2);
insert into Subject(name, prof) values('과목7', 3);
insert into Subject(name, prof) values('과목8', 3);
delete from Subject where id = 9;
update Subject set name='과목5to2', prof=2 where id = 5;

delimiter //
create trigger tr_Subject_after_insert after insert on Subject for each row
begin
    update Prof set subjectcnt = subjectcnt + 1
     where id = NEW.prof;
end //
delimiter ;

delimiter //
create trigger tr_Subject_after_delete after delete on Subject for each row
begin
    update Prof set subjectcnt = subjectcnt - 1
     where id = OLD.prof;
end //
delimiter ;

delimiter //
create trigger tr_Subject_after_update after update on Subject for each row
begin
    IF NEW.prof <> OLD.prof THEN
        update Prof set subjectcnt = subjectcnt + 1
         where id = NEW.prof;
         
        update Prof set subjectcnt = subjectcnt - 1
         where id = OLD.prof;
    END IF;
end //
delimiter ;

show triggers;

select * from Subject s inner join Prof p on s.prof = p.id;
select p.*, (select count(*) from Subject where prof = p.id) cnt
 from Prof p;
 
update Prof p set subjectcnt = (select count(*) from Subject where prof = p.id);

select * from Subject where id < 5
UNION
select * from Subject where id > 3 order by id;

select * from dept;
select now(), f_dt(now());

use testdb;
select * from Dept;
call sp_emps_by_deptid(2);
call sp_emps_by_deptid(-1);

desc Dept;
desc Emp;

-- grant all privileges on schooldb.sp_emps_by_deptid to kildong@'%';

call sp_depts_by_cursor();
desc Emp;

select concat(e.ename, '(', d.dname, ')'), f_empinfo(e.id)
  from Emp e inner join Dept d on e.dept = d.id
 where e.id = 2;

select f_empinfo(5);








