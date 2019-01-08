CREATE DATABASE qlythuvien;

USE qlythuvien;
CREATE TABLE book(
	id int primary key,
    tensach varchar(50) NOT NULL,
    nxb varchar(50) NOT NULL,
    tacgia varchar(50) NOT NULL,
    namxuatban int NOT NULL,
    solanxuatban int,
    gia int,
    anh BLOB,
    id_loai int
);

CREATE TABLE category(
	id int NOT NULL,
    tenloai varchar(50)
);

CREATE TABLE borroworder(
	id int primary key,
    id_sinhvien int,
    id_sach int,
    ngaymuon date,
    thoigianmuon int,
    nosach boolean
);

CREATE TABLE student(
	id int primary key,
    tensinhvien varchar(50) NOT NULL,
    ngaysinh date,
    diachir varchar(50),
    email varchar(50),
    sdt varchar(10),
    anh BLOB
);

INSERT INTO book VALUES(1, 'sgk 1', 'Kim Dong', 'GDDT', 2018, 1, 20000, null, 1);
INSERT INTO book VALUES(2, 'tieu thuyet cuon theo chieu gio', 'Nha Nam', 'John', 2015, 2, 50000, null, 2);
INSERT INTO book VALUES(3, 'tap chi the thao', 'Kim Dong', 'BongDaPlus', 2018, 1, 40000, null, 3);

INSERT INTO category VALUES(1, 'sach hoc tap');
INSERT INTO category VALUES(2, 'tieu thuyet');
INSERT INTO category VALUES(3, 'tap chi');

INSERT INTO borroworder VALUES(1, 1, 1, 1/1/2019, 5, true);
INSERT INTO borroworder VALUES(2, 2, 1, 31/12/2018, 7, false);
INSERT INTO borroworder VALUES(3, 3, 2, 1/10/2018, 3, false);

INSERT INTO student VALUES(1, 'hoang', 6/8/1997, 'ha noi', 'abc@gmail.com', '0908070605', null);
INSERT INTO student VALUES(2, 'huy', 5/3/1992, 'ha nam', 'xyz@gmail.com', '0907060504', null);
INSERT INTO student VALUES(3, 'hung', 1/1/1997, 'ninh binh', 'qwe@gmail.com', '0906050403', null);
INSERT INTO student VALUES(4, 'tien', 20/6/1995, 'nghe an', 'asd@gmail.com', '0905040302', null);