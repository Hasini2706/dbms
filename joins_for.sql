SELECT a.roll_number,a.name
FROM student_information a
INNER JOIN examination_marks b
ON a.roll_number = b.roll_number
GROUP BY b.roll_number
HAVING SUM(b.subject_one + b.subject_two + b.subject_three) < 100;

SELECT a.customer_id,a.name,concat("+",b.country_code,a.phone_number)
FROM customers a
LEFT join country_codes b 
ON a.country=b.country
ORDER BY a.customer_id;

SELECT roll_number,name
FROM student_information a
INNER JOIN faculty_information b
ON a.advisor = b.employee_ID
WHERE (b.gender = 'M' and b.salary>15000) or (b.gender = 'F' and b.salary>20000);

SELECT a.stock_code
FROM price_today a
INNER JOIN price_tomorrow b
ON a.stock_code = b.stock_code
WHERE b.price>a.price
ORDER BY stock_code asc;

SELECT
ei.employee_ID,
ei.name
FROM employee_information ei
JOIN last_quarter_bonus b ON b.employee_ID = ei.employee_ID
WHERE ei.division LIKE 'HR'
AND b.bonus >= 5000;