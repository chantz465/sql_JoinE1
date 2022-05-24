/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
-- select P.Name, C.Name
-- left Join categories c 
-- On P.CategoryID = From Products p 
-- C.CategoryID
-- Where P.CategoryID = 1;
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
-- select p.Name, p.Price, r.Rating
-- from reviews As r 
-- Right Join products As p
-- On r.ProductID = p.ProductID
-- Where R.Rating = 5;



 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
-- Select e.FirstName, e.Lastname, SUM(s.Quantity) As 'Total'
-- From sales As s
-- Inner Join employees AS e 
-- on s.EmployeeID = e.EmployeeID
-- Group BY e.EmployeeID
-- Order By Total Desc 
-- Limit 2;



/* joins: find the name of the department, and the name of the category for Appliances and Games */
-- Select d.Name as Department, c.Name AS Category
-- From departments d 
-- Inner Join categories c 
-- on C.DepartmentID = d.DepartmentID
-- Where c.Name = 'games' Or c.Name = 'applinces';


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 
-- Select p.Name, Sum(s.Quantity) As 'Total Sold', Sum(s.Quantity * s.PricePerUnit) As 'Total sales'
-- From products As p
-- Inner Join sales AS s
-- On S.ProductID = p.ProductID
-- Where p.ProductID = 97;
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

Select p.Name AS 'Product name', r.Reviewer, r.Rating, r.Comment
From reviews r 
Inner Join products p 
On p.ProductID = r.ProductID
Where p.ProductID = 857 AND r.Rating = 1;
