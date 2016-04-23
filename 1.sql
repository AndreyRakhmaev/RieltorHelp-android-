--
-- ���� ������������ � ������� SQLiteStudio v3.0.7 � �� ��� 21 19:33:38 2016
--
-- �������������� ��������� ������: windows-1251
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- �������: ArendImage
CREATE TABLE ArendImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, �������� BLOB, ����� STRING, ArendID INTEGER REFERENCES Arend (ID) ON DELETE CASCADE);

-- �������: ArendRoom
CREATE TABLE ArendRoom (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, ������� STRING (0, 30), ϲ� STRING, ����_����� STRING, ���_������ STRING, ʳ������_ʳ���� STRING, ����� STRING, ������ STRING, ������ STRING, ����� STRING, ���� STRING, �������� STRING, ���� STRING, ����_������ STRING, ��������_������ STRING, ������_������ STRING, ���_��������� STRING, ���_ʳ����� STRING, ���_���� STRING, ֳ����� INTEGER, ֳ����� INTEGER, �������� STRING);

-- �������: EarthSellImage
CREATE TABLE EarthSellImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, �������� BLOB, ����� STRING, EarthSellID INTEGER REFERENCES EarthSell (ID) ON DELETE CASCADE);

-- �������: KVsell
CREATE TABLE KVsell (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, ������� STRING, ϲ� STRING, ����_����� STRING, ����� STRING, ������ STRING, ʳ������_����� STRING, ʳ������_�������� STRING, ���_����� STRING, ���_������� STRING, ��������_����� STRING, �����_������� STRING, �����_���� STRING, �������� STRING, ����_�������� STRING, ���� STRING, ֳ����� INTEGER, ֳ����� INTEGER, �������� STRING);

-- �������: ArendPrimImage
CREATE TABLE ArendPrimImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, �������� BLOB, ����� STRING, ArendPrimID INTEGER REFERENCES ArendPrim (ID) ON DELETE CASCADE);

-- �������: PrimSellImage
CREATE TABLE PrimSellImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, �������� BLOB, ����� STRING, PrimSellID INTEGER REFERENCES PrimSell (ID) ON DELETE CASCADE);

-- �������: ArendRoomImage
CREATE TABLE ArendRoomImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, �������� BLOB, ����� STRING, ArendRoomID INTEGER REFERENCES ArendRoom (ID) ON DELETE CASCADE);

-- �������: Arend
CREATE TABLE Arend (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, ������� STRING, ϲ� STRING, ����_����� STRING, ʳ������_����� STRING, ���_����� STRING, ����� STRING, ������ STRING, ������ STRING, ����� STRING, ���� STRING, �������� STRING, ���� STRING, ������_����� STRING, ��������_������ STRING, ������_������ STRING, ֳ����� INTEGER, ֳ����� INTEGER, �������� STRING);

-- �������: HostelSell
CREATE TABLE HostelSell (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, ������� STRING, ϲ� STRING, ����_����� STRING, ����� STRING, ������ STRING, �������_���������� STRING, ʳ������_�������� STRING, ���_������� STRING, ��������_����� STRING, ���� STRING, �������� STRING, ��������_����� STRING, ֳ����� INTEGER, ֳ����� INTEGER, �������� STRING);

-- �������: KVsellImage
CREATE TABLE KVsellImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, �������� BLOB, ����� STRING, KVsellID INTEGER REFERENCES KVsell (ID) ON DELETE CASCADE);

-- �������: EarthSell
CREATE TABLE EarthSell (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, ������� STRING, ϲ� STRING, ����_����� STRING, ������_����_��� STRING, ������ STRING, ³������_�� INTEGER, ��������_����� STRING, ����������_������ STRING, ��������� STRING, ���������_������ STRING, ����������_����� STRING, ����������_�����_������ STRING, ���_ĳ����� STRING, ֳ����� INTEGER, ֳ����� INTEGER, �������� STRING);

-- �������: ArendPrim
CREATE TABLE ArendPrim (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, ������� STRING, ϲ� STRING, ����_����� STRING, ����� STRING, ������ STRING, ���_����� STRING, ���_��������� STRING, ���_����� STRING, ������������ STRING, ʳ���_�������� STRING, ����� STRING, ʳ������_ʳ���� STRING, ���� STRING, �������� STRING, ֳ����� INTEGER, ֳ����� INTEGER, �������� STRING);

-- �������: HostelSellImage
CREATE TABLE HostelSellImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, �������� BLOB, ����� STRING, HostelSellID INTEGER REFERENCES HostelSell (ID) ON DELETE CASCADE);

-- �������: PrimSell
CREATE TABLE PrimSell (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, ������� STRING, ϲ� STRING, ����_����� STRING, ����� STRING, ������ STRING, ���_����� STRING, ���_��������� STRING, ���_����� STRING, ������������ STRING, ʳ���_�������� STRING, ����� STRING, ʳ������_ʳ���� STRING, ���� STRING, �������� STRING, ֳ����� INTEGER, ֳ����� INTEGER, �������� STRING);

-- �������: HouseSell
CREATE TABLE HouseSell (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, ������� STRING, ϲ� STRING, ����_����� STRING, ������_����_��� STRING, �����_������ STRING, ³�����_��_���� INTEGER, �����_���� STRING, �����_������� STRING, ���_������� STRING, �����������_�����_������ STRING, ���������� STRING, ������_���������� STRING, ��������� STRING, ���������_������ STRING, ֳ����� INTEGER, ֳ����� INTEGER, �������� STRING);

-- �������: HouseSellImage
CREATE TABLE HouseSellImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, �������� BLOB, ����� STRING, houseSellID INTEGER REFERENCES HouseSell (ID) ON DELETE CASCADE);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
