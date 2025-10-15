DROP TABLE student;
CREATE TABLE student(
    roll NUMBER PRIMARY KEY,
    name VARCHAR2(50)
);
DROP TABLE course;
CREATE TABLE course(
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(50),
    faculty VARCHAR2(50)
);
INSERT INTO course VALUES (1, 'C', 'Srinu');
INSERT INTO course VALUES (2, 'CPP', 'Ashok');
INSERT INTO course VALUES (3, 'Java', 'Ravi');
INSERT INTO course VALUES (4, 'Python', 'Suresh');

INSERT INTO student VALUES (1, 'Ravi', 1);
INSERT INTO student VALUES (2, 'Suresh', 2);

DROP TABLE enrolments;
CREATE TABLE enrolments(
    s_id NUMBER REFERENCES student(roll),
    c_id NUMBER REFERENCES course(course_id),
    enrol_date NUMBER,
    grade VARCHAR2(1),
    PRIMARY KEY(s_id,c_id)
);
DROP TABLE faculty;
CREATE TABLE faculty(
    f_id NUMBER PRIMARY KEY,
    f_name VARCHAR2(50)
);
DROP TABLE staff_course_meeting;

CREATE TABLE staff_course_meeting (
    faculty_id INT REFERENCES faculty(f_id),
    course_id INT REFERENCES course(course_id),
    PRIMARY KEY (faculty_id, course_id)
);

