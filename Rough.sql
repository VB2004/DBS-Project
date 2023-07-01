create user user2 identified by user2 default TABLESPACE users quota UNLIMITED on users;
grant connect to user2;
grant create table to user2;
grant create trigger to user2;
grant ADMINISTER DATABASE to user2;
grant create session to user2; 


set serveroutput on;
CREATE or REPLACE procedure userDDLProc(username VARCHAR2, password VARCHAR2) is
ddl_qry varchar2(200);
grant1 VARCHAR2(200);
grant2 VARCHAR2(200);
grant3 VARCHAR2(200);
grant4 VARCHAR2(200);
grant5 VARCHAR2(200);
BEGIN
    ddl_qry := 'create user '|| username ||' identified by ' || password ||' default TABLESPACE users quota UNLIMITED on users';
    grant1 := 'grant connect to ' || username;
    grant2 := 'grant create table to' || username;
    grant3 := 'grant create trigger to ' || username;
    grant4 := 'grant ADMINISTER DATABASE to ' || username;
    grant5 := 'grant create session grant any priviledge to ' || username;
    EXECUTE IMMEDIATE ddl_qry;
    EXECUTE IMMEDIATE grant1;
    EXECUTE IMMEDIATE grant2;
    EXECUTE IMMEDIATE grant3;
    EXECUTE IMMEDIATE grant4;
    EXECUTE IMMEDIATE grant5;
end;
/

begin
userDDLProc('test_user3', 'tes_user3');
end;
/