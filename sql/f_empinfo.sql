CREATE FUNCTION `f_empinfo`(_empid int unsigned)
RETURNS varchar(100)
BEGIN
    declare v_result varchar(100) default '없는 직원';
    
    select concat(e.ename, '(', d.dname, ')') into v_result
      from Emp e inner join Dept d on e.dept = d.id
     where e.id = _empid;

RETURN v_result;
END
