CREATE TABLE ppl( 
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    email VARCHAR2(50) UNIQUE,
    age NUMBER CHECK (age > 0 AND age < 120)
);
DESC ppl;
DROP TABLE ppl;
INSERT INTO  ppl VALUES(1,'Alice','alice@gmail.com',18);
INSERT INTO  ppl VALUES(2,'bob','bob@gmail.com',25);
INSERT INTO ppl users(id,email,age) VALUES(3,'charlie@gmail.com',3195);
SELECT * FROM ppl;
SELECT constraint_name,constraint_type --P-PRIMARY KEY, U-UNIQUE, C-CHECK,R->REFERENCE (FOREIGN KEY)
FROM USER_CONSTRAINTS
WHERE table_name = 'PPL';

