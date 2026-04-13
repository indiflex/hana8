delimiter $$
create trigger tr_emp_after_update after update on Emp for each row
begin
    IF NEW.dept <> OLD.dept THEN
        update Dept set empcnt = empcnt + if(id = NEW.dept, 1, -1)
         where id in (NEW.dept, OLD.dept);
    END IF;
end $$
delimiter ;