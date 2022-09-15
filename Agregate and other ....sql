use Biobliteka2021
GO
--Да се изведът служителите без въведен имейл
select * from Slujiteli
where Email IS NULL
--Броя Служители, които имат имейл
select * from  Slujiteli
select ime_slujitel,count(Email)as Obshto from Slujiteli
WHERE Email IS NOT NULL
Group BY Ime_Slujitel

--Да се изведът служителите, които са извън град Варна 
select * from Slujiteli
where Grad != 'Варна'
--Да се изведът служители, които са от Варна
select * from Slujiteli
where Grad <> 'Варна' -- Друг Вариант where Grad != 'Варна' , Where grad LIKE 'Варна' - тук ще изведе и тези с нулл стойности

-- Да се пресметне броя на служителите, които нямат въведен имейл адрес и телефонен номер
select * from Slujiteli
select ime_slujitel, count(email)as Without_Email, count(telefon)as Without_Telefon from Slujiteli
where Email IS NULL OR Telefon IS NULL
group by Ime_Slujitel

--Да се направи справка, колко е общата стойност на всички заплати.
select * from Dlynosti
select sum(zaplata)as Total_SUM from Dlynosti

--Да се изведът заплатите в низходящ и възходящ ред.
select zaplata from Dlynosti
order by zaplata asc

select zaplata from Dlynosti
order by zaplata desc
  
--Използване на JOIN
-- Да се изведът всички служители според техните длъжности в библиотеката
select ime_slujitel, ime from Slujiteli join Dlynosti
on Slujiteli.dlyjnost_id = Dlynosti.id

--Изтрийте записите от студента с ид '4'
DELETE FROM Zaqvki
WHERE zaqvka_id = '11'

--Да се изведът студентите, които извършват заявки
select * from Studenti
select * from Zaqvki

select Ime_Student, count(student_id)as S from Studenti join Zaqvki
ON Studenti.ID = Zaqvki.zaqvka_id
group by Ime_Student

--Да се изведът студентите, които връщат книгата.
select Ime_student,count(student_id)as Vyrnati_Knigi from Studenti  join Zaqvki
ON Studenti.ID = Zaqvki.zaqvka_id
where data_vryshane IS NOT NULL
group by Ime_Student

--Да се изведът всички Автори, където творбата започва с И...
select * from Avtor
where Tvorba LIKE 'И%'

--Да се изведът всички вземания без 2020 година 
select * from Zaqvki
where YEAR(data_vzemane) != 2020 

--Да се изведът всички вземания само през последните 14 месеца.
select * from Zaqvki
where datediff(month,data_vzemane,getdate())<=14

--Да се изведът всички връщания през последната половин година.
select * from Zaqvki
where datediff(month,data_vryshane,getdate())<=6

--Да се изведът студентите, които са вземали книги през последната 1 година, да се изведът имената на студентите
select Ime_student from Studenti join Zaqvki
on Studenti.ID = Zaqvki.zaqvka_id
where datediff(year,data_vzemane,getdate()) <= 1
group by Ime_Student

--Да се изведът студентите, които имат въведни имейл адреси и телефонни номера.
select * from Studenti
where Email IS NOT NULL AND Telefon IS NOT NULL

select * from Zaqvki
--Да се пресметне общият брой на направените заявки от студентите.
select sum(student_id)as Obshto from Studenti join Zaqvki
ON Studenti.ID = Zaqvki.zaqvka_id

select * from Slujiteli
select * from Dlynosti
--Да се изведът 3-мата служители с най-висока заплата в нисходящ ред, без тази на управителя .
select TOP 3 Ime_Slujitel,zaplata from Slujiteli join Dlynosti
on Slujiteli.dlyjnost_id = Dlynosti.id
where ime  NOT LIKE 'Управител'
group by Ime_Slujitel,zaplata,ime
