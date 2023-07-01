-- Users
INSERT INTO users  VALUES  (1, 'John Doe', 28, 12, 'Main Strt', 'Mumbai', 400001, 'johndoe', 'password123');
INSERT INTO users  VALUES (2, 'Jane Smith', 32, 23, 'First Avnu', 'Bangalore', 560001, 'janesmith', 'password456');
INSERT INTO users  VALUES (3, 'Mike Johnson', 24, 45, 'Park Rd', 'Delhi', 110001, 'mikejohnson', 'password789');
INSERT INTO users  VALUES (4, 'Sarah Lee', 30, 67, 'Ctrl Strt', 'Chennai', 600001, 'sarahlee', 'password1234');

-- Contact 
INSERT INTO contact VALUES (1, 9876543210);
INSERT INTO contact VALUES (2, 8765432109);
INSERT INTO contact VALUES (3, 7654321098);
INSERT INTO contact VALUES (4, 6543210987);
INSERT INTO contact VALUES (4, 87324626237);

-- Owner_prop
INSERT INTO owner_prop VALUES(1, 101, '01-JUN-2023', '01-JUN-2024', 12000, 5, 500, 1000, 2, 2015, 'Powai', 'A-1, Hiranandani Gardens');
INSERT INTO owner_prop VALUES(2, 102, '01-JUN-2023', '31-DEC-2023', 15000, 3, 600, 1200, 1, 2010, 'Indiranagar', 'B-2, 3rd Main Road');
INSERT INTO owner_prop VALUES(3, 103, '01-MAY-2023', '01-MAY-2024', 18000, 4, 700, 1400, 3, 2018, 'Green Park', 'C-3, Block A');
INSERT INTO owner_prop VALUES(4, 104, '01-JUL-2023', '01-JUL-2024', 10000, 2, 400, 800, 1, 2012, 'Adyar', 'D-4, 2nd Street');

-- Res_prop
INSERT INTO res_prop VALUES (101, 3, 'Flat');
INSERT INTO res_prop VALUES (102, 2, 'indpdnt');
INSERT INTO res_prop VALUES (104, 1, 'Indpndnt');

-- Comm_prop
INSERT INTO comm_prop VALUES (103, 'Shop');

-- Tenant_prop
INSERT INTO tenant_prop VALUES (2, 101, '01-JUL-2023', '30-JUN-2024', 13000, 5);
INSERT INTO tenant_prop VALUES (3, 102, '15-JUN-2023', '14-JUN-2024', 17000, 3);
INSERT INTO tenant_prop VALUES (4, 103, '01-MAY-2023', '30-APR-2024', 20000, 4);
INSERT INTO tenant_prop VALUES (1, 104, '01-AUG-2023', '31-JUL-2024', 11000, 2);



INSERT INTO users VALUES (7, 'Sakshi', 34, 8, 'MG Road', 'Mumbai', 400001, 'sakshi123', 'password7');

INSERT INTO users VALUES (8, 'Rajiv', 29, 23, 'Lavelle Rd', 'Bangalore', 560001, 'rajiv123', 'password8');

INSERT INTO users VALUES (9, 'Mukesh', 37, 21, 'Park Strt', 'Kolkata', 700019, 'mukesh123', 'password9');

INSERT INTO contact VALUES (1, 9876543210);

INSERT INTO contact VALUES (4, 9876543213);

INSERT INTO contact VALUES (3, 9876543215);

INSERT INTO contact VALUES (2, 8276544845);

INSERT INTO contact VALUES (7, 9876543216);

INSERT INTO contact VALUES (8, 9876543217);

INSERT INTO contact VALUES (9, 9876543218);

INSERT INTO contact VALUES (9, 6876543478);

INSERT INTO owner_prop VALUES (9, 105, '01-JUN-2023', '31-DEC-2023', 12000, 2015, 1000, 1200, 3, 2015, 'Indiranagar', '12th Main, Indiranagar');

INSERT INTO owner_prop VALUES (3, 107, '01-MAY-2023', '30-NOV-2023', 18000, 2018, 1400, 1600, 5, 2018, 'Koregaon Park', 'North Main Road, Koregaon Park');

INSERT INTO owner_prop VALUES (4, 108, '01-JUN-2023', '31-MAY-2024', 25000, 2020, 1800, 2000, 4, 2020, 'Jubilee Hills', 'Road No. 36, Jubilee Hills');

INSERT INTO owner_prop VALUES (7, 106, '15-MAY-2023', '14-NOV-2023', 15000, 2017, 1200, 1500, 2, 2017, 'Koramangala', '4th Block, Koramangala');

-- Res_prop
INSERT INTO res_prop VALUES (105, 3, 'Flat');

-- Comm_prop
INSERT INTO comm_prop VALUES (107, 'Shop');
INSERT INTO comm_prop VALUES (106, 'Warehouse');
INSERT INTO comm_prop VALUES (108, 'Warehouse');

INSERT INTO owner_prop VALUES (7, 109, '15-MAY-2023', '14-NOV-2023', 15000, 2017, 1200, 1500, 2, 2017, 'Koramangala', '5th Block, Koramangala');

INSERT INTO res_prop VALUES (109, 3, 'Appartment');


INSERT INTO history_prop VALUES (109, 1, '01-JAN-2023', '31-MAY-2023', 10000, 10);
INSERT INTO history_prop VALUES (109, 1, '01-JUN-2021', '31-DEC-2022', 12000, 20);
INSERT INTO history_prop VALUES (103, 2, '01-JAN-2023', '30-APR-2023', 15000, 0);
INSERT INTO history_prop VALUES (103, 2, '01-MAY-2023', '30-NOV-2023', 18000, 10);
INSERT INTO history_prop VALUES (104, 3, '01-JAN-2023', '31-MAY-2023', 20000, 5);
