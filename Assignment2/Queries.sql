--Joins exercise queries

--ANSWER 1 
SELECT Employee.FirstName, Employee.LastName FROM Employee INNER JOIN Orders ON Employee.EmployeeID = Orders.EmployeeID WHERE 
Orders.OrderDate BETWEEN '1996-08-15' AND '1997-08-15';

--ANSWER 2
SELECT DISTINCT(EmployeeID) FROM Orders WHERE OrderDate < '1996-10-16';

--ANSWER 3
SELECT COUNT(OrderDetails.Quantity) FROM OrderDetails INNER JOIN Orders ON Orders.OrderID = OrderDetails.OrderID WHERE Orders.OrderDate 
BETWEEN '1997-01-13' AND '1997-04-16';

--ANSWER 4
SELECT COUNT(OrderDetails.Quantity) FROM OrderDetails INNER JOIN Orders ON Orders.OrderID = OrderDetails.OrderID WHERE 
Orders.EmployeeID = (SELECT EmployeeID FROM Employee WHERE FirstName = 'Anne' AND LastName = 'Dodsworth') 
AND Orders.OrderDate BETWEEN '1997-01-13' AND '1997-04-16';

--ANSWER 5
SELECT COUNT(OrderDetails.Quantity) FROM OrderDetails INNER JOIN Orders ON Orders.OrderID = OrderDetails.OrderID WHERE 
Orders.EmployeeID = (SELECT EmployeeID FROM Employee WHERE FirstName = 'Robert' AND LastName = 'King');

--ANSWER 6
SELECT COUNT(OrderDetails.Quantity) FROM OrderDetails INNER JOIN Orders ON Orders.OrderID = OrderDetails.OrderID WHERE 
Orders.EmployeeID = (SELECT EmployeeID FROM Employee WHERE FirstName = 'Robert' AND LastName = 'King') AND 
Orders.OrderDate BETWEEN '1996-08-15' AND '1997-08-15';

--ANSWER 7
SELECT Employee.EmployeeID, Employee.FirstName + ' ' + Employee.LastName AS Name, Employee.HomePhone FROM Employee 
INNER JOIN Orders ON Employee.EmployeeID = Orders.EmployeeID WHERE Orders.OrderDate BETWEEN '1997-01-13' AND '1997-04-16';

--ANSWER 8
SELECT TOP(1) od.ProductID, p.ProductName, COUNT(od.ProductID) AS NumberOfOrders FROM Products p INNER JOIN OrderDetails od ON 
p.ProductID = od.ProductID GROUP BY od.ProductID, p.ProductName ORDER BY COUNT(*) DESC;

--ANSWER 9
SELECT TOP(5) p.ProductID, p.ProductName FROM Products p INNER JOIN OrderDetails od ON p.ProductID = od.ProductID INNER JOIN Orders o 
ON od.OrderID = o.OrderID ORDER BY o.ShipperID;

--ANSWER 10
SELECT od.UnitPrice * od.Quantity FROM OrderDetails od INNER JOIN Orders o ON od.OrderID = o.OrderID INNER JOIN Employee e 
ON o.EmployeeID = e.EmployeeID WHERE e.FirstName = 'Laura' AND e.LastName = 'Callahan' AND o.OrderDate = '1997-01-13';

--ANSWER 11
SELECT COUNT(DISTINCT o.EmployeeID) FROM Orders o INNER JOIN OrderDetails od ON o.OrderID = od.OrderID INNER JOIN Products p ON 
od.ProductID = p.ProductID WHERE p.ProductName = 'Gorgonzola Telino' OR p.ProductName = 'Gnocchi di nonna Alice' OR 
p.ProductName = 'Raclette Courdavault' OR p.ProductName = 'Camembert Pierrot' AND MONTH(o.OrderDate) = 1 AND YEAR(o.OrderDate) = 1997; 

--ANSWER 12
SELECT e.FirstName +' '+ e.LastName AS Name FROM Employee e INNER JOIN Orders o ON e.EmployeeID = o.EmployeeID INNER JOIN OrderDetails 
od ON o.OrderID = od.OrderID INNER JOIN Products p ON od.ProductID = p.ProductID WHERE p.ProductName = 'Tofu' AND o.OrderDate BETWEEN 
'1997-01-13' AND '1997-01-30';

--ANSWER 14
SELECT s.CompanyName AS ShipperName, COUNT(o.OrderID) FROM Shippers s INNER JOIN Orders o ON s.ShipperID = o.ShipperID GROUP BY s.CompanyName;

--ANSWER 15
SELECT s.CompanyName, SUM(od.Quantity) AS NumberOfProducts FROM Shippers s INNER JOIN Orders o ON s.ShipperID = o.ShipperID INNER JOIN 
OrderDetails od ON o.OrderID = od.OrderID GROUP BY s.CompanyName;

--ANSWER 16
SELECT TOP(1) s.ShipperID, s.CompanyName, COUNT(o.OrderID) AS NumberOfOrders FROM Shippers s INNER JOIN Orders o ON s.ShipperID = o.ShipperID 
GROUP BY s.ShipperID, s.CompanyName ORDER BY NumberOfOrders DESC;

--ANSWER 17
SELECT TOP(1) s.CompanyName, SUM(od.Quantity) AS NumberOfProducts FROM Shippers s INNER JOIN Orders o ON s.ShipperID = o.ShipperID INNER JOIN 
OrderDetails od ON o.OrderID = od.OrderID WHERE o.OrderDate BETWEEN '1996-08-10' AND '1998-09-20' GROUP BY s.CompanyName ORDER BY NumberOfProducts DESC;

