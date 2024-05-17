SELECT 
    o.Название_отдела,
    COUNT(s.Номер_сотр) AS всего,
    SUM(CASE WHEN s.Пол = 'М' THEN 1 ELSE 0 END) AS мужчин,
    SUM(CASE WHEN s.Пол = 'Ж' THEN 1 ELSE 0 END) AS женщин
FROM Сотрудники s
INNER JOIN История_работы h ON s.Номер_сотр = h.Номер_сотр
INNER JOIN Отделы o ON h.Номер_отдела = o.Номер_отдела
WHERE h.Дата_увольнения IS NULL
GROUP BY o.Название_отдела;
