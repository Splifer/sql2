USE [QLSV]
GO
/****** Object:  Table [dbo].[DETAI]    Script Date: 6/3/2023 10:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETAI](
	[MaDT] [char](10) NOT NULL,
	[TenDT] [nvarchar](50) NULL,
	[KinhPhi] [numeric](10, 0) NULL,
	[NoiThucTap] [nvarchar](50) NULL,
 CONSTRAINT [PK_DETAI] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIANGVIEN]    Script Date: 6/3/2023 10:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIANGVIEN](
	[MaGV] [int] NOT NULL,
	[TenGV] [nvarchar](100) NULL,
	[Luong] [numeric](10, 0) NULL,
	[MaKhoa] [char](5) NULL,
 CONSTRAINT [PK_GIANGVIEN] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HUONGDAN]    Script Date: 6/3/2023 10:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HUONGDAN](
	[MaSV] [int] NOT NULL,
	[MaGV] [int] NOT NULL,
	[MaDT] [char](10) NOT NULL,
	[KetQua] [decimal](5, 2) NULL,
 CONSTRAINT [PK_HUONGDAN] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaGV] ASC,
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 6/3/2023 10:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[MaKhoa] [char](5) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 6/3/2023 10:54:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MaSV] [int] NOT NULL,
	[TenSV] [nvarchar](100) NULL,
	[GioiTinh] [char](1) NULL,
	[NgaySinh] [date] NULL,
	[MaKhoa] [char](5) NULL,
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DETAI] ([MaDT], [TenDT], [KinhPhi], [NoiThucTap]) VALUES (N'dt01      ', N'GIS', CAST(100 AS Numeric(10, 0)), N'Nghệ An')
INSERT [dbo].[DETAI] ([MaDT], [TenDT], [KinhPhi], [NoiThucTap]) VALUES (N'dt02      ', N'ARC GIS', CAST(500 AS Numeric(10, 0)), N'Nam Định')
INSERT [dbo].[DETAI] ([MaDT], [TenDT], [KinhPhi], [NoiThucTap]) VALUES (N'dt03      ', N'Spatial DB', CAST(100 AS Numeric(10, 0)), N'Hà Tĩnh')
INSERT [dbo].[DETAI] ([MaDT], [TenDT], [KinhPhi], [NoiThucTap]) VALUES (N'dt04      ', N'MAP', CAST(300 AS Numeric(10, 0)), N'Quảng Bình')
GO
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10001, N'Nguyễn Mạnh Thiện', CAST(700 AS Numeric(10, 0)), N'cntt ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10002, N'Nguyễn Tuấn Long', CAST(500 AS Numeric(10, 0)), N'cntt ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10003, N'Nguyễn Công Hào', CAST(650 AS Numeric(10, 0)), N'cntt ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10004, N'Nguyễn Ngọc Thuận', CAST(500 AS Numeric(10, 0)), N'cntt ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10005, N'Trần Quang Triều', CAST(900 AS Numeric(10, 0)), N'cntt ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10101, N'Trần Quốc Huy', CAST(800 AS Numeric(10, 0)), N'cnvl ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10102, N'Trần Xuân Vũ', CAST(750 AS Numeric(10, 0)), N'cnvl ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10103, N'Lê Hoàng Việt', CAST(850 AS Numeric(10, 0)), N'cnvl ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10104, N'Lê Gia Phong', CAST(6500 AS Numeric(10, 0)), N'cnvl ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10201, N'Lê Vĩnh Toàn', CAST(700 AS Numeric(10, 0)), N'dc   ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10202, N'Ngô Hòa Bình', CAST(800 AS Numeric(10, 0)), N'dc   ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10203, N'Ngô Nhật Tiến', CAST(900 AS Numeric(10, 0)), N'dc   ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10204, N'Ngô Quốc Hoàn', CAST(750 AS Numeric(10, 0)), N'dc   ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10205, N'Võ Hồng Đức', CAST(850 AS Numeric(10, 0)), N'dc   ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10206, N'Võ Nam An', CAST(700 AS Numeric(10, 0)), N'dc   ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10301, N'Võ Minh Anh', CAST(700 AS Numeric(10, 0)), N'hh   ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10402, N'Hồ Thanh Hằng', CAST(700 AS Numeric(10, 0)), N'hh   ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10403, N'Hồ Thu Cúc', CAST(700 AS Numeric(10, 0)), N'hh   ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10404, N'Hồ Băng Băng', CAST(700 AS Numeric(10, 0)), N'hh   ')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [Luong], [MaKhoa]) VALUES (10405, N'Trần Thuỳ Trang', CAST(700 AS Numeric(10, 0)), N'hh   ')
GO
INSERT [dbo].[HUONGDAN] ([MaSV], [MaGV], [MaDT], [KetQua]) VALUES (70003001, 10001, N'dt01      ', CAST(8.00 AS Decimal(5, 2)))
INSERT [dbo].[HUONGDAN] ([MaSV], [MaGV], [MaDT], [KetQua]) VALUES (70003002, 10002, N'dt03      ', CAST(0.00 AS Decimal(5, 2)))
INSERT [dbo].[HUONGDAN] ([MaSV], [MaGV], [MaDT], [KetQua]) VALUES (70003003, 10001, N'dt01      ', CAST(7.00 AS Decimal(5, 2)))
INSERT [dbo].[HUONGDAN] ([MaSV], [MaGV], [MaDT], [KetQua]) VALUES (70003003, 10002, N'dt03      ', CAST(10.00 AS Decimal(5, 2)))
INSERT [dbo].[HUONGDAN] ([MaSV], [MaGV], [MaDT], [KetQua]) VALUES (70004011, 10102, N'dt04      ', CAST(10.00 AS Decimal(5, 2)))
INSERT [dbo].[HUONGDAN] ([MaSV], [MaGV], [MaDT], [KetQua]) VALUES (70004013, 10103, N'dt04      ', CAST(7.00 AS Decimal(5, 2)))
INSERT [dbo].[HUONGDAN] ([MaSV], [MaGV], [MaDT], [KetQua]) VALUES (70006031, 10206, N'dt02      ', CAST(6.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [SDT]) VALUES (N'cntt ', N'công nghệ thông tin', N'3855412   ')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [SDT]) VALUES (N'cnvl ', N'khoa học và công nghệ vật liêu', N'3855416   ')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [SDT]) VALUES (N'dc   ', N'địa chất', N'3855413   ')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [SDT]) VALUES (N'dtvt ', N'điện tử - viễn thông', N'3855414   ')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [SDT]) VALUES (N'hh   ', N'hóa học', N'3855415   ')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [SDT]) VALUES (N'mt   ', N'môi trường', N'3855417   ')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [SDT]) VALUES (N'sh   ', N'sinh học và công nghệ sinh học', N'3855418   ')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [SDT]) VALUES (N'tt   ', N'toán - tin học', N'3855419   ')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa], [SDT]) VALUES (N'vl   ', N'vật lý và vật lý kỹ thuật', N'3855410   ')
GO
INSERT [dbo].[SINHVIEN] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [MaKhoa]) VALUES (70003001, N'Lê Văn Sao', N'1', CAST(N'1990-05-15' AS Date), N'cntt ')
INSERT [dbo].[SINHVIEN] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [MaKhoa]) VALUES (70003002, N'Nguyễn Thị Mỹ', N'1', CAST(N'1990-06-17' AS Date), N'cntt ')
INSERT [dbo].[SINHVIEN] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [MaKhoa]) VALUES (70003003, N'Bùi Xuân Đức', N'1', CAST(N'1992-07-23' AS Date), N'cntt ')
INSERT [dbo].[SINHVIEN] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [MaKhoa]) VALUES (70004011, N'Nguyễn Văn Tùng', N'1', CAST(N'1991-02-15' AS Date), N'cnvl ')
INSERT [dbo].[SINHVIEN] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [MaKhoa]) VALUES (70004012, N'Lê Khánh Linh', N'0', CAST(N'1989-08-12' AS Date), N'cnvl ')
INSERT [dbo].[SINHVIEN] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [MaKhoa]) VALUES (70004013, N'Trần Khắc Trọng', N'1', CAST(N'1990-09-11' AS Date), N'cnvl ')
INSERT [dbo].[SINHVIEN] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [MaKhoa]) VALUES (70005021, N'Lê Thị Vân', N'2', CAST(N'1990-12-12' AS Date), N'dc   ')
INSERT [dbo].[SINHVIEN] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [MaKhoa]) VALUES (70006031, N'Hoàng Văn Đức', N'1', CAST(N'1993-01-12' AS Date), N'dc   ')
GO
ALTER TABLE [dbo].[HUONGDAN]  WITH CHECK ADD  CONSTRAINT [FK_HUONGDAN_DETAI] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DETAI] ([MaDT])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HUONGDAN] CHECK CONSTRAINT [FK_HUONGDAN_DETAI]
GO
ALTER TABLE [dbo].[HUONGDAN]  WITH CHECK ADD  CONSTRAINT [FK_HUONGDAN_GIANGVIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GIANGVIEN] ([MaGV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HUONGDAN] CHECK CONSTRAINT [FK_HUONGDAN_GIANGVIEN]
GO
ALTER TABLE [dbo].[HUONGDAN]  WITH CHECK ADD  CONSTRAINT [FK_HUONGDAN_SINHVIEN] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SINHVIEN] ([MaSV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HUONGDAN] CHECK CONSTRAINT [FK_HUONGDAN_SINHVIEN]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_SINHVIEN_KHOA] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[KHOA] ([MaKhoa])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SINHVIEN_KHOA]
GO


--Bài tập:
--Câu 1: Bạn hãy đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các giảng viên.
--Câu 2: Sử dụng lệnh xuất ra mã số, họ tên, tên khoa của các giảng viên hướng dẫn từ 3 sinh viên trở lên.
--Câu 3: Sử dụng lệnh SQL để xuất ra thông tin về những sinh viên có điểm thực tập nhỏ hơn 5.
--Câu 4: Sử dụng lệnh SQL để xuất ra thông tin về sinh viên có điểm thực tập cao nhất.
--Câu 5: Thực hiện lệnh SQL xuất ra số điện thoại của khoa mà sinh viên có tên Lê Khánh Linh đang theo học
--Câu 6: Sử dụng lệnh truy vấn SQL lấy ra mã số và tên các đề tài có nhiều hơn 2 sinh viên tham gia thực tập.
--Câu 7: Sử dụng câu lệnh truy vấn SQL lấy ra mã số, tên đề tài của đề tài có kinh phí cao nhất.
--Câu 8: Sử dụng câu lệnh SQL xuất ra Tên khoa, Số lượng sinh viên của mỗi khoa.
--Câu 9: Sử dụng truy vấn SQL xuất ra mã số, họ tên và điểm của các sinh viên khoa CNTT.
--Câu 10: Sử dụng câu lệnh SQL xuất ra danh sách gồm Mã số, Họ tên và Tuổi của các sinh viên khoa CNTT.