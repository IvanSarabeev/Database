use Biobliteka2021
GO
--Да се добавят нови Автори, чрез Insert 
--Вариант №1
insert into Avtor(Id_Avtor,ime,Tvorba)
values(12,'Д. Йоутър','Хари Потър')
select * from Knigi

--Вариант №2
insert into Knigi(Kod_Kniga,Signatura,Zaglavie,Janyr,Izdatelstvo)
values(103,103,'Втората Световна','История', NULL)
--Да се промени заплатата на управителя на 1100лв 
Update Dlynosti
SET zaplata = '1100'
WHERE ime = 'Управител'


UPDATE Zaqvki
SET student_id = 5
WHERE zaqvka_id = 7

--Да се изтрие творбата "Информационни технологии"
DELETE from Avtor
where Tvorba = 'Инфо  технологии'

insert into Dlynosti(id,ime,zaplata)
values(1,'Управител',1200)
insert into Dlynosti(id,ime,zaplata)
values(2,'Счетоводител',900)
insert into Dlynosti(id,ime,zaplata)
values(3,'Архивист',850)

--Добавяне на нов служител
insert into Slujiteli
values(9104092010,6,'Теодор Тодоров','Хасково',NULL,NULL,0878621993)

--Да се добави нова длъжност
select * from Dlynosti
insert into Dlynosti(id,ime,zaplata)
values(6,'Зам.Управител','1800')

--Изтриване на длъжността зам.управител
Delete from Dlynosti
where ime = 'Зам.Управител'

--Изтриване на служител с ЕГН 9104092010
delete from Slujiteli
where EGN = '9104092010'
select * from Slujiteli