-- sqlUseless
ALTER TABLE Штаты
DROP CONSTRAINT FK_Штаты_Отделы;

ALTER TABLE Штаты
DROP CONSTRAINT FK_Штаты_Должности;

ALTER TABLE Штаты
ADD CONSTRAINT FK_Штаты_Отделы
FOREIGN KEY (Номер_отдела) REFERENCES Отделы (Номер_отдела)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE Штаты
ADD CONSTRAINT FK_Штаты_Должности
FOREIGN KEY (Номер_должности) REFERENCES Должности (Номер_должности)
ON UPDATE CASCADE
ON DELETE CASCADE;

-- forWorkLog
ALTER TABLE История_работы
DROP CONSTRAINT FK_История_работы_Отделы;

ALTER TABLE История_работы
DROP CONSTRAINT FK_История_работы_Сотрудники;

ALTER TABLE История_работы
DROP CONSTRAINT FK_История_работы_Должности;

ALTER TABLE История_работы
ADD CONSTRAINT FK_История_работы_Отделы
FOREIGN KEY (Номер_отдела) REFERENCES Отделы (Номер_отдела)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE История_работы
ADD CONSTRAINT FK_История_работы_Сотрудники
FOREIGN KEY (Номер_сотр) REFERENCES Сотрудники (Номер_сотр)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE История_работы
ADD CONSTRAINT FK_История_работы_Должности
FOREIGN KEY (Номер_должности) REFERENCES Должности (Номер_должности)
ON UPDATE CASCADE
ON DELETE CASCADE;
