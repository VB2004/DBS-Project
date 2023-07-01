create or replace procedure GetTenantDetails(p_id in number) AS
uid int;
username varchar2(20);
userAge int;
doorno int;
StreetNo varchar2(10);
UCity varchar2(20);
pincode number;
user_name varchar2(20);
pass_word varchar2(20);
BEGIN
    select u.userid, uname, age, dno, street, city, zip, username, password into uid, username, userAge, doorno, StreetNo, UCity, pincode, user_name, pass_word
    from users u where u.userid in (select userID from tenant_prop tp where p_id = tp.pid);
    dbms_output.put_line('Details of the tenant living in property number'||p_id|| ':' );
    dbms_output.put_line(uid || ' | ' || username || ' | ' || userAge || ' | ' || doorno || ' | ' || StreetNO || ' | ' || UCity || ' | ' || pincode || ' | ' || user_name || ' | ' || pass_word);
proc1(uid);
end;
/

create or replace procedure proc1(uid in int) is
phn int;
cursor proc1_Cursor IS
    select phone from contact where userID = uid;
BEGIN
open proc1_Cursor;
dbms_output.put_line('Contact details of the tenant are: ');
LOOP
fetch proc1_Cursor into phn;
exit when proc1_Cursor%notfound;
dbms_output.put_line(phn);
end loop;
close proc1_Cursor;
end;
/

exec GetTenantDetails(103);