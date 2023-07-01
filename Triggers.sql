--trigger for adding into history_prop table

-- create or replace trigger rent_history after update on tenant_prop
-- for each row
-- declare
-- p_id int; 
-- user_id int; 
-- s_date date; 
-- e_date date; 
-- rnt int; 
-- yhike int;
-- BEGIN
--     select pid, :old.userID, :old.st_date, :old.end_date, :old.rent, :old.hike
--     into p_id, user_id, s_date, e_date, rnt, yhike
--     from tenant_prop;
--     insert into history_prop values(p_id,user_id,st_date, e_date, rnt, yhike);
--     dbms_output.put_line('history_prop table updated.');
-- end;
-- /





-- create or replace trigger rent_history after update on tenant_prop
-- for each row
-- declare
--     p_id int; 
--     user_id int; 
--     s_date date; 
--     e_date date; 
--     rnt int; 
--     yhike int;
-- BEGIN
--     p_id := :old.pid;
--     user_id := :old.userID;
--     s_date := :old.st_date;
--     e_date := :old.end_date;
--     rnt := :old.rent;
--     yhike := :old.hike;
    
--     insert into history_prop values(p_id, user_id, s_date, e_date, rnt, yhike);

--     dbms_output.put_line('history_prop table updated.');
-- end;
-- /


-- create or replace trigger rent_history after update on tenant_prop
-- for each row
-- declare
--     p_id int;
--     user_id int;
--     s_date date;
--     e_date date;
--     rnt int;
--     yhike int;
-- BEGIN
--     p_id := :old.pid;
--     user_id := :old.userID;
--     s_date := :old.st_date;
--     e_date := :old.end_date;
--     rnt := :old.rent;
--     yhike := :old.hike;
   
--     insert into history_prop values(p_id, user_id, s_date, e_date, rnt, yhike);


--     dbms_output.put_line('history_prop table updated.');
-- end;
-- /





create or replace trigger rent_history after update on tenant_prop
for each row
declare
    p_id int;
    user_id int;
    s_date date;
    e_date date;
    rnt int;
    yhike int;
BEGIN
    p_id := :old.pid;
    user_id := :old.userID;
    s_date := :old.st_date;
    e_date := :old.end_date;
    rnt := :old.rent;
    yhike := :old.hike;
   
    insert into history_prop values(p_id, user_id, s_date, e_date, rnt, yhike);


    dbms_output.put_line('history_prop table updated.');
end;
/

--------------------------------------------------------------------------------------------

create or replace trigger rent_history after update on tenant_prop
for each row
BEGIN
    insert into history_prop values(:old.userID, :old.pid, :old.st_date, :old.end_date, :old.rent, :old.hike);
    dbms_output.put_line('history_prop table updated.');
end;
/