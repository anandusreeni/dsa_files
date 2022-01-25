CREATE TABLE employees (
Employee_ID VARCHAR(10) PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
Gender VARCHAR(30) NOT NULL,
Department VARCHAR(30) NOT NULL,
Salary INT NOT NULL,
DOB DATE NOT NULL,
Date_of_joining DATE NOT NULL);



INSERT INTO employees(Employee_ID,Name,Gender,Department,Salary,DOB,Date_of_joining) values 
	  ('CP0123', 'Ann Mery','F','HR',45000,str_to_date('10/OCT/1989', "%d/%b/%Y"),str_to_date('1/Jan/2018', "%d/%b/%Y")),
	  ('CP0087', 'Felix M','M','Finance',48000,str_to_date('12/Apr/1981', "%d/%b/%Y"),str_to_date('10/Dec/2000', "%d/%b/%Y")),
      ('CP0197', 'Merlin','M','CEO',80000,str_to_date('01/Mar/1990', "%d/%b/%Y"),str_to_date('10/May/2011', "%d/%b/%Y")),
      ('CP0213', 'Philip','M','Retail',47000,str_to_date('01/Apr/1991', "%d/%b/%Y"),str_to_date('11/Jun/2012', "%d/%b/%Y")),
	  ('CP0243', 'Michael','M','Retail',40000,str_to_date('01/Dec/1992', "%d/%b/%Y"),str_to_date('30/May/2016', "%d/%b/%Y")),
	  ('CP0289', 'Susan','F','Retail',40000,str_to_date('01/Jan/1991', "%d/%b/%Y"),str_to_date('01/Apr/2016', "%d/%b/%Y")),
	  ('CP0298', 'Abram','M','Relations',30000,str_to_date('17/Apr/1994', "%d/%b/%Y"),str_to_date('06/OCt/2016', "%d/%b/%Y")),
	  ('CP0300', 'Alia','F','Relations',30000,str_to_date('17/Oct/1995', "%d/%b/%Y"),str_to_date('18/OCt/2016', "%d/%b/%Y")),
	  ('CP0321', 'Raichal','F','Marketing',34000,str_to_date('09/Oct/1990', "%d/%b/%Y"),str_to_date('22/OCt/2016', "%d/%b/%Y")),
	  ('CP0276', 'Thomas','M','Marketing',44000,str_to_date('19/Nov/1983', "%d/%b/%Y"),str_to_date('22/OCt/2018', "%d/%b/%Y"));
      
      
select * from employees;

SELECT * FROM employees WHERE DEPARTMENT="MARKETING";
SELECT * FROM employees WHERE DEPARTMENT="RETAIL";
SELECT * FROM employees WHERE DEPARTMENT="HR";

CREATE TABLE female_employees
  AS (SELECT * FROM employees WHERE Gender="F");

select * from female_employees;

SELECT MAX(SALARY) AS "Maximum Salary" ,MIN(SALARY) AS "Minimum Salary",AVG(SALARY) AS "Average Salary" FROM employees;

SELECT * FROM employees where Gender="M" and Salary > 40000;
SELECT * FROM employees where Gender="F" and Salary < 45000;


SELECT * FROM employees where (Department="Marketing" or Department="Retail") and (Salary between 30000 and 60000);
