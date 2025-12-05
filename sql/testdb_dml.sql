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