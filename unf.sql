--DROP TABLE students CASCADE CONSTRAINTS;
CREATE TABLE students(
    s_id NUMBER PRIMARY KEY,
    s_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) NOT NULL UNIQUE
);

INSERT INTO students VALUES
(1, 'Alice', 'alice@example.com'),
(2, 'Bob', 'bob@example.com'),
(3, 'Charlie', 'charlie@example.com'),
(4, 'Diana', 'diana@example.com');

CREATE TABLE courses(
    c_id NUMBER PRIMARY KEY,
    c_name VARCHAR2(50) NOT NULL
);

--DROP TABLE courses CASCADE CONSTRAINTS;
INSERT INTO courses VALUES
(101, 'C Programming'),
(102, 'Java'),
(103, 'Python');


DROP TABLE enrolments CASCADE CONSTRAINTS;
CREATE TABLE enrolments(
    student_id NUMBER REFERENCES students(s_id), -- FOREIGN KEY
    course_id NUMBER REFERENCES courses(c_id), -- FOREIGN KEY
    enrol_date DATE DEFAULT SYSDATE,
    price NUMBER NOT NULL,
    grade VARCHAR(1),
    duration NUMBER NOT NULL,
    s_gender VARCHAR2(50) NOT NULL
);

INSERT INTO enrolments VALUES
(1, 101, TO_DATE('15-09-2023', 'DD-MM-YYYY'), 6000, 'A', 180, 'Female'),
(3, 103, TO_DATE('21-02-2022', 'DD-MM-YYYY'), 8000, 'C', 200, 'Male'),
(4, 102, TO_DATE('27-05-2020', 'DD-MM-YYYY'), 7000, 'B', 220, 'Female'),
(1, 103, TO_DATE('06-04-2021', 'DD-MM-YYYY'), 8000, 'B', 200, 'Female'),
(2, 101, TO_DATE('31-12-2024', 'DD-MM-YYYY'), 6000, 'D', 180, 'Male'),
(2, 102, TO_DATE('15-03-2025', 'DD-MM-YYYY'), 7000, 'A', 220, 'Male'),
(1, 102, TO_DATE('29-02-2024', 'DD-MM-YYYY'), 7000, 'C', 220, 'Female');

SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrolments;

ALTER TABLE courses ADD price NUMBER;
UPDATE courses SET price=CASE 
    WHEN c_id = 101 THEN 6000
    WHEN c_id = 102 THEN 7000
    WHEN c_id = 103 THEN 8000
END;


UPDATE courses c SET price=(
    SELECT DISTINCT price FROM ENROLMENTS
    WHERE course_id=c.c_id
);

ALTER TABLE enrolments DROP COLUMN price;

SELECT * FROM courses;

ALTER TABLE courses ADD duration NUMBER;
UPDATE courses c SET duration=(
    SELECT DISTINCT duration FROM enrolments
    WHERE course_id=c.c_id
);

ALTER TABLE enrolments DROP COLUMN duration;

ALTER TABLE students ADD gender VARCHAR2(50);
UPDATE students s SET gender=(
    SELECT DISTINCT s_gender FROM enrolments
    WHERE student_id=s.s_id
);
ALTER TABLE enrolments DROP COLUMN s_gender;

SELECT *FROM enrolments;
SELECT *FROM courses;
SELECT *FROM students;