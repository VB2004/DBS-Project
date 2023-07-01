create or replace procedure GetPropertyRecord(uid in number) AS
v_pid owner_prop.pid%TYPE;
v_yhr owner_prop.yhr%TYPE;
v_rpm owner_prop.rpm%TYPE;
v_t_area owner_prop.t_area%TYPE;
v_p_area owner_prop.p_area%TYPE;
v_floors owner_prop.floors%TYPE;
v_yoc owner_prop.yoc%TYPE;
v_loc owner_prop.loc%TYPE;
v_address owner_prop.address%TYPE;
v_prop_type VARCHAR2(20);
v_rprop_type  res_prop.rprop_type%TYPE;
v_cprop_type  comm_prop.cprop_type%TYPE;


cursor GPR_Cursor IS
    SELECT op.pid, op.yhr, op.rpm, op.t_area, op.p_area, op.floors, op.yoc, op.loc, op.address,
    CASE WHEN rp.pid IS NOT NULL THEN 'Residential' ELSE 'Commercial' END AS prop_type, rp.rprop_type, cp.cprop_type
    FROM owner_prop op
    LEFT JOIN res_prop rp ON op.pid = rp.pid
    LEFT JOIN comm_prop cp ON op.pid = cp.pid
    WHERE uid = userid;

begin
open GPR_Cursor;
dbms_output.put_line('Properties of user with UID: '||uid||':');
DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------');
LOOP
FETCH GPR_cursor INTO v_pid, v_yhr, v_rpm, v_t_area, v_p_area, v_floors, v_yoc, v_loc, v_address, v_prop_type, v_rprop_type, v_cprop_type;
    EXIT WHEN GPR_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Property ID: ' || v_pid);
    DBMS_OUTPUT.PUT_LINE('Year of construction: ' || v_yhr);
    DBMS_OUTPUT.PUT_LINE('Rent per month: ' || v_rpm);
    DBMS_OUTPUT.PUT_LINE('Total area: ' || v_t_area);
    DBMS_OUTPUT.PUT_LINE('Property area: ' || v_p_area);
    DBMS_OUTPUT.PUT_LINE('Number of floors: ' || v_floors);
    DBMS_OUTPUT.PUT_LINE('Year of completion: ' || v_yoc);
    DBMS_OUTPUT.PUT_LINE('Locality: ' || v_loc);
    DBMS_OUTPUT.PUT_LINE('Address: ' || v_address);
    DBMS_OUTPUT.PUT_LINE('Property type: ' || v_prop_type);
    if (v_rprop_type is not null) then
    DBMS_OUTPUT.PUT_LINE('Residential type: ' || v_rprop_type);
    else
    DBMS_OUTPUT.PUT_LINE('Commercial type: ' || v_cprop_type);
    end if;
    DBMS_OUTPUT.PUT_LINE('----------------------------------------------------------------------------');
end loop;
close GPR_Cursor;
end;
/



exec GetPropertyRecord(4);
exec GetPropertyRecord(6);