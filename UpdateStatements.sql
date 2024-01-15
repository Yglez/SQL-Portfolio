--UPDATE SQLTutorial.dbo.EmployeeInfo
--	SET EmployeeNum = 1011, Age = 31, Gender = 'Female'
--	WHERE FirstName = 'Holly' AND LastName = 'Flax'

--UPDATE SQLTutorial.dbo.EmployeeInfo
--	SET EmployeeNum = 1010
--	WHERE EmployeeID = 10

--UPDATE SQLTutorial.dbo.EmployeeInfo
--	SET Age = 38
--	WHERE EmployeeID = 12

UPDATE SQLTutorial.dbo.WarehouseEmployeeInfo
	SET EmployeeNum = 2004
	WHERE EmployeeID = 4

SELECT *
	FROM SQLTutorial.dbo.EmployeeInfo

SELECT *
	FROM SQLTutorial.dbo.WarehouseEmployeeInfo AS WareInfo
