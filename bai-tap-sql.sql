CREATE DATABASE QuanLySinhVien;
USE QuanLySinhVien;

--Tạo bảng Khoa :

CREATE TABLE KHOA
(
	MaKhoa CHAR(10) PRIMARY KEY,
	TenKhoa NVARCHAR(30),
	DienThoai CHAR(10)
)
--Tạo bảng Giảng Viên :
CREATE TABLE GIANGVIEN
(
	MaGV INT PRIMARY KEY,
	HoTenGV NVARCHAR(50),
	Luong DECIMAL(5,2),
	MaKhoa CHAR(10) FOREIGN KEY REFERENCES KHOA
)

--Tạo bảng Sinh Viên :
CREATE TABLE SINHVIEN
(
	MaSV INT PRIMARY KEY,
	HoTenSV CHAR(40),
	MaKhoa CHAR(10) FOREIGN KEY REFERENCES KHOA,
	NamSinh INT,
	QueQuan NVARCHAR(30)
)
--Tạo bảng Đề Tài :
CREATE TABLE DETAI
(
	MaDT CHAR(10) PRIMARY KEY,
	TenDT NVARCHAR(100),
	KinhPhi INT,
	NoiThucTap NVARCHAR(100)
)
--Tạo bảng Hướng Dẫn :
CREATE TABLE HUONGDAN
(
	MaSV INT PRIMARY KEY,
	MaDT CHAR(10) FOREIGN KEY REFERENCES DETAI,
	MaGV INT FOREIGN KEY REFERENCES GIANGVIEN,
	KetQua DECIMAL(5,2)
)
--Nhập dữ liệu cho từng bảng  :
--Thêm dữ liệu vào bảng Khoa :
INSERT INTO KHOA VALUES ('cntt', N'công nghệ thông tin', 3855412)
INSERT INTO KHOA VALUES ('dc', N'địa chất', 3855413)
INSERT INTO KHOA VALUES ('dtvt', N'điện tử - viễn thông', 3855414)
INSERT INTO KHOA VALUES ('hh', N'hóa học', 3855415)
INSERT INTO KHOA VALUES ('cnvl', N'khoa học và công nghệ vật liêu', 3855416)
INSERT INTO KHOA VALUES ('mt', N'môi trường', 3855417)
INSERT INTO KHOA VALUES ('sh', N'sinh học và công nghệ sinh học', 3855418)
INSERT INTO KHOA VALUES ('tt', N'toán - tin học', 3855419)
INSERT INTO KHOA VALUES ('vl', N'vật lý và vật lý kỹ thuật', 3855410)

--Thêm dữ liệu vào bảng Giảng Viên :
INSERT INTO GIANGVIEN VALUES (10001, N'Nguyễn Mạnh Thiện', 700, 'cntt')
INSERT INTO GIANGVIEN VALUES (10002, N'Nguyễn Tuấn Long', 500,'cntt')
INSERT INTO GIANGVIEN VALUES (10003, N'Nguyễn Công Hào', 650,'cntt')
INSERT INTO GIANGVIEN VALUES (10004, N'Nguyễn Ngọc Thuận', 500,'cntt')
INSERT INTO GIANGVIEN VALUES (10005, N'Trần Quang Triều', 900,'cntt')
INSERT INTO GIANGVIEN VALUES (10101, N'Trần Quốc Huy', 800,'cnvl')
INSERT INTO GIANGVIEN VALUES (10102, N'Trần Xuân Vũ', 750,'cnvl')
INSERT INTO GIANGVIEN VALUES (10103, N'Lê Hoàng Việt', 850,'cnvl')
INSERT INTO GIANGVIEN VALUES (10104, N'Lê Gia Phong', 6500,'cnvl')
INSERT INTO GIANGVIEN VALUES (10201, N'Lê Vĩnh Toàn', 700,'dc')
INSERT INTO GIANGVIEN VALUES (10202, N'Ngô Hòa Bình', 800,'dc')
INSERT INTO GIANGVIEN VALUES (10203, N'Ngô Nhật Tiến', 900,'dc')
INSERT INTO GIANGVIEN VALUES (10204, N'Ngô Quốc Hoàn', 750,'dc')
INSERT INTO GIANGVIEN VALUES (10205, N'Võ Hồng Đức', 850,'dc')
INSERT INTO GIANGVIEN VALUES (10206, N'Võ Nam An', 700,'dc')
INSERT INTO GIANGVIEN VALUES (10301, N'Võ Minh Anh', 700,'hh')
INSERT INTO GIANGVIEN VALUES (10402, N'Hồ Thanh Hằng', 700,'hh')
INSERT INTO GIANGVIEN VALUES (10403, N'Hồ Thu Cúc', 700,'hh')
INSERT INTO GIANGVIEN VALUES (10404, N'Hồ Băng Băng', 700,'hh')
INSERT INTO GIANGVIEN VALUES (10405, N'Trần Thuỳ Trang', 700,'hh')
INSERT INTO GIANGVIEN VALUES (10405, N'Trần Thuỳ Chi', 700, null)

