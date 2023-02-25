CREATE DATABASE nmcnpm_team11;

USE nmcnpm_team11;

-- 1. Người dùng
CREATE TABLE nguoi_dung(
                           id INT NOT NULL AUTO_INCREMENT,
                           taiKhoan VARCHAR(255) UNIQUE NOT NULL,
                           matKhau VARCHAR(255) NOT NULL,
                           hoTen   NVARCHAR(255) NOT NULL,
                           ngaySinh date NOT NULL,
                           gioiTinh NVARCHAR(5) NOT NULL,
                           email VARCHAR(255) NOT NULL,
                           SDT VARCHAR(20) NOT NULL,
                           chucVu NVARCHAR(255) NOT NULL,
                           donViCongTac NVARCHAR(255) NOT NULL,
                           anhDaiDien VARCHAR(255),
                           CONSTRAINT PK_nguoi_dung PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE nguoi_dung
    ADD UNIQUE(taiKhoan);

INSERT INTO nguoi_dung(taiKhoan, matKhau, hoTen, ngaySinh, gioiTinh, email, SDT, chucVu, donViCongTac, anhDaiDien) VALUES
    ('admin', '1', N'Monalisa Nguyễn', '2000-1-1', N'Nữ', 'Lisa_cute@gmail.com', '0123456789', N'Tổ trưởng tổ 11 phường Ngọc Thụy',N'Tổ 11 phường Ngọc Thụy', 'https://stickerly.pstatic.net/sticker_pack/a5oCnZ0p9IhaDqiLssqmg/7SV26A/31/34320c7c-a04c-4ab2-9df2-84ec0b35d8c2.png');

-- 2. Nhân khẩu
CREATE TABLE nhan_khau(
                          idNhanKhau INT NOT NULL AUTO_INCREMENT,
                          hoTen NVARCHAR(255) NOT NULL,
                          biDanh NVARCHAR(255),
                          ngaySinh DATE NOT NULL,
                          noiSinh NVARCHAR(255) NOT NULL,
                          gioiTinh NVARCHAR(255) NOT NULL,
                          nguyenQuan NVARCHAR(255) NOT NULL,
                          danToc NVARCHAR(255) NOT NULL,
                          tonGiao NVARCHAR(255) NOT NULL,
                          quocTich NVARCHAR(255) NOT NULL,
                          ngheNghiep NVARCHAR(255),
                          noiLamViec VARCHAR(255),
                          cmnd VARCHAR(255),
                          ngayCap DATE,
                          chuyenDenNgay DATE,
                          noiThuongTruTruoc NVARCHAR(255),
                          trangThai NVARCHAR(255),
                          CONSTRAINT PK_nhan_khau PRIMARY KEY(idNhanKhau),
                          CONSTRAINT CHK_nhan_khau_gioi_tinh CHECK (gioiTinh IN (N'Nam', N'Nữ'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO nhan_khau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd, ngayCap, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES
                                                                                                                                                                                                (N'Trịnh Văn An', NULL, '1990-12-07', N'Bệnh viện Đại học Y 1', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Giáo Viên', N'Trường THCS Chu Văn An', 123456789, '2010-10-10', '2019-12-11', N'Số 1 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),
                                                                                                                                                                                                (N'Trần Thanh Duyên', NULL, '1997-12-23', N'Bệnh viện Đại học Y 2', N'Nữ', N'Hải Phòng', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên văn phòng', N'Công ty ABC', 123456781, '2010-10-1', '2019-12-12', N'Số 2 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Đã chuyển đi'),
                                                                                                                                                                                                (N'Nguyễn Minh Quân', NULL, '1995-05-31', N'Bệnh viện Đại học Y 1', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Viettel', 123456782, '2010-10-2', '2019-12-13', N'Số 3 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Tạm Trú'),
                                                                                                                                                                                                 (N'Nguyễn Tiến Dũng', NULL, '1964-06-03', N'Bệnh viện Đại học Y 1', N'Nam', N'Hải Dương', N'Kinh', N'Thiên chúa giáo', N'Việt Nam', N'Phó giám đốc', N'Công ty EN', 123456783, '2010-10-3', '2019-12-14', N'Số 4 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Tạm vắng'),
                                                                                                                                                                                                (N'Vũ Mỹ Linh', NULL, '1965-12-06', N'Bệnh viện Đại học Y 3', N'Nữ', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Nội trợ', N'Tại nhà', 123456784, '2010-10-4', '2019-12-15', N'Số 5 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),

                                                                                                                                                                                                 (N'Nguyễn Tiến Đạt', NULL, '1990-09-09', N'Bệnh viện Đại học Y 5', N'Nam', N'Hải Dương', N'Kinh', N'Thiên chúa giáo', N'Việt Nam', N'Kỹ sư điện', N'EVP', 123456785, '2010-10-5', '2019-12-11', N'Số 1 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),

                                                                                                                                                                                                 (N'Nguyễn Trà My', NULL, '1997-12-12', N'Bệnh viện Đại học Y 4', N'Nữ', N'Hải Dương', N'Kinh', N'Thiên chúa giáo', N'Việt Nam', N'Luật sư', N'Văn phòng luật sư 123', 123456786, '2010-10-6', '2019-12-11', N'Số 1 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),

                                                                                                                                                                                                 (N'Trần Văn Nam', NULL, '1980-07-09', N'Bệnh viện Đại học Y 1', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Giảng viên đại học', N'Đại học Bách khoa Hà Nội', 123456787, '2010-10-7', '2019-12-12', N'Số 2 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Đã chuyển đi'),

                                                                                                                                                                                                (N'Nguyễn Minh Tuyết', NULL, '2011-09-02', N'Bệnh viện Đại học Y 2', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS Chu Văn An', 123456788, '2010-10-8', '2019-12-13', N'Số 3 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Tạm vắng'),

                                                                                                                                                                                                (N'Trần Trung Kiên', NULL, '2007-12-25', N'Bệnh viện Đại học Y 2', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THPT Chu Văn An', '', NULL, '2019-12-14', N'Số 4 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N''),

                                                                                                                                                                                                 (N'Trần Thúy Ngọc', NULL, '2013-01-15', N'Bệnh viện Đại học Y 5', N'Nữ', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học Chu Văn An', '', NULL, '2019-12-16', N'Số 10 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Tạm trú'),

                                                                                                                                                                                                 (N'Lý Văn Công', NULL, '1945-06-04', N'Bệnh viện Đại học Y 3', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Về hưu', N'Không', 123456780, '2010-10-9', '2019-12-15', N'Số 5 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Đã mất'),

                                                                                                                                                                                                 (N'Bùi Thị Hà', NULL, '1948-02-03', N'Bệnh viện Đại học Y 4', N'Nữ', N'Hải Phòng', N'Kinh', N'Không', N'Việt Nam', N'Nội trợ', N'Tại nhà', 123456790, '2010-10-11', '2019-12-15', N'Số 5 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Đã chuyển đi'),

                                                                                                                                                                                                 (N'Trần Quốc Việt', NULL, '1948-02-11', N'Bệnh viện Đại học Y 4', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Bác sĩ', N'Bệnh viện A', 123456791, '2010-10-11', '2019-12-15', N'Số 10 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N''),

                                                                                                                                                                                                 (N'Trịnh Hồng Phượng', NULL, '2010-03-23', N'Bệnh viện Đại học Y 3', N'Nữ', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS Chu Văn An', '', '2010-10-11', '2019-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),

                                                                                                                                                                                                 (N'Trần Văn Báu', NULL, '2002-02-25', N'Bệnh viện Đại học Y 3', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2020-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),

                                                                                                                                                                                                 (N'Đinh Viết Tỵ', NULL, '2002-01-01', N'Bệnh viện Đại học Y 3', N'Nam', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2020-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),

                                                                                                                                                                                                 (N'Trần Tuân Hưng', NULL, '2002-02-02', N'Bệnh viện Đại học Y 3', N'Nam', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2020-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),

                                                                                                                                                                                                 (N'Đinh Viết Tỵ', NULL, '2002-01-01', N'Bệnh viện Đại học Y 3', N'Nam', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2020-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Tạm vắng'),

                                                                                                                                                                                                 (N'Bùi Việt Anh', NULL, '2002-01-01', N'Bệnh viện Đại học Y 3', N'Nam', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2020-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Tạm vắng'),

                                                                                                                                                                                                 (N'Nguyễn Tuấn Thành', NULL, '2002-01-01', N'Bệnh viện Đại học Y 3', N'Nam', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2020-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N''),

                                                                                                                                                                                                 (N'Trần Văn Thế', NULL, '2002-01-01', N'Bệnh viện Đại học Y 3', N'Nam', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2020-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Tạm vắng'),

                                                                                                                                                                                                (N'Nguyễn Thuý Loan', NULL, '2002-01-01', N'Bệnh viện Đại học Y 3', N'Nữ', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2020-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N''),

                                                                                                                                                                                               (N'Nguyễn Thị Khánh Linh', NULL, '2002-01-01', N'Bệnh viện Đại học Y 3', N'Nữ', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2021-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N''),

                                                                                                                                                                                                (N'Lê Ngọc Khánh Huyền', NULL, '2007-01-01', N'Bệnh viện Đại học Y 3', N'Nữ', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'THCS Aí Mộ', '', '2010-10-11', '2021-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường Trú'),

                                                                                                                                                                                               (N'Nguyễn Đan Diệu Linh', NULL, '2004-01-01', N'Bệnh viện Đại học Y 3', N'Nữ', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'THPT Chu Văn An', '', '2010-10-11', '2021-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Đã chuyển đi'),

                                                                                                                                                                                               (N'Trịnh Xuân Anh', NULL, '2010-01-01', N'Bệnh viện Đại học Y 3', N'Nam', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Tiểu học Ngọc Thụy', '', '2010-10-11', '2022-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N''),

                                                                                                                                                                                               (N'Nguyễn Thị Thu', NULL, '1960-01-01', N'Bệnh viện Đại học Y 3', N'Nữ', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2022-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N''),

                                                                                                                                                                                              (N'Nguyễn Thị Huyền', NULL, '1960-01-01', N'Bệnh viện Đại học Y 3', N'Nữ', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2022-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Đã chuyển đi'),

                                                                                                                                                                                               (N'Nguyễn Thị Hoa', NULL, '2004-01-01', N'Bệnh viện Đại học Y 3', N'Nữ', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2022-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Tạm Trú'),

                                                                                                                                                                                             (N'Nguyễn Thị Ngọc', NULL, '1960-01-01', N'Bệnh viện Đại học Y 3', N'Nữ', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2022-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Tạm Trú'),

                                                                                                                                                                                               (N'Nguyễn Thị Bích', NULL, '1990-01-01', N'Bệnh viện Đại học Y 3', N'Nữ', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2023-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N''),

                                                                                                                                                                                               (N'Nguyễn Thị Phương', NULL, '1990-01-01', N'Bệnh viện Đại học Y 3', N'Nữ', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2023-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N''),

                                                                                                                                                                                         (N'Nguyễn Văn Tú', NULL, '2000-01-01', N'Bệnh viện Đại học Y 3', N'Nam', N'Thanh Hoá', N'Kinh', N'Không', N'Việt Nam', N'Sinh viên', N'Đại học Bách Khoa Hà Nội', '', '2010-10-11', '2023-12-15', N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Đã chuyển đi');
-- 7. Tạm trú
CREATE TABLE tam_tru(
                        id INT NOT NULL AUTO_INCREMENT,
                        idNhanKhau INT NOT NULL,
                        noiThuongTru NVARCHAR(255) NOT NULL,
                        noiTamTru NVARCHAR(255) NOT NULL,
                        tuNgay DATE NOT NULL,
                        denNgay DATE ,
                        lyDo NVARCHAR(255),
                        CONSTRAINT PK_tam_tru PRIMARY KEY(id),
                        CONSTRAINT FK_tam_tru_nhan_khau FOREIGN KEY(idNhanKhau) REFERENCES nhan_khau(idNhanKhau) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO tam_tru(idNhanKhau, noiThuongTru, noiTamTru, tuNgay, denNgay, lyDo) VALUES
    (11, N'Số 10 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Số 6 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-12-16', '2023-10-10', NULL),
    (3, N'Số 11 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Số 7 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-12-16', '2023-10-10', NULL),
    (31, N'Số 12 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Số 8 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-12-16', '2023-11-10', NULL),
    (30, N'Số 13 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Số 9 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-12-16', '2023-12-10', NULL);
-- 8. Tạm vắng
CREATE TABLE tam_vang(
                         id INT NOT NULL AUTO_INCREMENT,
                         idNhanKhau INT NOT NULL,
                         noiTamTru NVARCHAR(255) NOT NULL,
                         tuNgay DATE NOT NULL,
                         denNgay DATE ,
                         lyDo NVARCHAR(255),
                         CONSTRAINT PK_tam_vang PRIMARY KEY(id),
                         CONSTRAINT FK_tam_vang_nhan_khau FOREIGN KEY(idNhanKhau) REFERENCES nhan_khau(idNhanKhau) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO tam_vang(idNhanKhau, noiTamTru, tuNgay, denNgay, lyDo) VALUES
                                                                       (4, N'Số 8 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội', '2020-11-11', '2023-12-12', NULL),
                                                                       (9, N'Số 7 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội', '2020-11-10', '2023-12-11', NULL),
                                                                        (19, N'Số 5 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội', '2020-12-10', '2023-12-11', NULL),
                                                                        (20, N'Số 6 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội', '2020-12-10', '2022-12-11', NULL),
                                                                        (22, N'Số 4 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội', '2020-13-10', '2023-12-11', NULL);
-- 3. Hộ khẩu
CREATE TABLE ho_khau(
                        idHoKhau INT NOT NULL AUTO_INCREMENT,
                        idChuHo INT NOT NULL,
                        tinhThanhPho NVARCHAR(255) NOT NULL,
                        quanHuyen NVARCHAR(255) NOT NULL,
                        phuongXa NVARCHAR(255) NOT NULL,
                        diaChi NVARCHAR(255) NOT NULL,
                        ngayTao DATE NOT NULL,
                        trangThai NVARCHAR(255) NOT NULL,
                        CONSTRAINT PK_ho_khau PRIMARY KEY(idHoKhau),
                        CONSTRAINT FK_ho_khau_nhan_khau FOREIGN KEY(idChuHo) REFERENCES nhan_khau(idNhanKhau) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO ho_khau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayTao, trangThai) VALUES
                                                                                                (1, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 1 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-08', N'Thường trú'),
                                                                                                (2, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 2 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-07', N'Đã chuyển đi'),
                                                                                                (3, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 3 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-06', N'Thường trú'),
                                                                                                (4, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 4 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-05', N'Thường trú'),
                                                                                                (5, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2020-11-05', N'Đã chuyển đi'),
                                                                                                (6, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2020-11-05', N'Đã chuyển đi'),
                                                                                                (7, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2021-11-05', N'Thường trú'),
                                                                                                (8, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2021-11-05', N'Thường trú'),
                                                                                                (9, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2021-11-05', N'Thường trú'),
                                                                                                (10, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2022-11-05', N'Đã chuyển đi'),
                                                                                                (11, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2022-11-05', N'Thường trú'),
                                                                                                (12, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2023-11-05', N'Thường trú'),
                                                                                                (13, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2023-11-05', N'Thường trú');

-- 4. Hộ khẩu - nhân khẩu
CREATE TABLE ho_khau_nhan_khau(
                                  idHoKhau INT NOT NULL ,
                                  idNhanKhau INT NOT NULL ,
                                  quanHeChuHo NVARCHAR(255) NOT NULL,
                                  CONSTRAINT PK_ho_khau_nhan_khau PRIMARY KEY (idHoKhau, idNhanKhau),
                                  CONSTRAINT FK_ho_khau_nhan_khau_ho_khau FOREIGN KEY(idHoKhau) REFERENCES ho_khau(idHoKhau) ON DELETE CASCADE,
                                  CONSTRAINT FK_ho_khau_nhan_khau_nhan_khau FOREIGN KEY(idNhanKhau) REFERENCES nhan_khau(idNhanKhau) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO ho_khau_nhan_khau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES
                                                                     (1, 6, N'Anh trai'),
                                                                     (1, 7, N'Vợ'),
                                                                     (2, 8, N'Bố'),
                                                                     (3, 9, N'Bố'),
                                                                     (4, 10, N'Con trai'),
                                                                     (5, 12, N'Ông ngoại'),
                                                                     (5, 13, N'Bà ngoại'),
                                                                     (6, 1, N'Con trai'),
                                                                     (6, 27, N'Con trai'),
                                                                     (2, 2, N'Con gái'),
                                                                     (3, 25, N'Con gái'),
                                                                     (4, 26, N'Con gái');

-- 5. Chuyển nhân khẩu
CREATE TABLE chuyen_nhan_khau(
                                 id INT NOT NULL AUTO_INCREMENT,
                                 idNhanKhau INT NOT NULL,
                                 ngayChuyenDi DATE NOT NULL,
                                 noiChuyenDen NVARCHAR(255) NOT NULL,
                                 ghiChu NVARCHAR(255),
                                 CONSTRAINT PK_chuyen_nhan_khau PRIMARY KEY (id),
                                 CONSTRAINT FK_chuyen_nhan_khau_nhan_khau FOREIGN KEY(idNhanKhau) REFERENCES nhan_khau(idNhanKhau) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO chuyen_nhan_khau(idNhanKhau, ngayChuyenDi, noiChuyenDen, ghiChu) VALUES
    (13, '2020-10-10', N'Số 10 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội', NULL);

-- 6. Chuyển hộ khẩu
CREATE TABLE chuyen_ho_khau(
                               id INT NOT NULL AUTO_INCREMENT,
                               idHoKhau INT NOT NULL,
                               ngayChuyenDi DATE NOT NULL,
                               noiChuyenDen NVARCHAR(255) NOT NULL,
                               ghiChu NVARCHAR(255),
                               CONSTRAINT PK_chuyen_ho_khau PRIMARY KEY(id),
                               CONSTRAINT FK_chuyen_ho_khau_ho_khau FOREIGN KEY(idHoKhau) REFERENCES ho_khau(idHoKhau) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




-- 9. Dịp đặc biệt
CREATE TABLE dip_dac_biet(
                             idDip INT NOT NULL AUTO_INCREMENT,
                             ten NVARCHAR(255) NOT NULL,
                             nam INT NOT NULL,
                             moTa NVARCHAR(255),
                             phanQua05 NVARCHAR(255) NOT NULL,
                             phanQua614 NVARCHAR(255) NOT NULL,
                             phanQua1517 NVARCHAR(255) NOT NULL,
                             tien05 FLOAT NOT NULL,
                             tien614 FLOAT NOT NULL,
                             tien1517 FLOAT NOT NULL,
                             CONSTRAINT PK_dip_dac_biet PRIMARY KEY(idDip)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO dip_dac_biet(ten, nam, moTa, phanQua05, phanQua614, phanQua1517, tien05, tien614, tien1517) VALUES
                                                                                                            (N'Tết Trung Thu', 2020, NULL, N'1 mũ len', N'1 khăn len', N'1 đôi tất', 20000, 23000, 15000),
                                                                                                            (N'Giáng Sinh', 2020, NULL, N'1 gấu bông', N'5 cây kẹo mút', N'1 bao tay', 30000, 20000, 25000);

-- 10. Dịp học sinh giỏi
CREATE TABLE dip_hoc_sinh_gioi(
                                  idDip INT NOT NULL AUTO_INCREMENT,
                                  nam INT NOT NULL,
                                  moTa NVARCHAR(255),
                                  phanQuaDacBiet NVARCHAR(255) NOT NULL,
                                  phanQuaGioi NVARCHAR(255) NOT NULL,
                                  phanQuaKha NVARCHAR(255) NOT NULL,
                                  tienDacBiet FLOAT NOT NULL,
                                  tienGioi FLOAT NOT NULL,
                                  tienKha FLOAT NOT NULL,
                                  CONSTRAINT PK_dip_hoc_sinh_gioi PRIMARY KEY(idDip)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO dip_hoc_sinh_gioi(nam, moTa, phanQuaDacBiet, phanQuaGioi, phanQuaKha, tienDacBiet, tienGioi, tienKha) VALUES
                                                                                                                      (2020, NULL, N'10 quyển vở', N'7 quyển vở', N'5 quyển vở', 50000, 35000, 25000),
                                                                                                                      (2021, NULL, N'10 quyển vở', N'7 quyển vở', N'5 quyển vở', 50000, 35000, 25000),
                                                                                                                      (2022, NULL, N'10 quyển vở', N'7 quyển vở', N'5 quyển vở', 50000, 35000, 25000),
                                                                                                                      (2023, NULL, N'10 quyển vở', N'7 quyển vở', N'5 quyển vở', 50000, 35000, 25000);

-- 11. Chi tiết dịp đặc biệt
CREATE TABLE chi_tiet_dip_dac_biet(
                                      idDip INT NOT NULL,
                                      idNhanKhau INT NOT NULL,
                                      nhom INT NOT NULL,
                                      kiemtra BOOLEAN NOT NULL,
                                      CONSTRAINT PK_chi_tiet_dip_dac_biet PRIMARY KEY(idDip, idNhanKhau),
                                      CONSTRAINT FK_chi_tiet_dip_dac_biet_dip_dac_biet FOREIGN KEY(idDip) REFERENCES dip_dac_biet(idDip) ON DELETE CASCADE,
                                      CONSTRAINT FK_chi_tiet_dip_dac_biet FOREIGN KEY(idNhanKhau) REFERENCES nhan_khau(idNhanKhau) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO chi_tiet_dip_dac_biet(idDip, idNhanKhau, nhom, kiemtra) VALUES
                                                                        (1, 9, 2, 1),
                                                                        (1, 10, 3, 1),
                                                                        (2, 9, 2, 1),
                                                                        (2, 10, 3, 0);



-- 12. Chi tiết dịp học sinh giỏi
CREATE TABLE chi_tiet_dip_hoc_sinh_gioi(
                                           idDip INT NOT NULL,
                                           idNhanKhau INT NOT NULL,
                                           truong NVARCHAR(255) NOT NULL,
                                           lop VARCHAR(255) NOT NULL,
                                           nhom INT NOT NULL,
                                           minhChung NVARCHAR(255) NOT NULL,
                                           kiemtra BOOLEAN NOT NULL,
                                           CONSTRAINT PK_chi_tiet_dip_hoc_sinh_gioi PRIMARY KEY(idDip, idNhanKhau),
                                           CONSTRAINT FK_chi_tiet_dip_hoc_sinh_gioi_dip_hoc_sinh_gioi FOREIGN KEY(idDip) REFERENCES dip_hoc_sinh_gioi(idDip) ON DELETE CASCADE,
                                           CONSTRAINT FK_chi_tiet_dip_hoc_sinh_gioi FOREIGN KEY(idNhanKhau) REFERENCES nhan_khau(idNhanKhau) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO chi_tiet_dip_hoc_sinh_gioi(idDip, idNhanKhau, truong, lop, nhom, minhChung, kiemtra) VALUES
                                                                                                     (1, 1, N'Trường THCS Chu Văn An', 6, 1, 'data:image/jpeg;base64,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', 1),
                                                                                                     (1, 2, N'Trường tiểu học Chu Văn An', 1, 1, 'MC', 1),
                                                                                                     (2, 1, N'Trường THCS Chu Văn An', 7, 2, 'MC', 1),
                                                                                                     (2, 26, N'Trường THPT Chu Văn An', 12, 1, 'MC', 0),
                                                                                                     (2, 25, N'Trường THCS Ái Mộ', 7, 3, 'MC', 0),
                                                                                                     (2, 27, N'Tiểu học Ngọc Thụy', 12, 1, 'MC', 1),
                                                                                                     (3, 25, N'Trường THCS Ái Mộ', 8, 1, 'MC', 0),
                                                                                                     (3, 26, N'Trường THPT Chu Văn An', 12, 1, 'MC', 0),
                                                                                                     (4, 25, N'Trường THCS Ái Mộ', 9, 1, 'MC', 0);

-- 13. Khai tử
CREATE TABLE khai_tu(
                        idNguoiMat INT NOT NULL,
                        idNguoiKhai INT NOT NULL,
                        ngayKhai DATE NOT NULL,
                        ngayMat DATE NOT NULL,
                        liDoMat NVARCHAR(255),
                        CONSTRAINT  PK_khai_tu PRIMARY KEY(idNguoiMat),
                        CONSTRAINT FK_khai_tu_nguoi_mat_nhan_khau FOREIGN KEY(idNguoiMat) REFERENCES nhan_khau(idNhanKhau) ON DELETE CASCADE,
                        CONSTRAINT FK_khai_tu_nguoi_khai_nhan_khau FOREIGN KEY(idNguoiKhai) REFERENCES nhan_khau(idNhanKhau) ON DELETE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO khai_tu(idNguoiMat, idNguoiKhai, ngayKhai, ngayMat, liDoMat) VALUES
    (12, 5, '2020-10-10', '2020-10-1', 'Bệnh tim');