DROP TABLE customer;
CREATE TABLE customer (
              c_id NUMBER PRIMARY KEY,
              c_name VARCHAR2(100),
              email VARCHAR2(100)
);

INSERT INTO customers VALUES(1,'Alice','alice@gmail.com');
INSERT INTO customers VALUES(2,'Bob','bob@gmail.com');
INSERT INTO customers VALUES(3,'Charlie','charlie@gmail.com');
INSERT INTO customers VALUES(4,'Diana','diana@gmail.com');

SELECT *FROM customers;
DROP TABLE products;

CREATE TABLE products (
p_id NUMBER PRIMARY KEY,
p_name VARCHAR2(10),
price NUMBER
);

INSERT INTO products VALUES(1,'Laptop',60000);
INSERT INTO products VALUES(2,'Table',8000);
INSERT INTO products VALUES(3,'Mouse',1000);
INSERT INTO products VALUES(4,'Keyboard',3000);
INSERT INTO products VALUES(5,'Tablet',36000);

CREATE TABLE orders (
ord_id NUUMBER PRIMARY KEY,
customer_id REFERENCES customer(c_id),
product_id REFERENCES products(p_id),
quantity NUMBER 
);

INSERT INTO orders VALUES(101,1,3,10);
INSERT INTO orders VALUES(102,4,1,5);
INSERT INTO orders VALUES(103,3,4,100);

