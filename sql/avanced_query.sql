select d.id, d.dname, avg(e.salary) avgsal
  from Dept d inner join Emp e on d.id = e.dept
 group by d.id;
 
with AvgSal AS (
  select d.id, max(d.dname) dname, avg(e.salary) avgsal
    from Dept d inner join Emp e on d.id = e.dept
   group by d.id
),
MaxSal AS (select * from AvgSal order by avgsal desc limit 1),
MinSal AS (select * from AvgSal order by avgsal limit 1)
select * from MaxSal
UNION ALL
select * from MinSal
UNION ALL
select 0, '평균 차액', (select avgsal from MaxSal) - (select avgsal from MinSal);

with AvgSal AS (
  select max(d.dname) dname, avg(e.salary) avgsal
    from Dept d inner join Emp e on d.id = e.dept
   group by d.id
),
MaxSal AS (select * from AvgSal order by avgsal desc limit 1),
MinSal AS (select * from AvgSal order by avgsal limit 1),
SumUp AS (
    select '최고', dname, avgsal from MaxSal
    UNION ALL
    select '최저', dname, avgsal from MinSal
)
select * from SumUp
UNION
select '', '평균 차액', max(avgsal) - min(avgsal) from SumUp;

-- 0  1  1  2  3  5  8  13  21  34  55
--                        1      0      1
--                      1 + 1   1     0 + 1
--                      2 + 1   1      2
--                      3 + 1   2      3 
with recursive fibonacci (n, prev, next) AS (
    select 1, 0, 1
    UNION ALL
    select n + 1, next, prev + next from fibonacci where n < 10
)
select * from fibonacci;

insert into Dept(pid, dname)
  values(6, '인프라셀'), (6, 'DB셀'), (7, '모바일셀');
  
select * from Dept;
select p.dname, d.dname
  from Dept p inner join Dept d on p.id = d.pid;