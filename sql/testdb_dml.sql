use testdb;

select * from Emp;
select dept, count(*), avg(salary), sum(salary), std(salary), VARIANCE(salary)
  from Emp group by dept;
  
select dept, count(*), avg(salary) from Emp where dept < 5
 group by dept having avg(salary) > 500;
 
select dept, count(*) from Emp group by dept having count(*) >= 40;

select e.dept, count(e.ename), (select dname from Dept where id = e.dept)
  from Emp e
 group by e.dept having count(*) >= 35;
 
select * from Emp;
select * from Dept;
 
select e.*, d.* from Emp e join Dept d on e.dept = d.id;
select e.dept, count(*), max(d.dname) from Emp e join Dept d on e.dept = d.id
 group by e.dept;