CREATE DATABASE StokTakip
GO
USE StokTakip

CREATE TABLE Kategoriler(
kategori_no int PRIMARY KEY IDENTITY(1,1),
kategori VARCHAR(20) UNIQUE NOT NULL
)

INSERT INTO Kategoriler VALUES
('OTOMOBÝL'),
('BÝLGÝSAYAR'),
('BAHÇE'),
('EV'),
('MUTFAK')

CREATE TABLE Otomobil(
otomobil_no int PRIMARY KEY IDENTITY(1,1),
otomobil_marka VARCHAR(20) UNIQUE NOT NULL,
kategori_no CHAR(2) NOT NULL
)

INSERT INTO Otomobil VALUES
('Audi', 1),
('Citroen', 1),
('BMW', 1),
('Ford', 1),
('Mercedes', 1)

CREATE TABLE Model(
model_no INT PRIMARY KEY IDENTITY(1,1),
model_ad VARCHAR(20) NOT NULL,
otomobil_no CHAR(2) NOT NULL
)

INSERT INTO Model VALUES
('A1', 1),
('A2', 1),
('C1', 2),
('3.20', 3),
('FOCUS', 4),
('E250', 5)

CREATE TABLE Yillari(
yil_no INT PRIMARY KEY IDENTITY(1,1),
yil VARCHAR(4) NOT NULL,
model_no CHAR(2) NOT NULL
)

INSERT INTO Yillari VALUES
('2015', 1),
('2020', 2),
('2016', 3),
('2017', 4),
('2018', 5),
('2019', 6)

CREATE TABLE Parcalari(
parca_no INT PRIMARY KEY IDENTITY(1,1),
parca_ad VARCHAR(20) NOT NULL,
yil_no CHAR(2) NOT NULL
)

INSERT INTO Parcalari VALUES
('KAROSER', 1),
('TEKERLEK', 1),
('TEKERLEK', 2),
('FREN DÝSKÝ', 3),
('EGZOZ', 4),
('DÝREKSÝYON', 5),
('KOLTUK', 6)