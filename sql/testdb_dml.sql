use testdb;

select * from Emp;
select dept, count(*), avg(salary), sum(salary), std(salary), VARIANCE(salary)
  from Emp group by dept;
  
select dept, count(*), avg(salary) from Emp where dept < 5
 group by dept having avg(salary) > 500;
 
select dept, count(*) from Emp group by dept having count(*) >= 40;

select e.dept, count(e.ename) cnt, (select dname from Dept where id = e.dept)
  from Emp e
 group by e.dept having cnt >= 35;
 
select * from Emp;
select * from Dept;
 
select e.*, d.* from Emp e join Dept d on e.dept = d.id;
select e.dept, count(*), max(d.dname) from Emp e join Dept d on e.dept = d.id
 group by e.dept;
 
-- 부서 별 급여 평균이 전체 평균보다 높은 부서의 id와 평균 급여를 구하시오.
select avg(salary) from Emp;
select dept, avg(salary) from Emp group by dept;

select dept, avg(salary) avgsal from Emp
 group by dept having avgsal > (select avg(salary) from Emp);

select dept, avg(salary) avgsal, Dept.dname
  from Emp join Dept on Emp.dept = Dept.id
 group by dept having avgsal > (select avg(salary) from Emp);

select 251 * 7;
select * from Emp, Dept where Emp.dept = Dept.id;
select * from Emp inner join Dept on Emp.dept = Dept.id;

-- 전체 평균보다 더 높은 급여를 가진 직원 목록을 출력하시오.
-- (부서id, 부서명, 직원id, 직원명, 급여)
select e.dept, d.dname, e.id, e.ename, e.salary
  from Emp e inner join Dept d on e.dept = d.id
 where e.salary > (select avg(salary) from Emp);
 
select * from Emp
-- update Emp set salary = 900 + dept
  where id in (152, 97,18,80,133,47,128);
  
-- 부서 별 최고 급여자 `목록`을 추출하시오.
select e.*
  from Emp e inner join (select dept, max(salary) salary from Emp group by dept) d
             on e.dept = d.dept and e.salary = d.salary
 order by e.dept;

select * from Dept;
select * from Emp where id in (26, 30);
-- 김나나, 김바순, 
select dept, min(ename), group_concat(ename order by ename) from Emp group by dept;
select d.id, d.dname, (select id from Emp where dept = d.id order by ename limit 1) from Dept d
-- update Dept d set d.captain = (select id from Emp where dept = d.id order by ename limit 1) 
where d.id > 0;
 
select d.*, e.ename
  from Dept d inner join Emp e on d.captain = e.id;
  
select d.id, d.dname, e.id eid, e.ename
  from Dept d inner join Emp e on d.id = e.dept;

alter table Emp add column outdt date null comment '퇴사일' after salary;

select * from Emp
-- update Emp set outdt = '2025-11-25'
 where id in (14, 26);
 
select * from Emp where id in (14, 26);
select * from Dept where captain in (14, 26);

select d.*, e.*
  from Dept d inner join Emp e on d.captain = e.id
 where e.id in (14, 26);
 
select current_date();
select e.*, d.*, (case when e.id = d.captain then null else d.captain end)
 from Emp e inner join Dept d on e.dept = d.id where e.id in (14, 26);
-- 방식1) inner join 방식
update Emp e inner join Dept d on e.dept = d.id
  -- set e.outdt = current_date(), d.captain = (case when e.id = d.captain then null else d.captain end)
  -- set e.outdt = current_date(), d.captain = e.id
  -- 
  set e.outdt = current_date(), d.captain = (case when d.captain in (14, 26) then null else d.captain end)
 where e.id in (14, 26);
 
update Emp set outdt = null where id in (14, 26);
update Dept set captain = 26 where id = 1;

-- 방식2) outer join 활용
select *
  from Emp e left outer join Dept d on e.id = d.captain 
 where e.id in (14, 26);
 
update Emp e left outer join Dept d on e.id = d.captain 
   set e.outdt = curdate(), d.captain = null
 where e.id in (14, 26);
 
select * from Dept;