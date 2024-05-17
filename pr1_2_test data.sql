INSERT INTO Сотрудники (Номер_сотр, Имя_сотр, Фамилия_сотр, Отчество_сотр, Пол, Дата_рождения, Телефон, Образование) VALUES
(1, 'Иван', 'Иванов', 'Иванович', 'М', '1980-01-01', '1234567890', 'Высшее'),
(2, 'Петр', 'Петров', 'Петрович', 'М', '1985-05-15', '0987654321', 'Среднее'),
(3, 'Мария', 'Сидорова', 'Сергеевна', 'Ж', '1990-07-20', '1122334455', 'Высшее'),
(4, 'Елена', 'Кузнецова', 'Владимировна', 'Ж', '1975-10-30', '2233445566', 'Среднее'),
(5, 'Алексей', 'Федоров', 'Алексеевич', 'М', '1995-03-25', '3344556677', 'Высшее');

INSERT INTO Отделы (Номер_отдела, Название_отдела) VALUES
(1, 'Отдел продаж'),
(2, 'Отдел маркетинга'),
(3, 'Бухгалтерия'),
(4, 'IT отдел'),
(5, 'HR отдел');

INSERT INTO Должности (Номер_должности, Название_должности) VALUES
(1, 'Менеджер'),
(2, 'Аналитик'),
(3, 'Бухгалтер'),
(4, 'Программист'),
(5, 'HR специалист');

INSERT INTO Штаты (Номер_отдела, Номер_должности, Кол_во_мест) VALUES
(1, 1, 5),
(2, 2, 3),
(3, 3, 2),
(4, 4, 6),
(5, 5, 4);

INSERT INTO История_работы (Номер_записи, Дата_приема, Дата_увольнения, Номер_отдела, Номер_сотр, Номер_должности) VALUES
(1, '2020-01-10', '2021-01-10', 1, 1, 1),
(2, '2021-02-15', '2023-02-15', 2, 2, 2),
(3, '2019-06-01', NULL, 4, 3, 4),
(4, '2018-09-20', '2022-09-20', 3, 4, 3),
(5, '2022-01-05', NULL, 5, 5, 5);