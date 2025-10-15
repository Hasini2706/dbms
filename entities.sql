DROP TABLE employee;
CREATE TABLE employee (
    e_id  NUMBER PRIMARY KEY,
    e_name VARCHAR2(50) NOT NULL,
    age NUMBER CHECK (age > 17)
);
INSERT INTO employee VALUES(1,'Alice',40);
INSERT INTO employee VALUES(2,'Bob',30);
INSERT INTO employee VALUES(3,'Charlie',25);

SELECT *FROM employee;

DROP TABLE dependent;
CREATE TABLE dependent (
    d_id NUMBER,
    d_name VARCHAR2(50),
    d_age NUMBER,
    emp_id NUMBER REFERENCES employee(e_id),
    PRIMARY KEY(emp_id,d_id)
);

INSERT INTO dependent VALUES(1,'Hasini',21,1);
INSERT INTO dependent VALUES(1,'Bheem',19,2);
INSERT INTO dependent VALUES(2,'Swarna',21,2);
INSERT INTO dependent VALUES(3,'Prasanna',49,1);
INSERT INTO dependent VALUES(2,'Sirisha',39,1);
INSERT INTO dependent VALUES(1,'Pranathi',19,3);

SELECT *FROM dependent;