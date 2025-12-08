select conv('FF', 16, 10), conv('10110', 2, 10);

select CAST('2025-12-25 11:22:22.123' AS DATETIME);   -- cf. char, datetime
select CAST( 1.467 AS Signed Integer ), CONVERT(1.567, Signed Integer);
select str_to_date('2025-12-03', '%Y-%m-%d');  -- ←→ date_format  -- %ym
select str_to_date('2025/03/12', '%Y/%d/%m');
select date_format(now(), '%m/%d %H:%i:%s');

select dname, HEX(AES_ENCRYPT(dname, '암호키')),
       cast(AES_DECRYPT( UNHEX( HEX(AES_ENCRYPT(dname, '암호키')) ), '암호키') as char)
 from Dept; -- AES_DECRYPT
-- CAST(AES_DECRYPT(UNHEX(sub.enc), '암호키') as char)
select sha2('data', 256), sha2('data', 512); -- 단방향암호화(64, 128 length)
-- select sys.caching_sha2_password('abcde');

-- concat, concat_ws, group_concat
-- ex. 
select concat('A', ',', ifnull(null, ''), 'B', ':', 'C'), concat_ws(',', 'A', null, 'B', 'C');
-- 
select concat(e.ename, ',', d.dname), concat_ws(',', e.ename, d.dname) from Emp e right outer join Dept d on e.id = d.captain;