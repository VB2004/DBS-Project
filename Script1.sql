create user user1 identified by user1 default TABLESPACE users quota UNLIMITED on users;
grant connect to user1;
grant create table to user1;
grant create trigger to user1;
grant create procedure to user1;
grant ADMINISTER DATABASE to user1;

create table emp(
    Eid NUMBER(3) PRIMARY KEY, 
    Ename VARCHAR(10),
    Salary number
);
create table SalChange(
    empid int, 
    cdate date,
    IncAmount int,
    Balance int,
    fk_empid foreign key (empid) references emp(eid));

insert into emp values(1, 'Bharath', 90000);
insert into emp values(2, 'Revanth', 100000);
insert into emp values(3, 'Abiram', 90000);
insert into emp values(4, 'Nitin', 95000);
insert into emp values(5, 'Vignesh', 110000);
insert into emp values(6, 'Harshith', 95000);


CREATE or replace TRIGGER SalInc before update of salary on emp
for each row
BEGIN
insert into SalChange(empid, cdate, IncAmount, Balance) values
(ac_seq.nextval, sysdate, abs(:new.salary - :old.salary), :new.salary);
end;
/



insert into book values(101, 'Operations', 300);
insert into book values(107, 'Databases', 370);
insert into book values(128, 'Networks', 175);


SELECT table_name
FROM all_tables
WHERE OWNER = 'user1'
ORDER BY table_name;
