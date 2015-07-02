SELECT e.FirstName + ' ' + e.LastName as [Full Name], e.HireDate, d.Name as [Department Name]
FROM Employees e
JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
WHERE (d.Name = 'Sales' OR d.Name = 'Finance') AND (e.HireDate BETWEEN '1995-01-01 00:00:00' AND '2005-01-01 00:00:00')