--Thêm dữ liệu vào bảng SInh Viên :
INSERT INTO SINHVIEN VALUES (70003001, N'Lê Văn Sao','cntt',1990,'Nghệ An')
INSERT INTO SINHVIEN VALUES (70003002, N'Nguyễn Thị Mỹ','cntt',1990,'Thanh Hóa')
INSERT INTO SINHVIEN VALUES (70003003, N'Bùi Xuân Đức','cntt',1992,'Hà Nội')
INSERT INTO SINHVIEN VALUES (70004011, N'Nguyễn Văn Tùng','cnvl',null,'Hà Tĩnh')
INSERT INTO SINHVIEN VALUES (70004012, N'Lê Khánh Linh','cnvl',1989,'Hà Nam')
INSERT INTO SINHVIEN VALUES (70004013, N'Trần Khắc Trọng','cnvl',1991,'Thanh Hóa')
INSERT INTO SINHVIEN VALUES (70005021, N'Lê Thị Vân','dc',null,'Quảng Nam')
INSERT INTO SINHVIEN VALUES (70006031, N'Hoàng Văn Đức','dc',1992,'Nghệ An')

--Thêm dữ liệu vào bảng Đề Tài:
INSERT INTO DETAI VALUES ('dt01', N'GIS',100, N'Nghệ An')
INSERT INTO DETAI VALUES ('dt02', N'ARC GIS',500, N'Nam Định')
INSERT INTO DETAI VALUES ('dt03', N'Spatial DB',100, N'Hà Tĩnh')
INSERT INTO DETAI VALUES ('dt04', N'MAP',300, N'Quảng Bình' )

--Thêm dữ liệu vào bảng Hướng Dẫn:
INSERT INTO HUONGDAN VALUES (70003001, 'dt01', 10001, 8)
INSERT INTO HUONGDAN VALUES (70003002, 'dt03', 10002, 0)
INSERT INTO HUONGDAN VALUES (70003003, 'dt03', 10002, 10)
INSERT INTO HUONGDAN VALUES (70004013, 'dt04', 10103, 7)
INSERT INTO HUONGDAN VALUES (70003003, 'dt01', 10001, 7)
INSERT INTO HUONGDAN VALUES (70004011, 'dt04', 10102, 10)
INSERT INTO HUONGDAN VALUES (70006031, 'dt02', 10206, 6)


--Bài tập:
--Câu 1: Bạn hãy đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các giảng viên.
--Câu 2: Sử dụng lệnh xuất ra mã số, họ tên, tên khoa của các giảng viên hướng dẫn từ 3 sinh viên trở lên.
--Câu 3: Sử dụng lệnh SQL để xuất ra thông tin về những sinh viên có điểm thực tập nhỏ hơn 5.
--Câu 4: Sử dụng lệnh SQL để xuất ra thông tin về sinh viên có điểm thực tập cao nhất.
--Câu 5: Thực hiện lệnh SQL xuất ra số điện thoại của khoa mà sinh viên có tên Lê Khánh Linh đang theo học
--Câu 6: Sử dụng lệnh truy vấn SQL lấy ra mã số và tên các đề tài có nhiều hơn 2 sinh viên tham gia thực tập.
--Câu 7: Sử dụng câu lệnh truy vấn SQL lấy ra mã số, tên đề tài của đề tài có kinh phí cao nhất.
--Câu 8: Sử dụng câu lệnh SQL xuất ra Tên khoa, Số lượng sinh viên của mỗi khoa.
--Câu 9: Sử dụng truy vấn SQL xuất ra mã số, họ tên và điểm của các sinh viên khoa Hóa học.
--Câu 10: Sử dụng câu lệnh SQL xuất ra danh sách gồm Mã số, Họ tên và Tuổi của các sinh viên khoa CNTT.

