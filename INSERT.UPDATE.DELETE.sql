use Biobliteka2021
GO
--�� �� ������� ���� ������, ���� Insert 
--������� �1
insert into Avtor(Id_Avtor,ime,Tvorba)
values(12,'�. ������','���� �����')
select * from Knigi

--������� �2
insert into Knigi(Kod_Kniga,Signatura,Zaglavie,Janyr,Izdatelstvo)
values(103,103,'������� ��������','�������', NULL)
--�� �� ������� ��������� �� ���������� �� 1100�� 
Update Dlynosti
SET zaplata = '1100'
WHERE ime = '���������'


UPDATE Zaqvki
SET student_id = 5
WHERE zaqvka_id = 7

--�� �� ������ �������� "������������� ����������"
DELETE from Avtor
where Tvorba = '����  ����������'

insert into Dlynosti(id,ime,zaplata)
values(1,'���������',1200)
insert into Dlynosti(id,ime,zaplata)
values(2,'������������',900)
insert into Dlynosti(id,ime,zaplata)
values(3,'��������',850)

--�������� �� ��� ��������
insert into Slujiteli
values(9104092010,6,'������ �������','�������',NULL,NULL,0878621993)

--�� �� ������ ���� ��������
select * from Dlynosti
insert into Dlynosti(id,ime,zaplata)
values(6,'���.���������','1800')

--��������� �� ���������� ���.���������
Delete from Dlynosti
where ime = '���.���������'

--��������� �� �������� � ��� 9104092010
delete from Slujiteli
where EGN = '9104092010'
select * from Slujiteli