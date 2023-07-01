CREATE OR REPLACE PROCEDURE CreateNewUser (
    p_uid in users.userID%TYPE,
    p_uname IN users.uname%TYPE,
    p_age IN users.age%TYPE,
    p_dno IN users.dno%TYPE,
    p_street IN users.street%TYPE,
    p_city IN users.city%TYPE,
    p_zip IN users.zip%TYPE,
    p_username IN users.username%TYPE,
    p_password IN users.password%TYPE,
    p_phone IN contact.phone%TYPE,
    is_mgr int,
    is_dba int) IS
BEGIN
    INSERT INTO users 
    VALUES (p_uid, p_uname, p_age, p_dno, p_street, p_city, p_zip, p_username, p_password);
    
    INSERT INTO contact VALUES(p_uid, p_phone);

    if (is_mgr is not NULL) THEN
        insert into manager values(p_uid);
    end if;
    if (is_dba is not null) THEN
        insert into dba values(p_uid);
    end if;
END;
/


exec CreateNewUser(13, 'Sam ', 32, 21, 'NC Strt', 'Chennai', 800119, 'sam123', 'password13', 7324682362, NULL, NULL);
exec CreateNewUser(15, 'Emily', 27, 37, 'East Strt', 'Bangalore', 400039, 'emily123', 'password15', 2938742342, NULL, NULL);