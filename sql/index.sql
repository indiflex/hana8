explain select * from Emp where ename like '김%' and dept = 2;

explain select * from Emp where id > 0 and ename = '';

explain select * from Emp where ename like '%김%' and dept = 2;

explain select * from Emp where substring(ename, 2) = '신신';
select substring(ename,-1) from Emp;
show index from Emp;

use schooldb;
select substring(mobile, -4) from Student;
alter table Student add index (
    (substring(mobile, -4))
);

explain select * from Student where substring(mobile, -4) = '1012';

select * from Student s where exists(select * from Student where major > s.major);