DECLARE @TargetEmployeeID INT = 102;

SELECT DISTINCT s.Фамилия_сотр
FROM Сотрудники s
INNER JOIN История_работы h ON s.Номер_сотр = h.Номер_сотр
WHERE YEAR(h.Дата_приема) = (SELECT YEAR(Дата_приема) FROM История_работы WHERE Номер_сотр = @TargetEmployeeID);
