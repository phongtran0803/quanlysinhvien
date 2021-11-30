--A. TẠO CƠ SỞ DỮ LIỆU
Create Database QuanLiSinhVien;
Use QuanLiSinhVien;
--B. TẠO BẢNG
CREATE TABLE Khoa(
MaKhoa NVARCHAR(5) PRIMARY KEY NOT NULL,
TenKhoa NVARCHAR(30)
)

Create table SinhVien(
MaSV nvarchar(30),
HoTen nvarchar(50),
MaKhoa NVARCHAR(5),
NgaySinh nvarchar(50),
GioiTinh bit,
DiaChi nvarchar(50),
constraint PK_SINHVIEN primary key (MaSV),
CONSTRAINT fk_SinhVien FOREIGN KEY(MaKhoa) REFERENCES dbo.Khoa(MaKhoa)
)

Create table BANGDIEM
(
MaSV nvarchar(30),
DiemJava float,
DiemSQL float,
DiemTB float,
constraint PK_BANGDIEM primary key (MaSV),
Constraint FK_BANGDIEM_SINHVIEN foreign key (MaSV) references SINHVIEN(MASV),
)
Select * From Khoa
Select * From SinhVien