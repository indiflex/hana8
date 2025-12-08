select * from Subject;

create view v_subject AS
    select s.*, p.name profname, p.likecnt
      from Subject s left outer join Prof p on s.prof = p.id;
  
select * from v_subject;

