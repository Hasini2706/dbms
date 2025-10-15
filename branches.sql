CREATE TABLE branches(
    branch VARCHAR2(50),
    branch_code VARCHAR2(10) PRIMARY KEY NOT NULL,
    hod VARCHAR2(50) NOT NULL,
    staff_count NUMBER NOT NULL
);
DROP TABLE branches;
INSERT INTO branches VALUES('AIML','AI','M.Venkatesh',30);
INSERT INTO branches VALUES('CSE','CS','Sudharaani',50);
INSERT INTO branches VALUES('DS','DS','Ravi Kumar',40);
CREATE TABLE students(
    s_id NUMBER PRIMARY KEY,
    s_name VARCHAR2(50) NOT NULL,
    b_code VARCHAR2(10) REFERENCES branches(branch_code)
);
DROP TABLE students;
INSERT INTO students VALUES(1,'HASINI','AI');
INSERT INTO students VALUES(2,'Bheeme','DS');


