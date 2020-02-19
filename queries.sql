-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT Product.ProductName,
	   Category.CategoryName 
FROM Product
Join Category ON Product.CategoryId = Category.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.Id,
	   Shipper.CompanyName
from 'Order' as o
join Shipper On o.ShipVia = Shipper.Id 
WHERE o.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT Product.ProductName,
		od.Quantity 
from OrderDetail od 
join Product ON od.ProductId = Product.Id
join "Order" o ON od.OrderId = o.Id 
WHERE o.Id = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.Id as 'Order ID',
	   Customer.CompanyName as 'Company Name',
	   Employee.LastName as 'Employee Last Name'
from 'Order' o
Join Customer ON o.CustomerId = Customer.Id
Join Employee ON o.EmployeeId = Employee.Id 
