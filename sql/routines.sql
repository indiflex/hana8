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