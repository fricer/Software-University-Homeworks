ALTER TABLE Employees
DROP CONSTRAINT FK_Employees_Employees
GO
ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Employees FOREIGN KEY (ManagerID)
REFERENCES Employees(EmployeeID)
ON DELETE CASCADE
ON UPDATE NO ACTION
GO
 
BEGIN TRY
    BEGIN TRANSACTION
       
    COMMIT
END TRY
BEGIN CATCH
 
    IF @@TRANCOUNT > 0
        ROLLBACK
END CATCH