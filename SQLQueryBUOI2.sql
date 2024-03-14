﻿create database QUANLYNHANSU;
use QUANLYNHANSU;
CREATE TABLE PHONGBAN(
	MAPB varchar(50) PRIMARY KEY,
	TENPB nvarchar(50)
)

CREATE TABLE NHANVIEN(
	MANV VARCHAR(50) PRIMARY KEY,
	HOTEN NVARCHAR(50),
	GIOITINH VARCHAR(30),
	LUONG MONEY,
	MAPB VARCHAR(50),
	FOREIGN KEY(MAPB) REFERENCES PHONGBAN(MAPB)
)

CREATE TABLE CHAMCONG(
	MACONG VARCHAR(50) PRIMARY KEY,
	MANV VARCHAR(50),
	THANG INT,
	SONGAYLV INT,
	NGPHEP INT,
	NGKPHEP INT,
	FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
)

--thêm cột trưởng phòng vào phòng ban
alter table PhongBan
add TRUONGPHONG VARCHAR(50);
--XÓA CỘT TRƯỞNG PHÒNG
ALTER TABLE PHONGBAN
DROP COLUMN TRUONGPHONG;
--Thay đổi dữ liệu trong bảng
ALTER TABLE PHONGBAN
ALTER COLUMN TRUONGPHONG INT;

--BIẾN 
DECLARE @CHIEUDAI INT, @CHIEURONG INT, @DIENTICH INT --khai báo biến 
SET @CHIEUDAI =5 -- gán cho biến chiều dài = 5
SET @CHIEURONG =4 -- gán cho biến chiều rông 
SET @DIENTICH = @CHIEUDAI*@CHIEURONG
SELECT @DIENTICH AS 'Diện Tích'

USE QLDA
DECLARE @MAX_LUONG FLOAT
SELECT @MAX_LUONG = MAX(LUONG) FROM NHANVIEN
SELECT @MAX_LUONG 'NHAN VIEN CO LUONG LON NHAT'
PRINT'NHAN VIEN CO LUONG LON NHAT: ' + CONVERT (CHAR(12),@MAX_LUONG)

SELECT MAX(LUONG) FROM NHANVIEN -- lấy ra lương max của bảng nhân viên 