SELECT 
  d.Name as Department,
  e.JobTitle as [Job Title],
  MIN(e.FirstName) as [First Name],
  MIN(Salary) as [Average Salary]
FROM Employees e JOIN Departments d
  ON e.DepartmentID = d.DepartmentID
GROUP BY d.Name, e.JobTitle
ORDER BY d.Name