--SELECT TOP (1000) 
--	[EmployeeID],
--	[EmployeeNum],
--	[JobTitle],
--	[Salary]
--  FROM [SQLTutorial].[dbo].[EmployeeSalary]

--SELECT * FROM [SQLTutorial].[dbo].[EmployeeSalary]

--SELECT DISTINCT(JobTitle) FROM [SQLTutorial].[dbo].[EmployeeSalary]

--SELECT COUNT(JobTitle)
--FROM [SQLTutorial].[dbo].[EmployeeSalary]

--SELECT * FROM [SQLTutorial].[dbo].[EmployeeInfo]

--SELECT COUNT(FirstName) AS FirstNameCount
--FROM [SQLTutorial].[dbo].[EmployeeInfo]

--SELECT COUNT(DISTINCT(Gender)) AS GenderCount
--FROM [SQLTutorial].[dbo].[EmployeeInfo]

--SELECT MAX(Salary) AS MaxSalary
--FROM [SQLTutorial].[dbo].[EmployeeSalary]

--SELECT MIN(Salary) AS MinSalary
--FROM [SQLTutorial].[dbo].[EmployeeSalary]

--SELECT AVG(Salary) AS AverageSalary
--FROM [SQLTutorial].[dbo].[EmployeeSalary]

--SELECT * 
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE FirstName = 'Jim'

--SELECT * 
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE FirstName <> 'Jim'

--SELECT * 
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE Age > 30

--SELECT * 
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE Age > 30 AND Gender = 'Male'

--SELECT * 
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE Age > 30 OR Gender = 'Male'

--SELECT * 
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE LastName LIKE 'S%'

--SELECT * 
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE LastName LIKE '%H%'

--SELECT * 
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE LastName LIKE 'S%o%'

--SELECT * 
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE FirstName IS NULL

--SELECT * 
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE FirstName IS NOT NULL

--SELECT * 
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE FirstName IN ('Jim', 'Pam')

--SELECT Gender, COUNT(Gender) AS GenderCount
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	GROUP BY Gender

--SELECT Gender, Age, COUNT(Gender) AS GenderCount
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	GROUP BY Gender, Age

--SELECT Gender, COUNT(Gender) AS GenderCount
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE Age > 30
--	GROUP BY Gender
--	ORDER BY GenderCount

--SELECT Gender, COUNT(Gender) AS GenderCount
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	WHERE Age > 30
--	GROUP BY Gender
--	ORDER BY GenderCount DESC

--SELECT *
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	ORDER BY Age

--SELECT *
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	ORDER BY Age, LastName

--SELECT *
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]
--	ORDER BY Age DESC, LastName DESC

--SELECT *
--	FROM [SQLTutorial].[dbo].[EmployeeInfo]

--SELECT *
--FROM [SQLTutorial].[dbo].[EmployeeSalary]

--SELECT *
--	FROM SQLTutorial.dbo.EmployeeInfo
--	INNER JOIN SQLTutorial.dbo.EmployeeSalary
--		ON EmployeeInfo.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--	FROM SQLTutorial.dbo.EmployeeInfo
--	LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--		ON EmployeeInfo.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--	FROM SQLTutorial.dbo.EmployeeInfo
--	RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--		ON EmployeeInfo.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--	FROM SQLTutorial.dbo.EmployeeInfo
--	FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--		ON EmployeeInfo.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeInfo.EmployeeID, FirstName, LastName, Salary
--	FROM SQLTutorial.dbo.EmployeeInfo
--	FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--		ON EmployeeInfo.EmployeeID = EmployeeSalary.EmployeeID
--	WHERE FirstName <> 'Michael'
--	ORDER BY Salary DESC

--SELECT JobTitle, AVG(Salary) AS AverageSalary
--	FROM SQLTutorial.dbo.EmployeeInfo
--	FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--		ON EmployeeInfo.EmployeeID = EmployeeSalary.EmployeeID
--	WHERE JobTitle <> 'Salesman'
--	GROUP BY JobTitle
--	ORDER BY AverageSalary DESC

--SELECT *
--	FROM SQLTutorial.dbo.EmployeeInfo
--	FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--		ON EmployeeInfo.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--	FROM SQLTutorial.dbo.EmployeeInfo
--UNION
--SELECT *
--  FROM SQLTutorial.dbo.WarehouseEmployeeInfo

--SELECT *
--	FROM SQLTutorial.dbo.EmployeeInfo
--UNION
--SELECT *
--  FROM SQLTutorial.dbo.WarehouseEmployeeInfo
-- ORDER BY EmployeeID

--SELECT FirstName, LastName, Age,
--	CASE
--		WHEN Age > 30 THEN 'Old'
--		ELSE 'Young'
--	END AS 'AgeType'
--	FROM SQLTutorial.dbo.EmployeeInfo
--	WHERE Age IS NOT NULL
--	ORDER BY Age

--SELECT FirstName, LastName, Age,
--	CASE
--		WHEN Age > 30 THEN 'Old'
--		WHEN Age BETWEEN 27 AND 30 THEN 'Young'
--		ELSE 'Baby'
--	END AS 'AgeType'
--	FROM SQLTutorial.dbo.EmployeeInfo
--	WHERE Age IS NOT NULL
--	ORDER BY Age

--SELECT FirstName, LastName, JobTitle, Salary,
--	CASE
--		WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
--		WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
--		WHEN JobTitle = 'HR' THEN Salary + (Salary * .01)
--		ELSE Salary + (Salary * .03)
--	END AS 'NewSalary'
--	FROM SQLTutorial.dbo.EmployeeInfo
--	JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeInfo.EmployeeID = EmployeeSalary.EmployeeID
--	ORDER BY Salary DESC

--SELECT JobTitle, COUNT(JobTitle) AS JobTitleCount
--	FROM SQLTutorial.dbo.EmployeeInfo
--	FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeInfo.EmployeeID = EmployeeSalary.EmployeeID
--	GROUP BY JobTitle
--	ORDER BY JobTitleCount DESC

--SELECT JobTitle, COUNT(JobTitle) AS JobTitleCount
--	FROM SQLTutorial.dbo.EmployeeInfo
--	FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeInfo.EmployeeID = EmployeeSalary.EmployeeID
--	GROUP BY JobTitle
--	HAVING COUNT(JobTitle) > 1
--	ORDER BY JobTitleCount DESC

--SELECT FirstName + ' ' + LastName AS FullName
--	FROM SQLTutorial.dbo.EmployeeInfo

--SELECT * FROM(
--	SELECT * FROM SQLTutorial.dbo.EmployeeInfo
--		UNION ALL
--	SELECT * FROM SQLTutorial.dbo.WarehouseEmployeeInfo
--	) AS AllEmplInfo
--	FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary AS SalInfo
--		ON AllEmplInfo.EmployeeNum = SalInfo.EmployeeNum

SELECT AllEmplInfo.EmployeeID, AllEmplInfo.EmployeeNum, AllEmplInfo.FirstName, AllEmplInfo.LastName, AllEmplInfo.Age, AllEmplInfo.Gender, SalInfo.JobTitle, SalInfo.Salary FROM(
	SELECT * FROM SQLTutorial.dbo.EmployeeInfo
		UNION ALL
	SELECT * FROM SQLTutorial.dbo.WarehouseEmployeeInfo
	) AS AllEmplInfo
	FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary AS SalInfo
		ON AllEmplInfo.EmployeeNum = SalInfo.EmployeeNum