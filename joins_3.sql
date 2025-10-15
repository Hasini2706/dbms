DROP TABLE client;
CREATE TABLE client(
    client_id NUMBER PRIMARY KEY,
    client_name VARCHAR2(100),
    contact_number VARCHAR2(15)
);

DROP TABLE projects;
CREATE TABLE projects(
    project_id NUMBER PRIMARY KEY,
    project_name VARCHAR2(100),
    dead_line DATE,
    manager VARCHAR2(100),
    c_id NUMBER REFERENCES client(client_id)
);

DROP TABLE interns;
CREATE TABLE interns(
    intern_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER,
    email VARCHAR2(100),
    p_id NUMBER REFERENCES projects(project_id)
);

INSERT INTO client VALUES(888,'Microsoft',1234565789);
INSERT INTO client VALUES(999,'Meta',987654321);
INSERT INTO client VALUES(111,'Google',1122334455);

INSERT INTO projects VALUES(1,'Excel Clone',TO_DATE('27-05-2025','DD-MM-YYYY'),'xyz',888);
INSERT INTO projects VALUES(2,'Facebook clone',TO_DATE('27-06-2027','DD-MM-YYYY'),'abc',999);
INSERT INTO projects VALUES(3,'Google Search Clone',TO_DATE('27-05-2025','DD-MM-YYYY'),'pqr',111);

INSERT INTO interns VALUES(1,'alice',18,'alice@gmail.com',1);
INSERT INTO interns VALUES(2,'bob',19,'bob@gmail.com',2);
INSERT INTO interns VALUES(3,'charlie',20,'charlie@gmail.com',3);
INSERT INTO interns VALUES(4,'david',25,'david@gmail.com',2);
INSERT INTO interns VALUES(5,'emmy',22,'emmy@gmail.com',1);




SELECT  i.name,c.client_name FROM
interns i
JOIN projects p
ON i.p_id = p.project_id
JOIN client c
ON p.c_id = c.client_id;