--ANSWER 18
SELECT DISTINCT e.EmployeeID FROM Employee e INNER JOIN Orders o ON e.EmployeeID = o.EmployeeID WHERE e.EmployeeID NOT IN 
(SELECT EmployeeID FROM Orders WHERE OrderDate = '1997-04-04'); 

--ANSWER 19
SELECT COUNT(od.ProductID) FROM OrderDetails od INNER JOIN Orders o ON od.OrderID = o.OrderID INNER JOIN Employee e ON o.EmployeeID = e.EmployeeID
WHERE e.FirstName = 'Steven' AND e.LastName = 'Buchanan' GROUP BY e.FirstName;

--ANSWER 20
SELECT COUNT(o.OrderID) FROM Orders o INNER JOIN Shippers s ON o.ShipperID = s.ShipperID INNER JOIN Employee e ON o.EmployeeID = e.EmployeeID
WHERE e.FirstName = 'Michael' AND e.LastName = 'Suyama' AND s.CompanyName = 'Federal Shipping' GROUP BY s.ShipperID;

--ANSWER 21
SELECT COUNT(od.OrderID) FROM OrderDetails od INNER JOIN Products p ON od.ProductID = p.ProductID INNER JOIN Suppliers s ON 
p.SupplierID = s.SupplierID WHERE s.Country = 'UK' OR s.Country = 'Germany';

--ANSWER 22
--Doubt
/*
SELECT SUM(p.UnitPrice * p.UnitsOnOrder) AS AmountReceived FROM Products p INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID INNER JOIN 
OrderDetails od ON p.ProductID = od.ProductID INNER JOIN Orders o ON od.OrderID = o.OrderID WHERE s.CompanyName = 'Exotic Liquid' AND 
MONTH(o.OrderDate) = 1 AND YEAR(o.OrderDate) = 1997  GROUP BY s.CompanyName;
*/

--ANSWER 23
SELECT o.OrderDate FROM Orders o INNER JOIN OrderDetails od ON o.OrderID = od.OrderID INNER JOIN Products p ON od.ProductID = p.ProductID INNER JOIN
Suppliers s ON p.SupplierID = s.SupplierID WHERE MONTH(o.OrderDate) = 1 AND YEAR(o.OrderDate) = 1997 EXCEPT SELECT o.OrderDate FROM Orders o INNER JOIN OrderDetails od ON o.OrderID = od.OrderID INNER JOIN Products p ON od.ProductID = p.ProductID INNER JOIN
Suppliers s ON p.SupplierID = s.SupplierID WHERE MONTH(o.OrderDate) = 1 AND YEAR(o.OrderDate) = 1997 AND s.CompanyName = 'Tokyo Traders';

--ANSWER 24
SELECT DISTINCT(e.EmployeeID) FROM Employee e INNER JOIN Orders o ON e.EmployeeID = o.EmployeeID INNER JOIN OrderDetails od ON 
o.OrderID = od.OrderID INNER JOIN Products p ON od.ProductID = p.ProductID INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID EXCEPT 
(SELECT DISTINCT(e.EmployeeID) FROM Employee e INNER JOIN Orders o ON e.EmployeeID = o.EmployeeID INNER JOIN OrderDetails od ON 
o.OrderID = od.OrderID INNER JOIN Products p ON od.ProductID = p.ProductID INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID WHERE 
MONTH(o.OrderDate) = 5 AND s.CompanyName = 'Ma Maison');

--ANSWER 25
SELECT TOP(1) o.ShipperID, s.CompanyName AS NumberOfOrders FROM OrderDetails od INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN Shippers s ON o.ShipperID = s.ShipperID WHERE MONTH(o.OrderDate) = 9 OR MONTH(o.OrderDate) = 10 GROUP BY o.ShipperID, s.CompanyName 
ORDER BY NumberOfOrders;

--ANSWER 26
SELECT DISTINCT(p.ProductID), p.ProductName FROM Products p INNER JOIN OrderDetails od ON p.ProductID = od.ProductID INNER JOIN Orders o ON 
od.OrderID = o.OrderID EXCEPT (SELECT DISTINCT(p.ProductID), p.ProductName FROM Products p INNER JOIN OrderDetails od ON 
p.ProductID = od.ProductID INNER JOIN Orders o ON od.OrderID = o.OrderID WHERE MONTH(o.OrderDate) = 8 AND YEAR(o.OrderDate) = 1997 );

--ANSWER 27
SELECT TOP(1) o.ShipperID, s.CompanyName AS NumberOfOrders FROM OrderDetails od INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN Shippers s ON o.ShipperID = s.ShipperID WHERE (MONTH(o.OrderDate) = 4 OR MONTH(o.OrderDate) = 5 OR MONTH(o.OrderDate) = 6) AND 
(YEAR(o.OrderDate) = 1996 OR YEAR(o.OrderDate) = 1997) GROUP BY o.ShipperID, s.CompanyName ORDER BY NumberOfOrders DESC;

--ANSWER 28
SELECT TOP(1) s.Country FROM Suppliers s INNER JOIN Products p ON s.SupplierID = p.SupplierID INNER JOIN OrderDetails od ON p.ProductID = od.ProductID
INNER JOIN Orders o ON od.OrderID = o.OrderID WHERE YEAR(o.OrderDate ) = 1997 GROUP BY s.Country ORDER BY SUM(od.Quantity) DESC; 




