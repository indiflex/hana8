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

show variables like '%cte%';

insert into Dept(pid, dname) values(6, '인프라셀'), (6, 'DB셀'), (7, '모바일셀');
insert into Dept(pid, dname) values(3, '영업특공대');
  
select * from Dept;
select p.dname, d.dname, concat(p.id, '-', d.id) h
  from Dept p inner join Dept d on p.id = d.pid
 order by h;
 
with recursive CteDept (id, dname, depth, h) AS (
  select id, dname, 0, cast(id as char(30)) from Dept where pid = 0
  UNION ALL
  select d.id, d.dname, cte.depth + 1, concat(cte.h, '-', d.id)
    from Dept d inner join CteDept cte on d.pid = cte.id
   where pid = cte.id
)
select concat(repeat('↪', depth), dname) from CteDept order by h;

select row_number() over (order by dept, salary desc) '순번', e.*,
    avg(salary) over w '급여 평균',
    format(sum(salary) over w, 0) '급여 누적치'
  from Emp e
 window w as (partition by dept order by salary desc);
 
select
    row_number() over(order by dept, salary desc) '순번',
    e.*,
    rank() over w '부서내 순위',
    dense_rank() over w '부서내 순위',
    percent_rank() over w '부서내 %순위',
    cume_dist() over w '부서내 %경계',
    ntile(3) over w '급여'
  from Emp e
 where ename like '김%'
 WINDOW w as (partition by dept order by dept, salary desc);
 
 select row_number() over(order by dept, salary desc) '순번',
    e.*,
    sum(salary) over w '급여 누적치',
    first_value(salary) over w '부서내 1등 급여',
    last_value(salary) over w '부서내 현재까지의 꼴등 급여',
    nth_value(salary, 2) over w '부서내 2등 급여',
    lag(salary, 1) over w '이전 급여',
    lead(salary, 1) over w '다음 급여'
  from Emp e
 where ename like '박%'
 WINDOW w as (partition by dept order by dept, salary desc);


select 
      (case when p.id is not null then max(p.dname) else '총계' end) pname, 
      (case when d.id is not null then max(d.dname)
            when p.id is not null then '-소계-'
            else ' - ' end) name, 
      format(sum(e.salary), 0)
  from Dept p inner join Dept d on p.id = d.pid
              inner join Emp e on e.dept = d.id
 group by p.id, d.id
 with rollup;
 
select d.id, max(d.dname), avg(e.salary), sum(e.salary)
  from Dept d inner join Emp e on d.id = e.dept
 group by d.id
 order by d.id;
            
select '평균급여' as '구분', 
        avg(case when dept = 3 then salary end) as '영업1팀', 
        avg(if(dept = 4, salary, null)) '영업2팀',
        avg(if(dept = 5, salary, null)) '영업3팀'
  from Emp
UNION
select '총 급여', 
        sum(case when dept = 3 then salary end) as '영업1팀', 
        sum(if(dept = 4, salary, 0)) '영업2팀',
        sum(if(dept = 5, salary, null)) '영업3팀'
  from Emp;
            
            

            
            
            
            