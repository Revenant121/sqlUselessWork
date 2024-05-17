CREATE TABLE Сотрудники (
    Номер_сотр INT PRIMARY KEY,
    Имя_сотр VARCHAR(50),
    Фамилия_сотр VARCHAR(50),
    Отчество_сотр VARCHAR(50),
    Пол CHAR(1),
    Дата_рождения DATE,
    Телефон VARCHAR(20),
    Образование VARCHAR(100)
);

CREATE TABLE Отделы (
    Номер_отдела INT PRIMARY KEY,
    Название_отдела VARCHAR(100)
);

CREATE TABLE Должности (
    Номер_должности INT PRIMARY KEY,
    Название_должности VARCHAR(100)
);

CREATE TABLE Штаты (
    Номер_отдела INT,
    Номер_должности INT,
    Кол_во_мест INT,
    PRIMARY KEY (Номер_отдела, Номер_должности),
    FOREIGN KEY (Номер_отдела) REFERENCES Отделы(Номер_отдела),
    FOREIGN KEY (Номер_должности) REFERENCES Должности(Номер_должности)
);

CREATE TABLE История_работы (
    Номер_записи INT PRIMARY KEY,
    Дата_приема DATE,
    Дата_увольнения DATE,
    Номер_отдела INT,
    Номер_сотр INT,
    Номер_должности INT,
    FOREIGN KEY (Номер_отдела) REFERENCES Отделы(Номер_отдела),
    FOREIGN KEY (Номер_сотр) REFERENCES Сотрудники(Номер_сотр),
    FOREIGN KEY (Номер_должности) REFERENCES Должности(Номер_должности)
);
