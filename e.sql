CREATE TABLE useee(
    id NUMBER,
    name VARCHAR2(50),
    email_id VARCHAR2(50),
    user_since DATE
);
INSERT INTO useee(id,name) VALUES(1,'hasini');
INSERT INTO useee(id,name) VALUES(2,'BHEEM');
SELECT * FROM useee;
UPDATE useee SET email_id='hasini@gmail.com' WHERE id=2;
UPDATE useee SET user_since=TO_DATE('17-MAR-1998','DD-MON-YYYY') WHERE id=1;
UPDATE useee SET user_since=TO_DATE('16-DEC-2007','DD-MON-YYYY') WHERE id=2;
SELECT * FROM useee;
ALTER TABLE useee ADD (gender VARCHAR2(6));
UPDATE useee SET gender='female' WHERE id=1;
UPDATE useee SET gender='male' WHERE id=2;
SELECT * FROM useee;
ALTER TABLE useee RENAME COLUMN name TO first_name;
ALTER TABLE useee ADD (last_name VARCHAR2(50));
UPDATE useee SET last_name='wells' WHERE id=1;
UPDATE useee SET last_name='marley' WHERE id=2;
SELECT * FROM useee;
DROP TABLE useee;






