CREATE DEFINER=`root`@`%` PROCEDURE `sp_emps_by_deptid`(_dept smallint unsigned)
BEGIN
    select e1.*, d.dname, ifnull(e2.ename, '공석') captain_name
      from Emp e1 inner join Dept d on e1.dept = d.id
               left outer join Emp e2 on d.captain = e2.id
     where e1.dept = _dept
       and e1.outdt is null;
END