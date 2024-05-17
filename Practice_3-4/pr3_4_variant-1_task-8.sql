CREATE VIEW Отделы_Только_Женщины AS
SELECT o.Название_отдела
FROM Отделы o
WHERE NOT EXISTS (
    SELECT 1
    FROM Сотрудники s
    INNER JOIN История_работы h ON s.Номер_сотр = h.Номер_сотр
    WHERE h.Номер_отдела = o.Номер_отдела
    AND s.Пол = 'М'
    AND h.Дата_увольнения IS NULL
);
