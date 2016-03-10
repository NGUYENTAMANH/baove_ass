-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:52:12.991




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV varchar(5)  NOT NULL,
    TenNV nvarchar(100)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh nvarchar(10)  NOT NULL,
    Email varchar(150)  NOT NULL,
    Mucluong money  NOT NULL,
    MaPhong varchar(5)  NOT NULL,
    TPhongban_MaPhong varchar(5)  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong varchar(5)  NOT NULL,
    Tenphong nvarchar(50)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (TPhongban_MaPhong)
    REFERENCES TPhongban (MaPhong)
;





-- End of file.

