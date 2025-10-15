CREATE TABLE products(
p_id NUMBER PRIMARY KEY,p_name VARCHAR2(100),price NUMBER);

INSERT INTO products(p_id,p_name,price) VALUES(101,'Laptop',56000);
INSERT INTO products(p_id,p_name,price) VALUES(102,'Table',8000);
INSERT INTO products(p_id,p_name,price) VALUES(103,'Mouse',500);

DROP TABLE customers;
DROP TABLE products;
DROP TABLE orders;
CREATE TABLE customers(
    c_id NUMBER PRIMARY KEY,c_name VARCHAR2(100));

INSERT INTO customers VALUES (1,'Alice');
INSERT INTO customers VALUES (2,'Bob');
INSERT INTO customers VALUES (3,'Charlie');





