CREATE DATABASE QL_DIEM_SV
use master
USE QL_DIEM_SV
drop database QL_DIEM_SV
--------------------------------------------------------
--------------------------------------------------------
--Tạo bảng LOGIN
create table LOGIN(
	user_id nvarchar(50) primary key,
	password nvarchar(50)
)
--Tạo bảng KHOA
create table KHOA(
	id_khoa char(10) primary key not null,
	ten_khoa nvarchar(50),
	dia_chi nvarchar(50),
	so_dien_thoai varchar(10) ,
	nam_thanh_lap int check (nam_thanh_lap <= 2021  and nam_thanh_lap >=1960)
)
--Tạo bảng MONHOC
create table MONHOC(
	id_mon char(10) primary key not null,
	ten_mon nvarchar(50),
	id_khoa char(10) references KHOA(id_khoa),
	so_tin_chi int check(so_tin_chi in ('2','3','10','8'))
)
--Tạo bảng giangvien
create table GIANGVIEN
(	id_GV char(10) primary key,
	ten_GV nvarchar(50),
	gioi_tinh bit,
	dob_gv date,
	So_dien_thoai char(10),
	quequan char(20),
	id_khoa char(10) references KHOA(id_khoa)
)
--Tạo bảng giangvien.monhoc
create table GIANGVIEN_MONHOC(
	id_mon char(10) references MONHOC(id_mon),
	id_gv char(10) references GIANGVIEN(id_gv)
	primary key(id_mon,id_gv)
)
drop table GIANGVIEN_MONHOC
--Tạo bảng LOPHOCPHAN
create table LOPHOCPHAN(
	id_lhp char(10) primary key,
	ten_lhp nvarchar(50),
	id_mon char(10),
	id_gv char(10),
	constraint FK_GV_MON foreign key(id_mon,id_gv) references GIANGVIEN_MONHOC(id_mon,id_gv),
	si_so int check(si_so <=60)
)
--Tạo bảng LOPHOC
create table LOPCQ(
	id_lop char(10) primary key,
	ten_lop nvarchar(50),
	id_khoa char(10) references KHOA(id_khoa),
	si_so int check(si_so <=60)
)
--Tạo bảng SINHVIEN
create table SINHVIEN(
	id_sv char(10) primary key,
	ten_sv nvarchar(50),
	dob_sv date,
	gioi_tinh bit,
	que_quan nvarchar(50),
	id_lop char(10) references LOPCQ(id_lop)
)
--Tạo bảng DIEMHOCPHAN
create table DIEMHOCPHAN(
	id_lhp char(10) references LOPHOCPHAN(id_lhp),
	id_sv char(10) references SINHVIEN(id_sv),
	primary key (id_sv,id_lhp),
	diem_cc float check(diem_cc > 0 and diem_cc <= 10),
	diem_gk float check(diem_gk > 0 and diem_gk <= 10),
	diem_ck float check(diem_ck > 0 and diem_ck <= 10),
	diem_tk float default null
)
--Tạo bảng Chứng chỉ
create table CHUNGCHI(
	id_cc char(10) primary key,
	ten_cc nvarchar(50)
)
create table SINHVIEN_CHUNGCHI(
	id_sv char(10) references SINHVIEN(id_sv),
	id_cc char(10) references CHUNGCHI(id_cc),
	primary key(id_sv,id_cc)
)
----Tạo bảng Chương trình đào tạo
--create table CTDT(
--	id_khoa char(10) references Khoa(id_khoa),
--	id_lop char(10) references Lophoc(id_lop),
--	id_mon char(10) references MONHOC(id_mon),
--	so_tin_chi int references TINCHI(so_tin_chi),
	
--)
--Tạo bảng DIEM_SINH_VIEN
