SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION add_two(a NUMBER,b NUMBER) return number IS
c NUMBER;
BEGIN
    c:=a+b;
    RETURN c;
END;
/

Select add_two(100,200) FROM dual;

DECLARE
res NUMBER;
BEGIN
    res:=add_two(200,300);
    DBMS_OUTPUT.PUT_LINE(res);
END;
/


-- CREATE OR REPLACE FUNCTION max(a NUMBER,b NUMBER,c NUMBER) RETURN NUMBER IS
-- d NUMBER;
-- BEGIN
--     IF a>b and a>c THEN 
--     max:=a;
--     ELSE IF b>a and b>c THEN 
--     max:=b;
--     ELSE max:=c;
--     END IF;
--     return max;
-- END;
-- /


--Create and call a PL/SQL function that takes 3 integers and returns the maximum of them

    