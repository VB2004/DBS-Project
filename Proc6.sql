create or replace procedure GetRentHistory(p_id in int) AS
user_id int; sdate date; edate date;rnt int; yhike int;
cursor RH_Cursor IS
select userID, st_date,end_date,rent,hike from history_prop where Hpid = p_id;
BEGIN
open RH_Cursor;
dbms_output.put_line('For the property with '|| p_id || ': the rent history is: ');
LOOP
fetch RH_Cursor into user_id,sdate,edate,rnt,yhike;
exit when RH_Cursor%notfound;
dbms_output.put_line(user_id || ' | ' || sdate || ' | ' || edate ||' | ' || rnt ||' | ' || yhike);
end loop;
close RH_Cursor;
end;
/




exec GetRentHistory(104);
exec GetRentHistory(103);