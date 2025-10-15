SET SERVEROUTPUT ON;

BEGIN 
    DBMS_OUTPUT.PUT_LINE('Hello World');
END;
/


BEGIN 
    DBMS_OUTPUT.PUT_LINE('Hello World');
    DBMS_OUTPUT.PUT_LINE('HASINI');
END;
/

DECLARE
   a NUMBER;
   b NUMBER;
   c NUMBER;
BEGIN
    a:=&val1;
    b:=&val2;
    c:=a+b;
    DBMS_OUTPUT.PUT_LINE('The sum is ' || c);
END;
/

DECLARE
   s NUMBER;
   ar NUMBER;
   per NUMBER;
BEGIN
    s:=&val;
    ar:=s*s;
    per:=4*s;
    DBMS_OUTPUT.PUT_LINE('The area is ' || ar);
    DBMS_OUTPUT.PUT_LINE('The perimeter is ' || per);
END;
/

DECLARE
 sal1 NUMBER;
 sal2 NUMBER;
 sal_sum NUMBER;
BEGIN
    SELECT salary INTO sal1 FROM employee WHERE id=1;
    SELECT salary INTO sal2 FROM employee WHERE id=2;
    sal_sum:=sal1+sal2;
    DBMS_OUTPUT.PUT_LINE('Sum of Salaries is: ' || sal_sum);
END;
/

DECLARE 
 num NUMBER;
 name VARCHAR2(50);
 join_date DATE;
BEGIN
    num:=4348;
    name:='Hasini';
    join_date:=CURRENT_DATE;
    DBMS_OUTPUT.PUT_LINE('nUMBER: '||num);
    DBMS_OUTPUT.PUT_LINE('Name: '||name);
    DBMS_OUTPUT.PUT_LINE('Join Date: '||join_date);
    DBMS_OUTPUT.PUT_LINE('Join Year: '||EXTRACT(YEAR FROM join_date));
END;


DECLARE
  doj DATE;
  today_date DATE;
  days NUMBER;
BEGIN
    SELECT date_joining INTO doj FROM employee WHERE id=1;
    today_date:=CURRENT_DATE;
    days:=today_date-doj;
    DBMS_OUTPUT.PUT_LINE(days);
END;
/

DECLARE 
a NUMBER;
b NUMBER;
min NUMBER;
BEGIN
    a:=&val3;
    b:=&val0;
    IF a>b THEN 
    min:=b;
    ELSE min:=a;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Minimum is ' || min);
END;
/
    
DECLARE
 n NUMBER;
 ans VARCHAR2(50);
 BEGIN
    n:=15;
    IF MOD(n,2)=0 THEN
       ans:='Even';
       ELSE ans:='odd';
       END IF;
       dbms_output.put_line(n|| ' is '||ans);
END;
/

DECLARE 
n NUMBER;
ans VARCHAR2(50);
BEGIN
    n:=&val4;
    IF n>0 THEN
       ans:='Positive';
       ELSIF n<0 THEN
       ans:='Negative';
       ELSE ans:='Zero';
       END IF;
       dbms_output.put_line(n|| ' is '||ans);
END;
/

DECLARE
 a NUMBER;
 b NUMBER;
 c NUMBER;
 max NUMBER;
BEGIN
    a:=&val3;
    b:=&val0;
    c:=&val4;
    IF a>b AND a>c THEN
     max:=a;
    ELSIF b>c AND b>a THEN
     max:=b;
     ELSE max:=c;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Maximum is ' || max);
END;
/


DECLARE
 i NUMBER;
BEGIN
    i:=1;
    WHILE i<=10 LOOP
       DBMS_OUTPUT.PUT_LINE('Number is '||i);
       i:=i+1;
    END LOOP;
END;
/

DECLARE
n NUMBER;
i NUMBER;
BEGIN
    n:=&val5;
    i:=1;
    WHILE i<=n LOOP 
     IF MOD(n,i)=0 THEN
       DBMS_OUTPUT.PUT_LINE(i);
     END IF;
     i:=i+1;
    END LOOP;
END;
/


DECLARE
  n NUMBER;
  i NUMBER;
  cnt NUMBER;
BEGIN
    n:=120;
    i:=1;
    cnt:=0;
    WHILE i<=n LOOP
        IF MOD(n,i)=0 THEN
           DBMS_OUTPUT.PUT_LINE(i || ' is a factor of '||n);
           cnt:=cnt+1;
END IF;
    i:=i+1;
END LOOP;
DBMS_OUTPUT.PUT_LINE('Total number of factors are '||cnt);
END;
/

DECLARE
    n NUMBER;
    remai NUMBER;
    rev NUMBER;
    i NUMBER;
    temp NUMBER;
BEGIN
    n:=121;
    temp:=n;
    rev:=0;
    i:=0;
    WHILE n>0 LOOP
    remai:=MOD(n,10);
    rev:=rev*10+remai;
    n:=FLOOR(n/10);
END LOOP;
IF temp=rev THEN
   DBMS_OUTPUT.PUT_LINE('Palindrome');
   ELSE DBMS_OUTPUT.PUT_LINE('Not a Palindrome');
   END IF;
END;
/

DECLARE
n NUMBER;
i NUMBER;
BEGIN
    n:=&val5;
    i:=1;
    WHILE i<=n LOOP 
     IF MOD(n,i)=0 THEN
       DBMS_OUTPUT.PUT(i);
     END IF;
     i:=i+1;
    END LOOP;
    DBMS_OUTPUT.NEW_LINE;
END;
/

BEGIN 
    FOR i IN 1..10 LOOP
    DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
/

BEGIN 
    FOR i IN REVERSE 1..10 LOOP
    DBMS_OUTPUT.PUT(i|| ' ');
    END LOOP;
    DBMS_OUTPUT.NEW_LINE();
END;
/


BEGIN 
    FOR i IN 1..5 LOOP
     FOR j IN 1..8 LOOP
       DBMS_OUTPUT.PUT(j||' ');
    END LOOP;
    DBMS_OUTPUT.NEW_LINE();
 END LOOP;
END;
/





