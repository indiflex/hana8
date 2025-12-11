use mysql;

create database tdb;

-- $ mysql -u root -p"TestdbRoot" -h 127.0.0.1 -P 3308 tdb < testdb_data.sql

use tdb;

show triggers like 'Emp';

-- drop table Dept;
select * from Dept;
-- 1. fullbackup
-- 2. update
update Dept set dname='모바일XXX' where id = 10;
-- 3. delete(mistake)
delete from Dept where id > 7;

-- recovery
-- 1. recovery (fullbackup)
-- $ mysql -u root -p"TestdbRoot" -h 127.0.0.1 -P 3308 tdb < backup/tdb.sql

show binary logs;
-- 2. recovery (transaction log)
-- 1) $ mysqlbinlog mysql/binlog.000006 -v -d tdb > t2.sql
-- 2) 포지션 찾기: 49755 ~ 222968
-- 3) 위 포지션으로 복구할 부분만 다시 추출alter
--   $ mysqlbinlog --start-position=49755 --stop-position=222999 mysql/binlog.000006 -v -d tdb > t3.sql
-- 4) 최종 복구
--   $ mysql -u root -p"TestdbRoot" -h 127.0.0.1 -P 3308 tdb < 3.sql

select * from Dept; 