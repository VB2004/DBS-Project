create or replace procedure InsertPropertyRecord(
    uid in int, 
    pid in int, 
    avail_from in date, 
    avail_till in date, 
    rpm in int, 
    yhr in int, 
    t_area in int, 
    p_area in int, 
    floors in int, 
    yoc in int, 
    loc in varchar, 
    address in varchar, 
    nbr in number, 
    ptype in varchar) as
begin
insert into owner_prop values(uid,pid,avail_from, avail_till, rpm, yhr, t_area, p_area, floors, yoc, loc, address);
IF (nbr is not NULL) THEN
    insert into res_prop values(pid, nbr, ptype);
ELSE
    insert into comm_prop values(pid, ptype);
END IF;
dbms_output.put_line('Property Record inserted');
commit;
end;
/

exec InsertPropertyRecord(4, 117, '18-AUG-2023', '18-OCT-2023', 12000, 8, 1000, 1350, 3, 2017, 'Kolkata', 'New Ballygunge Road, Kolkata', 6, 'Flat');
exec InsertPropertyRecord(8, 114, '02-JAN-2023', '02-MAR-2023', 10500, 5, 1400, 1700, 5, 2016, 'Koregaon', 'south Main Road, Koregaon Park', NULL, 'Shop');