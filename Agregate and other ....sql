use Biobliteka2021
GO
--�� �� ������� ����������� ��� ������� �����
select * from Slujiteli
where Email IS NULL
--���� ���������, ����� ���� �����
select * from  Slujiteli
select ime_slujitel,count(Email)as Obshto from Slujiteli
WHERE Email IS NOT NULL
Group BY Ime_Slujitel

--�� �� ������� �����������, ����� �� ����� ���� ����� 
select * from Slujiteli
where Grad != '�����'
--�� �� ������� ���������, ����� �� �� �����
select * from Slujiteli
where Grad <> '�����' -- ���� ������� where Grad != '�����' , Where grad LIKE '�����' - ��� �� ������ � ���� � ���� ���������

-- �� �� ��������� ���� �� �����������, ����� ����� ������� ����� ����� � ��������� �����
select * from Slujiteli
select ime_slujitel, count(email)as Without_Email, count(telefon)as Without_Telefon from Slujiteli
where Email IS NULL OR Telefon IS NULL
group by Ime_Slujitel

--�� �� ������� �������, ����� � ������ �������� �� ������ �������.
select * from Dlynosti
select sum(zaplata)as Total_SUM from Dlynosti

--�� �� ������� ��������� � �������� � �������� ���.
select zaplata from Dlynosti
order by zaplata asc

select zaplata from Dlynosti
order by zaplata desc
  
--���������� �� JOIN
-- �� �� ������� ������ ��������� ������ ������� ��������� � ������������
select ime_slujitel, ime from Slujiteli join Dlynosti
on Slujiteli.dlyjnost_id = Dlynosti.id

--�������� �������� �� �������� � �� '4'
DELETE FROM Zaqvki
WHERE zaqvka_id = '11'

--�� �� ������� ����������, ����� ��������� ������
select * from Studenti
select * from Zaqvki

select Ime_Student, count(student_id)as S from Studenti join Zaqvki
ON Studenti.ID = Zaqvki.zaqvka_id
group by Ime_Student

--�� �� ������� ����������, ����� ������ �������.
select Ime_student,count(student_id)as Vyrnati_Knigi from Studenti  join Zaqvki
ON Studenti.ID = Zaqvki.zaqvka_id
where data_vryshane IS NOT NULL
group by Ime_Student

--�� �� ������� ������ ������, ������ �������� ������� � �...
select * from Avtor
where Tvorba LIKE '�%'

--�� �� ������� ������ �������� ��� 2020 ������ 
select * from Zaqvki
where YEAR(data_vzemane) != 2020 

--�� �� ������� ������ �������� ���� ���� ���������� 14 ������.
select * from Zaqvki
where datediff(month,data_vzemane,getdate())<=14

--�� �� ������� ������ �������� ���� ���������� ������� ������.
select * from Zaqvki
where datediff(month,data_vryshane,getdate())<=6

--�� �� ������� ����������, ����� �� ������� ����� ���� ���������� 1 ������, �� �� ������� ������� �� ����������
select Ime_student from Studenti join Zaqvki
on Studenti.ID = Zaqvki.zaqvka_id
where datediff(year,data_vzemane,getdate()) <= 1
group by Ime_Student

--�� �� ������� ����������, ����� ���� ������� ����� ������ � ��������� ������.
select * from Studenti
where Email IS NOT NULL AND Telefon IS NOT NULL

select * from Zaqvki
--�� �� ��������� ������ ���� �� ����������� ������ �� ����������.
select sum(student_id)as Obshto from Studenti join Zaqvki
ON Studenti.ID = Zaqvki.zaqvka_id

select * from Slujiteli
select * from Dlynosti
--�� �� ������� 3-���� ��������� � ���-������ ������� � �������� ���, ��� ���� �� ���������� .
select TOP 3 Ime_Slujitel,zaplata from Slujiteli join Dlynosti
on Slujiteli.dlyjnost_id = Dlynosti.id
where ime  NOT LIKE '���������'
group by Ime_Slujitel,zaplata,ime
