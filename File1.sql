create or replace procedure GetPropertyRecord(uid in number) AS
Pid int;
avail_f date; 
avail_t date; 
rperm int;
yhour int;
total_area int; 
plinth_area int; 
nofloors int; 
tempyoc int;
temploc varchar2(20);
tempAdd varchar2(20);
rPT varchar2(100);
noOfBedrooms int;
cPT varchar(100);

cursor GPR_Cursor IS
select op.pid, avail_from, avail_till, rpm, yhr, t_area, p_area, floors, yoc, loc, address, rprop_type, nbr, cprop_type from owner_prop op, res_prop rp, comm_prop cp where op.pid=rp.pid and rp.pid=cp.pid and uid = userID;
begin
open GPR_Cursor;
dbms_output.put_line('Properties of user with UID: '||uid||':');
LOOP
fetch GPR_Cursor into Pid, avail_f, avail_t, rperm, yhour, total_area, plinth_area, nofloors, tempyoc, temploc, tempAdd, rPT, noOfBedrooms, cPT;
exit when GPR_Cursor%notfound;
dbms_output.put_line(Pid || '   ' || avail_f || '   ' || avail_t || '   ' || rperm || '   ' || yhour || '   ' || total_area || '   ' || plinth_area || '   ' || nofloors || '   ' || tempyoc || '   ' || temploc || '   ' || tempAdd || '   ' || rPT || '   ' || noOfBedrooms || '   ' || cPT);
end loop;
close GPR_Cursor;
end;
/