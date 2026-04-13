CREATE DEFINER=`root`@`%` PROCEDURE `sp_depts_by_cursor`()
BEGIN
    Declare v_deptid smallint unsigned;
    Declare v_dname varchar(31);
    Declare v_captain int unsigned;
    Declare v_minsal int unsigned;
    Declare v_minsalcnt smallint unsigned;
    Declare v_captainName varchar(31);
    Declare v_captainSal int unsigned;
    
    Declare _done boolean default False;
    Declare _cur CURSOR FOR
        select id, dname, captain from Dept;
        
    Declare Continue Handler
        For Not Found SET _done := True;
        
    drop table if exists Tmp;
    
    create temporary table Tmp (
        deptid smallint unsigned,
        dname varchar(31),
        minsal int,
        minsalcnt smallint unsigned,
        captainName varchar(31),
        captainSal int
    );
        
    OPEN _cur;
    cur_loop: LOOP
        Fetch _cur into v_deptid, v_dname, v_captain;
        IF _done THEN
            LEAVE cur_loop;
        END IF;
        
        select min(salary) into v_minsal from Emp where dept = v_deptid;
        select count(*) into v_minsalcnt from Emp where dept = v_deptid and salary = v_minsal;
        
        IF v_captain > 0 THEN
            select ename, salary into v_captainName, v_captainSal
              from Emp where id = v_captain;
        ELSE
            select v_captainName = '', v_captainSal = 0;
        END IF;
        
        insert into Tmp(deptid, dname, minsal, minsalcnt, captainName, captainSal)
                 values(v_deptid, v_dname, v_minsal, v_minsalcnt, v_captainName, v_captainSal);
                 
    END LOOP cur_loop;
    CLOSE _cur;

    select * from Tmp;
END