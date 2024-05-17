INSERT INTO Сотрудники (Номер_сотр, Имя_сотр, Фамилия_сотр, Отчество_сотр, Пол, Дата_рождения, Телефон, Образование) VALUES
(1, 'Иван', 'Иванов', 'Иванович', 'М', '1980-01-01', '1234567890', 'Высшее'),
(2, 'Петр', 'Петров', 'Петрович', 'М', '1985-05-15', '0987654321', 'Среднее'),
(3, 'Мария', 'Сидорова', 'Сергеевна', 'Ж', '1990-07-20', '1122334455', 'Высшее'),
(4, 'Елена', 'Кузнецова', 'Владимировна', 'Ж', '1975-10-30', '2233445566', 'Среднее'),
(5, 'Алексей', 'Федоров', 'Алексеевич', 'М', '1995-03-25', '3344556677', 'Высшее'),
(6, 'Фуфаев', 'Ярослав', 'Станиславович', 'М', '1990-03-01', '3955889', 'Высшее'),
(7, 'Акимов', 'Аким', 'Акимович', 'М', '1960-02-17', '2354678', 'Высшее'),
(8, 'Пронин', 'Василий', 'Вадимович', 'М', '1975-07-20', '5358946', 'Среднее'),
(9, 'Петров', 'Петр', 'Петрович', 'М', '1982-01-02', '3230326', 'Высшее'),
(10, 'Петренко', 'Петр', 'Иванович', 'М', '1982-01-02', '3230326', 'Высшее'),
(11, 'Петренко', 'Иван', 'Иванович', 'М', '1982-01-02', '3230326', 'Высшее'),
(12, 'Дубова', 'Галина', 'Ивановна', 'Ж', '1960-02-14', '3465789', 'Высшее'),
(13, 'Бабичев', 'Евгений', 'Иванович', 'М', '1960-06-12', '2356789', 'Среднее'),
(14, 'Нагаев', 'Дмитрий', 'Иванович', 'М', '1985-09-20', '4231112', 'Высшее'),
(15, 'Семенова', 'Ольга', 'Евгеньевна', 'Ж', '1960-06-12', '2357890', 'Среднее'),
(16, 'Сидоров', 'Павел', 'Петрович', 'М', '1960-02-07', '2346578', 'Высшее'),
(17, 'Овдиенко', 'Евгений', 'Павлович', 'М', '1980-02-02', '4387298', 'Среднее'),
(18, 'Кузнецов', 'Василий', 'Петрович', 'М', '1950-01-01', '3230000', 'Высшее'),
(19, 'Ильенко', 'Александр', 'Иванович', 'М', '1982-01-02', '3230326', 'Высшее'),
(20, 'Ильенко', 'Дмитрий', 'Иванович', 'М', '1982-01-02', '3230326', 'Высшее');

INSERT INTO Отделы (Номер_отдела, Название_отдела) VALUES
(1, 'Административно-управленческий персонал'),
(2, 'Бухгалтерия'),
(3, 'Отдел кадров'),
(4, 'Учебная часть'),
(5, 'Штат преподавателей');

INSERT INTO Должности (Номер_должности, Название_должности) VALUES
(1, 'директор'),
(2, 'зам дир по уч работе'),
(3, 'зам дир по УПР'),
(4, 'зам дир по вос раб'),
(5, 'заведующий факультет'),
(6, 'Гл бух'),
(7, 'Ст бух'),
(8, 'Бух'),
(9, 'Кассир'),
(10, 'Нач отд кадров'),
(11, 'ст инспектор'),
(12, 'Инструктор ВУС'),
(13, 'Архивариус'),
(14, 'Делопроизводитель'),
(15, 'Машинистка'),
(16, 'Секретарь-референт'),
(17, 'Завуч'),
(18, 'Секретарь'),
(19, 'Основной препод'),
(20, 'Совместитель');

INSERT INTO Штаты (Номер_отдела, Номер_должности, Кол_во_мест) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 4),
(2, 6, 1),
(2, 7, 1),
(2, 8, 3),
(2, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(3, 13, 1),
(3, 14, 1),
(3, 15, 1),
(3, 16, 1),
(4, 17, 1),
(4, 18, 1),
(5, 19, 37),
(5, 20, 19);

INSERT INTO История_работы (Номер_записи, Дата_приема, Дата_увольнения, Номер_отдела, Номер_сотр, Номер_должности) VALUES
(1, '2020-01-10', '2021-01-10', 1, 1, 1),
(2, '2021-02-15', '2023-02-15', 2, 2, 2),
(3, '2019-06-01', NULL, 4, 3, 4),
(4, '2018-09-20', '2022-09-20', 3, 4, 3),
(5, '2022-01-05', NULL, 5, 5, 5),
(6, '2002-05-30', NULL, 1, 6, 4),
(7, '2007-11-26', NULL, 1, 7, 1),
(8, '2003-02-17', NULL, 1, 8, 2),
(9, '2003-02-18', '2019-02-19', 2, 9, 9),
(10, '2003-02-18', NULL, 2, 10, 8),
(11, '2003-02-19', NULL, 2, 11, 7),
(12, '2002-01-01', NULL, 3, 12, 13),
(13, '2003-02-17', NULL, 4, 13, 17),
(14, '2005-12-01', NULL, 5, 14, 19),
(15, '2002-03-10', NULL, 5, 15, 20),
(16, '2007-11-26', NULL, 5, 16, 19),
(17, '2003-02-17', NULL, 5, 17, 19),
(18, '2003-02-18', NULL, 5, 18, 19),
(19, '2008-01-19', NULL, 5, 19, 19),
(20, '2005-11-05', '2019-11-05', 5, 20, 19);
