CREATE DATABASE KT0720_61133540
GO
USE KT0720_61133540
GO

CREATE TABLE LOP(
	MaLop nvarchar(10) PRIMARY KEY,
	TenLop nvarchar(50) NOT NULL
)
GO

CREATE TABLE SINHVIEN(
	MaSV nvarchar(10) PRIMARY KEY,
	HoSV nvarchar(50) NOT NULL,
	TenSV nvarchar(10) not null,
	NgaySinh date not null,
	GioiTinh bit default(1),
	AnhNV nvarchar(50) not null,
	DiaChi nvarchar(100) not null,
	MaLop nvarchar(10) Foreign key REFERENCES LOP
	ON UPDATE CASCADE
	ON DELETE CASCADE
)
GO

INSERT INTO LOP VALUES(N'D001', N'61cntt1'),(N'D002', N'61cntt2'),(N'D003', N'61cntt3')
GO

INSERT INTO SINHVIEN VALUES(N'K001',N'Nguyễn',N'Duy',CAST(N'2001-11-23' AS Date),1,N'a1.png',N'Nha Trang',N'D001'),
(N'K002',N'Trần',N'Hạnh',CAST(N'2001-10-23' AS Date),1,N'a1.png',N'Nha Trang',N'D002'),
(N'K003',N'Nguyễn',N'Trí',CAST(N'2001-9-23' AS Date),0,N'a1.png',N'Nha Trang',N'D003')
GO


CREATE PROCEDURE SinhVien_TimKiem
	@MaSV nvarchar(10)=null,	
	@HoTen nvarchar(40)=NULL
AS
BEGIN
DECLARE @SqlStr NVARCHAR(4000),
		@ParamList nvarchar(2000)
SELECT @SqlStr = '
       SELECT * 
	   FROM SinhVien
	   Where (1=1)
	   '
If @MaSV is not null
	select @SqlStr= @SqlStr+ '
		AND (MaSV LIKE ''%'+@MaSV+'%'')
              '
IF @HoTen IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (HoSV+'' ''+TenSV LIKE N''%'+@HoTen+'%'')
			  '	
	EXEC SP_EXECUTESQL @SqlStr
END

Exec SinhVien_TimKiem N'', N'Nguyễn'


