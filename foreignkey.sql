CREATE TABLE courses(
    c_id NUMBER PRIMARY KEY,
    c_name VARCHAR2(50) NOT NULL, 
    price NUMBER NOT NULL , 
    duration NUMBER NOT NULL
);
--DROP TABLE courses;
INSERT INTO courses VALUES(101,'C Programming',6000,180);
INSERT INTO courses VALUES(102,'JAVA',7000,220);
INSERT INTO courses VALUES(103,'Python',8000,200);
SELECT * FROM courses;
CREATE TABLE student(
    s_id NUMBER PRIMARY KEY,
    s_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    age NUMBER CHECK(age >= 17 AND age<=100),
    course_id NUMBER REFERENCES courses(c_id)
);
DROP TABLE student;
SELECT constraint_name,constraint_type --P->PRIMARY KEY, U->UNIQUE, C->CHECK,R->REFERENCE (FOREIGN KEY)
FROM USER_CONSTRAINTS
WHERE table_name = 'STUDENT';
INSERT INTO student VALUES(1,'hasini','hasini@gmail.com',19,101);
INSERT INTO student VALUES(2,'Bheeme','Bheeme@gmail.com',29,105);


