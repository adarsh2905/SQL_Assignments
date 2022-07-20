--SELECT exercise queries
--Answer 1
SELECT 
FirstName, LastName, Title, Age, Salary 
FROM Employee1;

--Answer 2
SELECT 
FirstName, Age, Salary 
FROM Employee1;

--Answer 3
SELECT 
FirstName AS Name 
FROM Employee1; 

--Answer 4
SELECT 
(FirstName+ ' ' +LastName) AS Name 
FROM Employee1; 

--WHERE exercise queries
--Answer 5
SELECT 
* 
FROM Employee1 
WHERE 
(Salary > 38000);

--Answer 6
SELECT 
FirstName, LastName 
FROM Employee1 
WHERE 
(Age < 24);

--Answer 7
SELECT 
FirstName, LastName, Salary 
FROM Employee1 
WHERE 
(Title = 'Programmer'); 

--Answer 8
SELECT 
* 
FROM Employee1 
WHERE 
LastName LIKE '%o%'; 

--Answer 9
SELECT 
LastName 
FROM Employee1 
WHERE 
FirstName = 'Kelly';

--Answer 10
SELECT 
* 
FROM Employee1 
WHERE 
LastName = 'Moore';

--Answer 11
SELECT 
* 
FROM Employee1 
WHERE 
(Age >= 35);     

--Multiple WHERE exercise queries
--Answer 12
SELECT 
FirstName, LastName, Age, Salary 
FROM Employee1 
WHERE 
(Age > 24) AND (Age < 43); 

--Answer 13
SELECT 
FirstName, Title, LastName 
FROM Employee1 
WHERE 
(Age >= 28) AND (Age <= 62) AND (Salary > 31250);  

--Answer 14
SELECT 
* 
FROM Employee1 
WHERE 
(Age < 48) AND (Salary > 21520); 

--Answer 15
SELECT 
FirstName, Age 
FROM Employee1 
WHERE 
FirstName = 'John' AND (Salary >= 25000) AND (Salary <= 35000); 

--ORDER BY exercise queries
--Answer 16
SELECT 
* 
FROM Employee1 
ORDER BY Age DESC; 

--Answer 17
SELECT 
* 
FROM Employee1 
ORDER BY Age ASC; 

--Answer 18
SELECT 
* 
FROM Employee1 
ORDER BY Salary DESC; 

--Answer 19
SELECT 
* 
FROM Employee1 
ORDER BY Salary ASC; 

--Answer 20
SELECT 
* 
FROM Employee1 
WHERE 
(AGE > 17) 
ORDER BY Salary DESC; 

--Answer 21
SELECT 
* 
FROM Employee1 
WHERE 
(AGE < 34) 
ORDER BY Salary ASC; 

--Miscellaneous exercise queries
--Answer 22
SELECT 
* 
FROM Employee1 
ORDER BY LEN(FirstName) ASC; 

--Answer 23
SELECT 
COUNT(*) AS EmployeeCount
FROM Employee1 
WHERE 
(Age > 45); 

--Answer 24
UPDATE Employee1 
SET 
Age = Age + 5, Salary = Salary - 250; 

--Answer 25
SELECT 
COUNT(*) AS EmployeeCount
FROM Employee1 
WHERE 
LastName LIKE '%re' OR LastName LIKE '%ri' OR LastName LIKE  '%ks'; 

--Answer 26
SELECT 
AVG(Salary) AS AverageSalary
FROM Employee1;

--Answer 27
SELECT 
AVG(Salary) AS AverageSalary 
FROM Employee1 
WHERE 
Title = 'Fresher';

--Answer 28
SELECT 
AVG(Age) AS AverageAge
FROM Employee1 
WHERE 
Title = 'Programmer';

--Answer 29
SELECT 
AVG(Salary) AS AverageSalary
FROM Employee1 
WHERE 
Age BETWEEN 35 AND 50;

--Answer 30
SELECT 
COUNT(*) AS NumberOfEmployees
FROM Employee1 
WHERE 
Title = 'Fresher';

--Answer 31
SELECT 
(((SELECT 
COUNT(*) 
FROM Employee1 
WHERE 
Title = 'Programmer') * 100.0 )/(COUNT(*)))
AS PercentageOfEmployees
FROM Employee1; 

--Answer 32
SELECT 
SUM(SALARY) AS SumOfSalary
FROM Employee1 
WHERE 
AGE >= 40;

--Answer 33
SELECT 
SUM(SALARY) SumOfSalary 
FROM Employee1 
WHERE 
Title = 'Fresher' OR Title = 'Prgrammer'; 

--Answer 34
SELECT 
SUM(SALARY) * 12 * 3 AS YearlyPackage
FROM Employee1 
WHERE 
Title = 'Fresher' AND (AGE > 27); 

--Sub - Queries exercise queries
--Answer 35
SELECT 
FirstName, LastName, Age 
FROM Employee1 
WHERE 
Age = (SELECT 
		MAX(Age) 
		FROM Employee1 
		WHERE 
		Salary < 35000);

--Answer 36
SELECT 
FirstName, LastName 
FROM Employee1 
WHERE 
Age = (SELECT 
		MIN(Age) 
		FROM Employee1 
		WHERE 
		Title = 'General Manager');     

--Answer 37
SELECT 
FirstName, LastName 
FROM Employee1 
WHERE Age = (SELECT 
				MAX(Age) 
				FROM Employee1 
				WHERE 
				Title = 'Fresher' AND (Salary < 35000)); 

--Answer 38
SELECT 
FirstName, Age 
FROM Employee1 
WHERE 
FirstName = 'John' OR FirstName = 'Michael' AND (Salary BETWEEN 17000 AND 26000); 

--Group By and Having By exercise queries
--Answer 39

SELECT 
Title, COUNT(Title) AS NumberOfEmployees 
FROM Employee1 
GROUP BY Title 
ORDER BY COUNT(Title) ASC; 

--Answer 40
SELECT 
Title, AVG(Salary) AS AverageSalary
FROM Employee1 
GROUP BY Title; 

--Answer 41
SELECT 
AVG(Salary) AS AverageSalary
FROM Employee1 
WHERE Title != 'Fresher'; 

--Answer 42
SELECT 
Title, AVG(Age) AS AverageAge
From Employee1 
GROUP BY Title;

--Answer 43
SELECT 
Title, COUNT(*) AS NumberOfEmployees
FROM Employee1 
WHERE 
(AGE BETWEEN 25 AND 40) 
GROUP BY Title;  

--Answer 44
SELECT 
Title, AVG(Salary) AS AverageSalary
FROM Employee1 
GROUP BY Title 
HAVING AVG(Salary) >= 25000;  

--Basic Data Modification queries 

UPDATE Employee1 
SET 
LastName = 'Moore' 
WHERE 
FirstName = 'Lisa' AND LastName = 'Ray';

UPDATE Employee1 
SET 
Age = Age + 1, Salary = Salary + 5000 
WHERE 
FirstName = 'Ginger' AND LastName = 'Finger';


UPDATE Employee1 
SET 
Title = 'Engineer' 
WHERE 
Title = 'Programmer';

UPDATE Employee1 
SET 
Salary = Salary + 3500 
WHERE 
Salary < 30000; 

UPDATE Employee1 
SET 
Salary = 0.85 * Salary 
WHERE 
Salary > 35500; 






