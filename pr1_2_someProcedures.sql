USE [Students_2]
GO
CREATE PROCEDURE SelectDepartmentsByEmployeeCount
    @DepartmentsCount INT
AS
BEGIN
    SELECT 
        Отделы.Номер_отдела, 
        Отделы.Название_отдела
    FROM 
        Отделы
    INNER JOIN
        Штаты ON Отделы.Номер_отдела = Штаты.Номер_отдела
    WHERE 
        Штаты.Кол_во_мест = @DepartmentsCount;
END
GO

USE [Students_2]
GO
CREATE PROCEDURE ProcedureSotrudnik
    @названиеДолжности NVARCHAR(50),
    @названиеОтдела NVARCHAR(50)
AS
BEGIN
    SELECT 
        Сотрудники.*
    FROM 
        Сотрудники
    INNER JOIN
        История_работы ON Сотрудники.Номер_сотр = История_работы.Номер_сотр
    INNER JOIN
        Должности ON История_работы.Номер_должности = Должности.Номер_должности
    INNER JOIN
        Отделы ON История_работы.Номер_отдела = Отделы.Номер_отдела
    WHERE 
        Должности.Название_должности = @названиеДолжности
        AND Отделы.Название_отдела = @названиеОтдела;
END
GO
