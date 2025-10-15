-- 4NF violation example
-- If a table is already in 3NF and doesn't contain
-- Any multi-valued dependencies, then it's in 4NF
CREATE TABLE aspirants
(
    a_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER,
    email VARCHAR2(50)
);

INSERT INTO aspirants (a_id, name, age, email) VALUES (101, 'Alex King', 22, 'alex@email.com');
INSERT INTO aspirants (a_id, name, age, email) VALUES (102, 'Sara Khan', 25, 'sara@email.com');
INSERT INTO aspirants (a_id, name, age, email) VALUES (103, 'Mike Chen', 19, 'mike@email.com');
INSERT INTO aspirants (a_id, name, age, email) VALUES (104, 'Lena Ortiz', 28, 'lena@email.com');

SELECT * FROM aspirants;

CREATE TABLE aspirant_interests
(
    aspirant_id NUMBER REFERENCES aspirants(a_id),
    skill VARCHAR2(50),
    hobby VARCHAR2(100)
);

INSERT INTO aspirant_interests VALUES(101, 'Java', 'Skating');
INSERT INTO aspirant_interests VALUES(101, 'Python', 'Gaming');
INSERT INTO aspirant_interests VALUES(101, 'UI/UX', 'Skating');

INSERT INTO aspirant_interests VALUES (102, 'Java', 'Reading');
INSERT INTO aspirant_interests VALUES (102, 'Java', 'Cooking');
INSERT INTO aspirant_interests VALUES (102, 'Java', 'Yoga');

INSERT INTO aspirant_interests VALUES (103, 'Design', 'Drawing');
INSERT INTO aspirant_interests VALUES (103, 'UI/UX', 'Drawing');

INSERT INTO aspirant_interests VALUES (104, 'Testing', 'Running');
INSERT INTO aspirant_interests VALUES (104, 'Leadership', 'Guitar');
INSERT INTO aspirant_interests VALUES (104, 'C++', 'Sailing');

SELECT * FROM aspirant_interests;

CREATE TABLE skills AS(
SELECT DISTINCT aspirant_id,skill FROM aspirant_interests);

SELECT *FROM skills;

ALTER TABLE skills ADD CONSTRAINT fk_id
FOREIGN KEY(aspirant_id) REFERENCES aspirants(a_id);

ALTER TABLE skills ADD CONSTRAINT pk_skill
PRIMARY KEY(aspirant_id,skill);


CREATE TABLE hobbies AS(
SELECT DISTINCT aspirant_id,hobby FROM aspirant_interests);

SELECT *FROM hobbies;

ALTER TABLE hobbies ADD CONSTRAINT fk_a_id
FOREIGN KEY(aspirant_id) REFERENCES aspirants(a_id);

ALTER TABLE hobbies ADD CONSTRAINT pk_hobby
PRIMARY KEY(aspirant_id,hobby);

DROP TABLE aspirant_interests;

