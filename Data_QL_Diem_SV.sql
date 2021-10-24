use QL_DIEM_SV
--PHẦN DỮ LIỆU
--BẢNG LOGIN
INSERT INTO LOGIN VALUES('admin','password')

--BẢNG KHOA
INSERT INTO KHOA VALUES 
	('KHMT','Khoa hoc may tinh','P1002','0123456788',2008),
	('DT','Dau tu','P1003','0123456787',2008),
	('CNTT','Cong nghe thong tin','P1000','0123456789',2008),
	('QTKD','Quan tri kinh doanh','P1001','0123456787',1980)
delete KHOA
use master
--BẢNG MONHOC
INSERT INTO MONHOC VALUES 
	('CNTT1','Nhap mon cong nghe thong tin','CNTT',3),
	('CNTT2','Lap trinh C++','CNTT',3),
	('KHMT1','Tri tue nhan tao','KHMT',3),
	('KHMT2','Lap trinh khoa hoc du lieu','KHMT',3),
	('QTKD1','Marketing can ban','QTKD',3),
	('QTKD2','Marketing nang cao','QTKD',3),
	('DT1','Nhap mon dau tu','DT',3),
	('DT2','Quan tri nhan luc','DT',3)
delete MONHOC
--Bảng giangvien
insert into GIANGVIEN values
	('GV1','Dang Minh Quan',1,'1977-1-1','0912345678','Ha Noi','CNTT'),
	('GV2','Cao Thi Thu Huong',0,'1985-1-1','0912345676','Nam Dinh','CNTT'),
	('GV3','Luu Minh Tuan',1,'1980-1-1','0912345672','Nam Dinh','KHMT'),
	('GV4','Pham Minh Hoan',1,'1979-1-1','0912345674','Nam Dinh','CNTT'),
	('GV5','Nguyen Thi Chinh',0,'1985-1-1','0912345666','Vinh Phuc','QTKD'),
	('GV6','To Thi Thien Huong',0,'1982-1-1','0912345665','Bac Ninh','QTKD'),
	('GV7','Nguyen Minh Ngoc',0,'1977-1-1','0912345662','Nghe An','DT'),
	('GV8','Nguyen Thi Chinh',0,'1985-1-1','0912345661','Thanh Hoa','DT')
--BẢNG LOPCQ
INSERT INTO LOPCQ VALUES
	('CNTT61A','Cong nghe thong tin 61A','CNTT',50),
	('KHMT61','Khoa hoc may tinh 61','KHMT',50),
	('DT58','Dau tu 58','DT',50),
	('QTKD59B','Quan tri kinh doanh 59B','QTKD',50)
--Bảng giangvien.monhoc
insert into GIANGVIEN_MONHOC values
	('CNTT1','GV1'),
	('CNTT2','GV2'),
	('KHMT1','GV3'),
	('KHMT2','GV4'),
	('QTKD1','GV5'),
	('QTKD2','GV6'),
	('DT1','GV7'),
	('DT2','GV8')
--Bảng lophocphan
insert into LOPHOCPHAN values
	('CNTT1_1','Nhap mon cong nghe thong tin(220)_01','CNTT1','GV1',50),
	('CNTT2_1','Lap trinh C++(220)_01','CNTT2','GV2',50),
	('KHMT1_1','Tri tue nhan tao','KHMT1','GV3',50),
	('KHMT2_1','Lap trinh khoa hoc du lieu(219)_01','KHMT2','GV4',50),
	('QTKD1_1','Marketing can ban(219)_01','QTKD1','GV5',50),
	('DT1_1','Nhap mon dau tu(221)_01','DT1','GV7',50),
	('DT2_1','Quan tri nhan luc(221)_01','DT2','GV8',50)
--Bang diemhocphan
insert into DIEMHOCPHAN values
(),
--BẢNG SINHVIEN
--Bang chungchi
insert into CHUNGCHI values
('CC1','Chung chi tin hoc'),
('CC2','Chung chi tieng anh'),
('CC3','Chung chi quoc phong')
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--SELECT DỮ LIỆU
select *from LOGIN
select *from KHOA
select *from MONHOC
select *from LOPHOC
select *from SINHVIEN
select *from DIEMHOCPHAN