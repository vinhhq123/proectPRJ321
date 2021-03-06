create database CSDL1
go
use CSDL1
go

create table Book(
bookcode nvarchar(50)not null,
bookname nvarchar(60) not null,
author nvarchar(60) not null,
publisher nvarchar(60) not null,
categoryid nvarchar(50) not null,
categoryname nvarchar(60) not null,
numberofpages nvarchar(50) not null,
price real not null,
discountname nvarchar(50) not  null,
available bit not null,
description nvarchar(500) not null,
pitcure nvarchar(500),
publishyear nvarchar(50) not null
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[bookcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

create table Users(
account nvarchar(50) not null,
password nvarchar(50) not null,
name nvarchar(50) not null,
email nvarchar(50) not null,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
create table tblBrowse(
browseid nvarchar(50) not null,
account nvarchar(50) not null,
bookcode nvarchar(50) not null,
bookname nvarchar(150) not null,
 CONSTRAINT [PK_tblBrowse] PRIMARY KEY CLUSTERED 
(
	[browseid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

create table tblBrowse1(
browseid int IDENTITY(1,1),
account nvarchar(50) not null,
bookcode nvarchar(50) not null,
bookname nvarchar(150) not null,
 CONSTRAINT [PK_tblBrowse1] PRIMARY KEY CLUSTERED 
(
	[browseid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



create table tblCategory(
categoryid nvarchar(50) not null,
categoryname nvarchar(50) not null,
bookcode nvarchar(50) not null,
bookname nvarchar(200) not null,
descripton nvarchar(1500) 
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
create table tblCategory1(
categoryid nvarchar(50) not null,
categoryname nvarchar(50) not null,
bookcode nvarchar(50) not null,
bookname nvarchar(200) not null,
descripton nvarchar(1500) 
 CONSTRAINT [PK_tblCategory1] PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

create table tblDiscount(
discountid nvarchar(50) not null,
discountname nvarchar(50) not null,
bookcode nvarchar(50) not null,
bookname nvarchar(60) not null,
FOREIGN KEY (bookcode) REFERENCES Book(bookcode),
 CONSTRAINT [PK_tblDiscount] PRIMARY KEY CLUSTERED 
(
	[discountid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


INSERT INTO [CSDL1].[dbo].[Users]
           ([account]
           ,[password]
           ,[name]
           ,[email])
     VALUES('admin','123','PAGEADMIN','pageadmin123@gmail.com')
GO

INSERT INTO [CSDL1].[dbo].[Users]
           ([account]
           ,[password]
           ,[name]
           ,[email])
     VALUES('vinhhq','lovestory','Ha Quang Vinh','vinhhqse05532@fpt.edu.vn')
GO
INSERT INTO [CSDL1].[dbo].[Users]
           ([account]
           ,[password]
           ,[name]
           ,[email])
     VALUES('ross','ross','ross geller','ross123@gmail.com')
GO
INSERT INTO [CSDL1].[dbo].[Users]
           ([account]
           ,[password]
           ,[name]
           ,[email])
     VALUES('monica','monica','monica geller','monica123@gmail.com')
GO
INSERT INTO [CSDL1].[dbo].[Users]
           ([account]
           ,[password]
           ,[name]
           ,[email])
     VALUES('joey','joey','Hjoey tribbiany','joeyy@gmail.com')
GO
INSERT INTO [CSDL1].[dbo].[Users]
           ([account]
           ,[password]
           ,[name]
           ,[email])
     VALUES('chandler','chandler','Chandler Bing','chandler453@gmail.com')
GO
INSERT INTO [CSDL1].[dbo].[Users]
           ([account]
           ,[password]
           ,[name]
           ,[email])
     VALUES('rachel','rachel','Rachel Green','rachel895@gmail.com')
GO
INSERT INTO [CSDL1].[dbo].[Users]
           ([account]
           ,[password]
           ,[name]
           ,[email])
     VALUES('phoebe','phoebe','Phoebe Buffei','phoebe788@gmail.com')
GO
INSERT INTO [CSDL1].[dbo].[Users]
           ([account]
           ,[password]
           ,[name]
           ,[email])
     VALUES('michael','micheal','micheal scott','scotty@gmail.com')
GO
INSERT INTO [CSDL1].[dbo].[Users]
           ([account]
           ,[password]
           ,[name]
           ,[email])
     VALUES('jim','jim','jim halpert','jimmy@gmail.com')
GO
INSERT INTO [CSDL1].[dbo].[Users]
           ([account]
           ,[password]
           ,[name]
           ,[email])
     VALUES('dwight','dwight','dwight schutt','dwightty@gmail.com')
GO

INSERT INTO [CSDL1].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount101','10% discount','tshk1' ,N'Meryl Streep – Nữ Hoàng Không Ngai')
GO
INSERT INTO [CSDL1].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount102','10% discount','ndc10' ,N'Cha Mẹ Can Đảm – Phương Pháp Nuôi Dạy Con Mới Mẻ Và Táo Bạo')
GO



INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount201','20% discount','ttgt1' ,N'Thiền Đích Thực')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount202','20% discount','ttgt3' ,N'Chuyện Diệu Kỳ Của Bọ Chét – Leo Messi')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount203','20% discount','ttgt4' ,N'Trên Núi Chớ Tìm Non')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount204','20% discount','ttgt7' ,N'Yoga Trị 46 Bệnh')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount205','20% discount','tshk9' ,N'Loan – Từ Cuộc Đời Của Một Con Chim Phượng Hoàng')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount206','20% discount','tshk10' ,N'Là Người Phụ Nữ Như Tôi Mong Muốn')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount207','20% discount','vndl4' ,N'Cẩm Nang Du Lịch Trung Quốc')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount208','20% discount','vndl5' ,N'Phẩm Cách Quốc Gia')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount209','20% discount','vndl7' ,N'Miền Cổ Tích')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2010','20% discount','vndl10' ,N'Đờn Ca Tài Tử Nam Bộ')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2011','20% discount','anmt2' ,N'100 Bản Tình Ca Nga Nổi Tiếng')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2012','20% discount','anmt3' ,N'Tây Ban Cầm Nâng Cao')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2013','20% discount','anmt5' ,N'Vẽ Sơn Dầu Cho Người Mới Bắt Đầu')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2014','20% discount','anmt10' ,N'Bí Quyết Vẽ Phong Cảnh')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2015','20% discount','ncgc3' ,N'500 Món Chay Thanh Tịnh – Tập 6')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2016','20% discount','ncgc4' ,N'90 Món Mì Thông Dụng')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2017','20% discount','ncgc5' ,N'90 Món Gỏi')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2018','20% discount','ncgc7' ,N'Bếp Của Anh')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2019','20% discount','ncgc8' ,N'Căn Bếp Kẹo Ngọt – Muôn Màu Bento')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2020','20% discount','ncgc10' ,N'Ahimsa – Ăn Chay Cho Thân Tâm An Lạc')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2021','20% discount','ndc6' ,N'Cùng Con Khôn Lớn Tập 1 – Rèn Luyện Tính Cách')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2022','20% discount','ndc8' ,N'Mẹ Đoảng – Những Nốt Thăng Hài Hước Và Nốt Trầm Cảm Xúc Khi Làm Mẹ')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2023','20% discount','kns1' ,N'Em Đã Đúng Khi Rời Xa Anh')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount2024','20% discount','kns9' ,N'9 Bí Quyết Vận Dụng Luật Hấp Dẫn Để Thay Đổi Vận Mệnh Cuộc Đời')
GO



INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount301','30% discount','ttgt2' ,N'Jesse Cười Và Cuộc Phiêu Lưu Hài Hước')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount302','30% discount','ttgt5' ,N'Giáo Trình Cờ Vây Binh Gia Môn – Sơ Cấp I')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount303','30% discount','ttgt6' ,N'Việt Nam Vô Địch')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount304','30% discount','ttgt8' ,N'Giáo Trình Cờ Vây Binh Gia Môn – Sơ Cấp II')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount305','30% discount','tshk2' ,N'Bốp À! Mẹ Bị Ung Thư')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount306','30% discount','tshk3' ,N'Bão Lửa Và Cuồng Nộ')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount307','30% discount','tshk4' ,N'Đi Qua Nước Mắt Nụ Cười')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount308','30% discount','tshk5' ,N'Bảo Đại – Hoàng Đế Cuối Cùng')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount309','30% discount','tshk6' ,N'Tỷ Phú Bán Giày')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3010','30% discount','vndl1' ,N'Nữ Nghệ Sĩ Tiền Phong Năm Sa Đéc Và Nghệ Thuật Sân Khấu Nam Bộ')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3011','30% discount','vndl2' ,N'Nét Cũ Duyên Xưa')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3012','30% discount','vndl3' ,N'Bốn Mùa Trên Xứ Phù Tang')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3013','30% discount','vndl6' ,N'Cẩm Nang Du Lịch Thái Lan')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3014','30% discount','vndl9' ,N'100 Ý Tưởng Thay Đổi Nhiếp Ảnh')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3015','30% discount','anmt1' ,N'Kỹ Thuật Vẽ Sơn Dầu')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3016','30% discount','anmt4' ,N'Nguyễn Gia Trí – Sáng Tạo')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3017','30% discount','anmt6' ,N'Bí Quyết Vẽ Ký Họa')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3018','30% discount','anmt7' ,N'Si – Sách Tranh Dành Cho Độc Giả Tự Viết Lời')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3019','30% discount','anmt8' ,N'Phương Pháp Học Ghi-ta')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3020','30% discount','anmt9' ,N'Bách Khoa Toàn Thư Thực Hành Hội Họa')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3021','30% discount','ncgc1' ,N'Công Thức Nấu Ăn Tặng Con Gái')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3022','30% discount','ncgc2' ,N'999 Mẹo Hay Trong Cuộc Sống')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3023','30% discount','ncgc6' ,N'Bí Mật Chocolate')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3024','30% discount','ncgc9' ,N'Về Nhà Ăn Cơm')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3025','30% discount','ndc1' ,N'Cha Mẹ Nhật Dạy Con Lắng Nghe Hơn Là La Mắng')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3026','30% discount','ndc2' ,N'Tất Tần Tật Các Vấn Đề Của Trẻ Từ 1 Đến 3 Tuổi')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3027','30% discount','ndc4' ,N'Vui Học Để Phát Triển Khả Năng Của Trẻ')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3028','30% discount','ndc7' ,N'Cẩm Nang Phòng Chống Bạo Lực Học Đường')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3029','30% discount','ndc9' ,N'Nhật Ký 5 Năm Đầu Đời Của Bé')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3030','30% discount','kns2' ,N'Đột Phá – Hành Trình Thay Đổi Thế Giới Của Một Thần Đồng Khoa Học')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3031','30% discount','kns4' ,N'Mắt Sáng Như Sao Sắc Bén Như Dao')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3032','30% discount','kns5' ,N'Lật Đổ Ông Vua Trì Hoãn')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3033','30% discount','kns6' ,N'Nghiện Giấc Mơ Bơ Lối Mòn')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3034','30% discount','kns7' ,N'Tư Duy Tích Cực Đánh Thức Tiềm Năng')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3035','30% discount','kns8' ,N'7 Thói Quen Cản Bước Thành Công')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount3036','30% discount','kns10' ,N'50 Câu Đố Cân Bằng Não Trái – Não Phải Giúp Bạn Phát Triển Kĩ Năng Tư Duy')
GO


INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount401','40% discount','ttgt9' ,N'Chữa Lành Bằng Tâm Thức')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount402','40% discount','ttgt10' ,N'Penso Quidi Gioco – Tôi Tư Duy Là Tôi Chơi Bóng')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount403','40% discount','tshk7' ,N'Tháng Ngày Ê A')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount404','40% discount','tshk8' ,N'Đức Phúc – I Believe I Can Fly')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount405','40% discount','vndl8' ,N'Người Ê Đê: Một Xã Hội Mẫu Quyền')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount406','40% discount','ndc3' ,N'Cây To Bắt Đầu Từ Mầm Nhỏ')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount407','40% discount','ndc5' ,N'Nuôi Con Mới Thấu')
GO
INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount408','40% discount','kns3' ,N'Phương Pháp Đọc Sách Hiệu Quả')
GO



INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca11','Ky nang song','kns1' ,N'Em Đã Đúng Khi Rời Xa Anh' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca12','Ky nang song','kns2' ,N'Đột Phá – Hành Trình Thay Đổi Thế Giới Của Một Thần Đồng Khoa Học' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca13','Ky nang song','kns3' ,N'Phương Pháp Đọc Sách Hiệu Quả' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca14','Ky nang song','kns4' ,N'Mắt Sáng Như Sao Sắc Bén Như Dao' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca15','Ky nang song','kns5' ,N'Lật Đổ Ông Vua Trì Hoãn' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca16','Ky nang song','kns6' ,N'Nghiện Giấc Mơ Bơ Lối Mòn' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca17','Ky nang song','kns7' ,N'Tư Duy Tích Cực Đánh Thức Tiềm Năng','Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca18','Ky nang song','kns8' ,N'7 Thói Quen Cản Bước Thành Công','Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca19','Ky nang song','kns9' ,N'9 Bí Quyết Vận Dụng Luật Hấp Dẫn Để Thay Đổi Vận Mệnh Cuộc Đời','Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca110','Ky nang song','kns10' ,N'50 Câu Đố Cân Bằng Não Trái – Não Phải Giúp Bạn Phát Triển Kĩ Năng Tư Duy','Giai tri - Phat trien ban than')
GO

INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca21','Nuoi day con','ndc1' ,N'Cha Mẹ Nhật Dạy Con Lắng Nghe Hơn Là La Mắng' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca22','Nuoi day con','ndc2' ,N'Tất Tần Tật Các Vấn Đề Của Trẻ Từ 1 Đến 3 Tuổi' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca23','Nuoi day con','ndc3' ,N'Cây To Bắt Đầu Từ Mầm Nhỏ' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca24','Nuoi day con','ndc4' ,N'Vui Học Để Phát Triển Khả Năng Của Trẻ' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca25','Nuoi day con','ndc5' ,N'Nuôi Con Mới Thấu' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca26','Nuoi day con','ndc6' ,N'Cùng Con Khôn Lớn Tập 1 – Rèn Luyện Tính Cách' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca27','Nuoi day con','ndc7' ,N'Cẩm Nang Phòng Chống Bạo Lực Học Đường'  ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca28','Nuoi day con','ndc8' ,N'Mẹ Đoảng – Những Nốt Thăng Hài Hước Và Nốt Trầm Cảm Xúc Khi Làm Mẹ' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca29','Nuoi day con','ndc9' ,N'Nhật Ký 5 Năm Đầu Đời Của Bé' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca210','Nuoi day con','ndc10' ,N'Cha Mẹ Can Đảm – Phương Pháp Nuôi Dạy Con Mới Mẻ Và Táo Bạo' ,'Giai tri - Phat trien ban than')
GO

INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca31','Nu cong gia chanh','ncgc1' ,N'Công Thức Nấu Ăn Tặng Con Gái' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca32','Nu cong gia chanh','ncgc2' ,N'999 Mẹo Hay Trong Cuộc Sống' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca33','Nu cong gia chanh','ncgc3' ,N'500 Món Chay Thanh Tịnh – Tập 6' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca34','Nu cong gia chanh','ncgc4' ,N'90 Món Mì Thông Dụng' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca35','Nu cong gia chanh','ncgc5' ,N'90 Món Gỏi' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca36','Nu cong gia chanh','ncgc6' ,N'Bí Mật Chocolate' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca37','Nu cong gia chanh','ncgc7' ,N'Bếp Của Anh' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca38','Nu cong gia chanh','ncgc8' ,N'Căn Bếp Kẹo Ngọt – Muôn Màu Bento' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca39','Nu cong gia chanh','ncgc9' ,N'Về Nhà Ăn Cơm' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca310','Nu cong gia chanh','ncgc10' ,N'Ahimsa – Ăn Chay Cho Thân Tâm An Lạc' ,'Giai tri - Phat trien ban than')
GO

INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca41','Am nhac - My thuat - Thoi trang','anmt1' ,N'Kỹ Thuật Vẽ Sơn Dầu' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca42','Am nhac - My thuat - Thoi trang','anmt2' ,N'100 Bản Tình Ca Nga Nổi Tiếng' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca43','Am nhac - My thuat - Thoi trang','anmt3' ,N'Tây Ban Cầm Nâng Cao' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca44','Am nhac - My thuat - Thoi trang','anmt4' ,N'Nguyễn Gia Trí – Sáng Tạo' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca45','Am nhac - My thuat - Thoi trang','anmt5' ,N'Vẽ Sơn Dầu Cho Người Mới Bắt Đầu' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca46','Am nhac - My thuat - Thoi trang','anmt6' ,N'Bí Quyết Vẽ Ký Họa' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca47','Am nhac - My thuat - Thoi trang','anmt7' ,N'Si – Sách Tranh Dành Cho Độc Giả Tự Viết Lời' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca48','Am nhac - My thuat - Thoi trang','anmt8' ,N'Phương Pháp Học Ghi-ta' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca49','Am nhac - My thuat - Thoi trang','anmt9' ,N'Bách Khoa Toàn Thư Thực Hành Hội Họa' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca410','Am nhac - My thuat - Thoi trang','anmt10' ,N'Bí Quyết Vẽ Phong Cảnh' ,'Giai tri - Phat trien ban than')
GO

INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca51','Van nghe - Du lich','vndl1' ,N'Nữ Nghệ Sĩ Tiền Phong Năm Sa Đéc Và Nghệ Thuật Sân Khấu Nam Bộ' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca52','Van nghe - Du lich','vndl2' ,N'Nét Cũ Duyên Xưa' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca53','Van nghe - Du lich','vndl3' ,N'Bốn Mùa Trên Xứ Phù Tang' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca54','Van nghe - Du lich','vndl4' ,N'Cẩm Nang Du Lịch Trung Quốc' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca55','Van nghe - Du lich','vndl5' ,N'Phẩm Cách Quốc Gia' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca56','Van nghe - Du lich','vndl6' ,N'Cẩm Nang Du Lịch Thái Lan' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca57','Van nghe - Du lich','vndl7' ,N'Miền Cổ Tích' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca58','Van nghe - Du lich','vndl8' ,N'Người Ê Đê: Một Xã Hội Mẫu Quyền' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca59','Van nghe - Du lich','vndl9' ,N'100 Ý Tưởng Thay Đổi Nhiếp Ảnh' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca510','Van nghe - Du lich','vndl10' ,N'Đờn Ca Tài Tử Nam Bộ' ,'Giai tri - Phat trien ban than')
GO


INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca61','Tieu su Hoi ky','tshk1' ,N'Meryl Streep – Nữ Hoàng Không Ngai' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca62','Tieu su Hoi ky','tshk2' ,N'Bốp À! Mẹ Bị Ung Thư' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca63','Tieu su Hoi ky','tshk3' ,N'Bão Lửa Và Cuồng Nộ','Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca64','Tieu su Hoi ky','tshk4' ,N'Đi Qua Nước Mắt Nụ Cười' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca65','Tieu su Hoi ky','tshk5' ,N'Bảo Đại – Hoàng Đế Cuối Cùng' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca66','Tieu su Hoi ky','tshk6' ,N'Tỷ Phú Bán Giày' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca67','Tieu su Hoi ky','tshk7' ,N'Tháng Ngày Ê A' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca68','Tieu su Hoi ky','tshk8' ,N'Đức Phúc – I Believe I Can Fly' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca69','Tieu su Hoi ky','tshk9' ,N'Loan – Từ Cuộc Đời Của Một Con Chim Phượng Hoàng' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca610','Tieu su Hoi ky','tshk10' ,N'Là Người Phụ Nữ Như Tôi Mong Muốn' ,'Giai tri - Phat trien ban than')
GO


INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca71','The thao - Giai tri','ttgt1' ,N'Thiền Đích Thực' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca72','The thao - Giai tri','ttgt2' ,N'Jesse Cười Và Cuộc Phiêu Lưu Hài Hước' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca73','The thao - Giai tri','ttgt3' ,N'Chuyện Diệu Kỳ Của Bọ Chét – Leo Messi' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca74','The thao - Giai tri','ttgt4' ,N'Trên Núi Chớ Tìm Non' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca75','The thao - Giai tri','ttgt5' ,N'Giáo Trình Cờ Vây Binh Gia Môn – Sơ Cấp I' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca76','The thao - Giai tri','ttgt6' ,N'Việt Nam Vô Địch' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca77','The thao - Giai tri','ttgt7' ,N'Yoga Trị 46 Bệnh' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca78','The thao - Giai tri','ttgt8' ,N'Giáo Trình Cờ Vây Binh Gia Môn – Sơ Cấp II' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca79','The thao - Giai tri','ttgt9' ,N'Chữa Lành Bằng Tâm Thức' ,'Giai tri - Phat trien ban than')
GO
INSERT INTO [CSDL1].[dbo].[tblCategory1]
           ([categoryid]
           ,[categoryname]
           ,[bookcode]
           ,[bookname]
           ,[descripton])
     VALUES('Ca710','The thao - Giai tri','ttgt10' ,N'Penso Quidi Gioco – Tôi Tư Duy Là Tôi Chơi Bóng' ,'Giai tri - Phat trien ban than')
GO





INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ttgt1' ,N'Thiền Đích Thực' ,'Shunryu Suzuki',N'NXB Hồng Đức','Ca71','The thao - Giai tri',
     '256','105.000','20% discount','true',N'Trong những bài giảng ở tuyển tập này, Shunryu Suzuki minh giải về Thiền bằng ngôn ngữ thường nhật, với tính chất u mặc và nhân ái. Trong lúc mang đến sự thân mật gần gũi – giống như một người mẹ hay một người cha đang dang tay giúp đỡ – ông khuyến khích bạn tìm kiếm con đường của riêng mình. Thay vì nhấn mạnh vào những chỉ dẫn và kỹ thuật chuyên biệt, ông đề nghị một cách hiểu sâu xa về Thiền cũng như cách để chúng ta tự thể hiện mình trọn vẹn.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ttgt2' ,N'Jesse Cười Và Cuộc Phiêu Lưu Hài Hước' ,'Jesse Peterson',N'NXB Trẻ','Ca72','The thao - Giai tri',
     '332','95.000','30% discount','true',N'Jesse là một nhà văn Canada, đã từng đi lính ở chiến trường Afghanistan, sống là và làm việc ở nhiều nơi trên thế giới trước khi đến Việt Nam. Anh từng là quản lý một Trung tâm tiếng Anh tại TP.HCM trước khi làm việc tại báo Tuổi Trẻ Cười và làm MC cho kênh truyền hình VTC 10.Jesse cũng là một hiện tượng mạng xã hội với rất nhiều người theo dõi. Nhiều báo, đài đã viết bài và làm phim về Jesse – một anh chàng vui nhộn mê phượt, dạy tiếng Anh từ thiện, rất yêu quý hàng xóm của mình.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ttgt3' ,N'Chuyện Diệu Kỳ Của Bọ Chét – Leo Messi' ,'Michael Part',N'NXB Hà Nội','Ca73','The thao - Giai tri',
     '172','117.000','20% discount','true',N'Cuốn sách kể về những câu chuyện kỳ diệu của Cậu Bé Vàng Leo Messi. Ngay từ nhỏ, Messi đã luôn mơ ước được là người kế cận của cựu danh thủ Maradona huyền thoại. Cậu sớm bộc lộ tài năng và được gia nhập học viện đào tạo cầu thủ trẻ La Masia của đội bóng hàng đầu thế giới Barcelona. Bằng nỗ lực và quyết tâm của mình, Leo Messi đã hiện thực hóa được giấc mơ thời thơ ấu của mình.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ttgt4' ,N'Trên Núi Chớ Tìm Non' ,N'Nguyễn Duy Nhiên',N'NXB Hồng Đức','Ca74','The thao - Giai tri',
     '288','129.000','20% discount','true',N'Tập hợp những bài viết ngắn, chia sẻ về những trải nghiệm thiền tập. Chúng là những kinh nghiệm, những đoạn văn, mẩu chuyện, cảm nghĩ có liên quan đến thiền tập, giới thiệu cho chúng ta một lối sống hạnh phúc, tự do. Tất cả đều là những bài pháp nhắc nhở và giúp cho ta thấy rõ lại được chính mình, trở về tĩnh lặng để tâm bình yên.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ttgt5' ,N'Giáo Trình Cờ Vây Binh Gia Môn – Sơ Cấp I' ,'Kang Zhan Bin',N'NXB Thanh Niên','Ca75','The thao - Giai tri',
     '83','68.000','30% discount','true',N'Bàn cờ Vây nhìn giống như một vũ trụ, do 360 thiên thể hợp lại mà thành. Có 19 đường dọc và 19 đường ngang trên bàn cờ, tạo nên 361 giao điểm tổng cộng. Một điểm ở trung tâm, gọi là Thiên Nguyên – tức Thái Cực, đại biểu cho trung tâm của vũ trụ. Con số 360 chính là số ngày trong một năm (âm lịch), được chia ra làm bốn góc là xuân, hạ, thu, đông. Những con cờ Đen và Trắng đại biểu cho ngày và đêm…' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ttgt6' ,N'Việt Nam Vô Địch' ,N'Nhiều Tác Giả',N'NXB Thể Thao và Du Lịch','Ca76','The thao - Giai tri',
     '264','135.000','30% discount','true',N'Quyển sách Việt Nam vô địch do TRIVIETBOOKS và Nhà xuất bản Thể thao và Du lịch thực hiện nhằm tri ân các cán bộ, ban huấn luyện cũng như các trợ lý, các bác sĩ và đặc biệt là HLV Park Hang-seo cùng 23 cầu thủ Đội tuyển Việt Nam tham dự giải AFF Cup 2018.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ttgt7' ,N'Yoga Trị 46 Bệnh' ,'Chales Anthony',N'NXB Thanh Hóa','Ca77','The thao - Giai tri',
     '125','45.000','20% discount','true',N'Yoga Trị 46 Bệnhgiới thiệu một số tư thế (toạ pháp) và cách thở tiêu biểu nhất trong thực hành Yoga giúp cho hệ thần kinh hoạt động một cách có hiệu quả. Ngoài ra, mỗi tư thế tập Yoga đều có ưu điểm tác động đến một phần nhất định của cơ thể nhằm kích thích sự hoạt động điều hoà kinh mạch.' ,'','2016')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ttgt8' ,N'Giáo Trình Cờ Vây Binh Gia Môn – Sơ Cấp II' ,'Kang Zhan Bin',N'NXB Thanh Niên','Ca78','The thao - Giai tri',
     '60','63.000','30% discount','true',N'Bàn cờ Vây nhìn giống như một vũ trụ, do 360 thiên thể hợp lại mà thành. Có 19 đường dọc và 19 đường ngang trên bàn cờ, tạo nên 361 giao điểm tổng cộng. Một điểm ở trung tâm, gọi là Thiên Nguyên – tức Thái Cực, đại biểu cho trung tâm của vũ trụ. Con số 360 chính là số ngày trong một năm (âm lịch), được chia ra làm bốn góc là xuân, hạ, thu, đông. Những con cờ Đen và Trắng đại biểu cho ngày và đêm…' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ttgt9' ,N'Chữa Lành Bằng Tâm Thức' ,'Newton Kondaveti',N'NXB Hội Nhà Văn','Ca79','The thao - Giai tri',
     '196','90.000','40% discount','true',N'Chữa Lành Bằng Tâm Thức đưa độc giả vào chuyến hành trình trở về điểm xuất phát, nơi tâm thức là nguồn gốc cơ bản cho mọi tạo vật, từ đó giúp lần ra nguồn gốc của bệnh tật. Quyển sách cung cấp những hiểu biết mạnh mẽ và công cụ thực tế để mở và giải phóng năng lượng đông cứng đang gây ra bệnh tật, nhằm lấy lại tình trạng sức khỏe hoàn hảo – trong cơ thể,tư duy và linh hồn.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ttgt10' ,N'Penso Quidi Gioco – Tôi Tư Duy Là Tôi Chơi Bóng' ,'Andrea Pirlo',N'NXB Hà Nội','Ca710','The thao - Giai tri',
     '244','147.000','40% discount','true',N'Tự truyện của Andrea Pirlo, huyền thoại của AC Milan, Juventus và đội tuyển Ý. Người khai sinh và đặt ra khái niệm Deep Lying Playmaker trong bóng đá. Luôn là niềm cảm hứng với bất kì đội bóng nào anh khoác áo, cuộc đời và sự nghiệp lẫy lừng của Pirlo luôn là mơ ước của bất kì cầu thủ nào.Tự truyện với cách hành văn tự sự đầy cảm xúc, dẫn dắt người đọc qua những cột mốc và sự kiện quan trong của cuộc đời Pirlo' ,'','2017')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('tshk1' ,N'Meryl Streep – Nữ Hoàng Không Ngai' ,'Michael Schulman',N'NXB Thế Giới','Ca61','Tieu su Hoi ky',
     '353','99.000','10% discount','true',N'Câu chuyện về nữ hoàng điện ảnh lừng lẫy với một góc nhìn mới lạ.Nhắc đến Meryl Streep là người ta nghĩ ngay đến một tượng đài bất bại trong thế giới điện ảnh Hollywood,với 20 lần được đề cử giải Oscars. Những tính từ so sánh dính lấy bà như đinh bấm: Bà chính là «Nữ thần trong giới diễn viên», người có thể hóa thân thành bất kì nhân vật nào, làm chủ mọi thể loại và bắt chước được mọi âm điệu địa phương' ,'','2017')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryname]
           ,[categoryid]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('tshk2' ,N'Bốp À! Mẹ Bị Ung Thư' ,N'Bùi Thu Thủy',N'NXB Văn Học','Ca62','Tieu su Hoi ky',
     '204','83.000','30% discount','true',N'Một nhân vật bước ra từ chương trình Điều ước thứ 7, một single mom xinh đẹp đang ngày ngày chống chọi với căn bệnh ung thư vú cùng cậu con trai 10 tuổi. Cuốn sách là câu chuyện về nghị lực sống và tình yêu thương vĩ đại của người mẹ.' ,'','2016')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('tshk3' ,N'Bão Lửa Và Cuồng Nộ' ,'Michael Wolff',N'NXB Hội Nhà Văn','Ca63','Tieu su Hoi ky',
     '400','198.000','30% discount','true',N'Quyển sách phơi bày nội tình đầy bất thường của Nhà Trắng thời Donald Trump gây chấn động toàn thế giới vừa ra mắt bạn đọc Việt Nam!' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('tshk4' ,N'Đi Qua Nước Mắt Nụ Cười' ,N'Nguyễn Đông Thức',N'NXB Hội Nhà Văn','Ca64','Tieu su Hoi ky',
     '304','148.000','30% discount','true',N'Nhà văn Nguyễn Đông Thức không có ý định gọi đứa con tinh thần này là Hồi ký, vì theo ông, đây chỉ là những trang ghi chép về mảng đời đã qua của mình, có số phần riêng nằm trong cả một thời chung của bao bạn bè đồng trang lứa.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('tshk5' ,N'Bảo Đại – Hoàng Đế Cuối Cùng' ,N'Lý Nhân Phan Thứ Lang',N'NXB Thế Giới','Ca65','Tieu su Hoi ky',
     '286','99.000','30% discount','true',N'Trong suốt chiều dài lịch sử của đất nước Việt Nam, dưới chế độ phong kiến, có những vị vua được lưu danh sử sách vì những chiến công lẫy lừng trong cuộc chiến chống giặc ngoại xâm, hay vì những công lao hiển hách trong sự nghiệp dựng nước. Cũng có người bị liệt vào hàng bạo chúa, hay mải ăn chơi sa đọa đến nỗi bị truất phế mà mất ngôi… Nhưng riêng Bảo Đại, ông hầu như được nhắc đến chỉ vì một thực tế duy nhất: ông là vị Hoàng đế cuối cùng của nước Việt Nam phong kiến.' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('tshk6' ,N'Tỷ Phú Bán Giày' ,'Tony Hsieh',N'NXB Lao Động – Xã Hội','Ca66','Tieu su Hoi ky',
     '368','139.000','30% discount','true',N'Không phải là một cuốn sách dạy cách làm giàu tuần tự theo các bước,cũng không hẳn là một cuốn sách chỉ dẫn bí quyết kinh doanh hay nghệ thuật quản lý. Là hành trình tìm ra chân lý của Hạnh phúc, Đam mê và Lợi nhuận, Tỷ phú bán giày kể câu chuyện về thành công và thất bại của tác giả từ những thương vụ kinh doanh được khởi nghiệp từ khi 9 tuổi. Những trang trại giun đất, làm cúc áo thủ công, bán pizza ở Harvard,… đã trở thành nền móng cho một LinkExchange và sau này là Zappos lừng danh.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('tshk7' ,N'Tháng Ngày Ê A' ,N'Lê Minh Hà',N'NXB Kim Đồng','Ca67','Tieu su Hoi ky',
     '312','86.000','40% discount','true',N'Ngược về thời gian gần 50 năm trước, có cả một thế hệ trẻ đã xếp gọn bút vở, tư trang lên đường chuyển từ thành thị về các vùng nông thôn để tiếp tục công việc học tập. Bố mẹ của các bạn ấy bám trụ ở thành phố hoặc cũng sơ tán theo cơ quan, nhà máy, xí nghiệp đến một vùng nào đó. Những đưa trẻ bắt đầu cuộc sống tự lập của mình giữa một môi trường tập thể và đời sống nông thôn. Thầy cô giáo cũng sơ tán theo họ để đảm bảo lớp học được duy trì.' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('tshk8' ,N'Đức Phúc – I Believe I Can Fly' ,N'Đức Phúc',N'NXB Văn Hóa – Văn Nghệ','Ca68','Tieu su Hoi ky',
     '272','125.000','40% discount','true',N'Cuốn tự truyện này viết về tuổi thơ, tuổi thiếu niên củaĐứcPhúc và cả những bước ngoặt lớn trong đời Phúc.Đó là khi anh đăng quang Giọng hát Việt, bị công chúng chê bai về ngoại hình, tiến hành giảm cân, phẫu thuật thẩm mỹ để có gương mặt ưa nhìn hơn, cũng nhờ đó mà sự nghiệp ca hát có nhiều nét khởi sắc.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('tshk9' ,N'Loan – Từ Cuộc Đời Của Một Con Chim Phượng Hoàng' ,'Isabelle Muller',N'NXB Trẻ','Ca69','Tieu su Hoi ky',
     '404','150.000','20% discount','true',N'Cuộc đời của người phụ nữ tên Loan, mẹ của tác giả. Bà đã sống qua thời kỳ chiến tranh nhiều biến động ở Việt Nam, có nhiều con, sang Pháp, An giê ri… Ở đâu bà cũng gặp nhiều thử thách lớn nhưng đều vượt qua và sống kiêu hãnh như chim phượng hoàng.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('tshk10' ,N'Là Người Phụ Nữ Như Tôi Mong Muốn' ,'Diane Von Furstenberg',N'NXB Thế Giới','Ca610','Tieu su Hoi ky',
     '301','99.000','20% discount','true',N'Diane von Furstenberg được mệnh danh là nhà thiết kế có tầm ảnh hưởng nhất nhì làng thời trang đương đại – mẹ đẻ của chiếc đầm quấn (wrap dress) huyền thoại làm mê say biết bao phụ nữ trong suốt hơn 4 thập kỷ qua.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('vndl1' ,N'Nữ Nghệ Sĩ Năm Sa Đéc Và Nghệ Thuật Sân Khấu Nam Bộ' ,N'Thiện Mộc Lan',N'NXB Tổng Hợp TP. HCM','Ca51','Van nghe - Du lich',
     '216','75.000','30% discount','true',N'Tác phẩm ghi chép trọn vẹn cuộc đời nghệ thuật của Cô Năm Sa Đéc từ hát bội đến cải lương,sang thoại kịch,rồi điện ảnh.Trưởng thành từ sân khấu hát bội,tên tuổi của Cô luôn sáng chói trên danh vị một nghệ sĩ tiền phong của sân khấu hát bội,hát cải lương. Người đời vinh danh Cô là một kiện tướng của nghệ thuật trình diễn,không nhờ thanh sắc mà chỉ trông cậy ở nghệ thuật diễn xuất.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('vndl2' ,N'Nét Cũ Duyên Xưa' ,N'Bùi Quang Thắng',N'NXB Lao Động','Ca52','Van nghe - Du lich',
     '273','79.000','30% discount','true',N'Từ khi con người đặt vào y phục những chức năng cao hơn chức năng bảo vệ thân thể người mặc thì y phục đã trở thành trang phục mang thêm chức năng trang trí,làm đẹp.Cùng với sự phát triển của xã hội loài người, trang phục còn mang thêm chức năng cao hơn nữa là truyền tải những ký hiệu văn hóa, những thông điệp phong phú về đời sống vật chất, tinh thần của mỗi cá nhân,cộng đồng xã hội.' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('vndl3' ,N'Bốn Mùa Trên Xứ Phù Tang' ,N'Nguyễn Chí Linh',N'NXB Tổng Hợp TP. HCM','Ca53','Van nghe - Du lich',
     '504','168.000','30% discount','true',N'Cuốn sách không thể thiếu với những ai yêu thích con người và văn hóa Nhật Bản, muốn đắm mình trong nguồn mỹ cảm tuyệt vời của xứ Phù Tang.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('vndl4' ,N'Cẩm Nang Du Lịch Trung Quốc' ,'Dorling Kindersley Limited',N'NXB Dân Trí','Ca54','Van nghe - Du lich',
     '658','330.000','20% discount','true',N'Cuốn cẩm nang này sẽ giúp bạn có được những trải nghiệm tuyệt vời nhất trong chuyến du lịch Trung Quốc với hàng loạt những thông tin thiết thực và gợi ý hữu ích từ các chuyên gia. Phần Giới thiệu đất nước Trung Quốc phác họa cho bạn một cái nhìn tổng thể về Trung Quốc trong bối cảnh văn hóa và lịch sử tương ứng. Tiếp theo là bảy phần giới thiệu bảy vùng địa lí của Trung Quốc, mỗi phần được chia thành nhiều chương, mỗi chương bao gồm từ một đến ba tỉnh thành.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('vndl5' ,N'Phẩm Cách Quốc Gia' ,'Fujiwara Masahiko',N'NXB Phụ Nữ','Ca55','Van nghe - Du lich',
     '268','85.000','20% discount','true',N'PHẨM CÁCH QUỐC GIA gồm 7 chương: Giới hạn của tinh thần lý tính cận đại; Nếu chỉ có logic thế giới sẽ phá sản; Hoài nghi tự do bình đẳng, dân chủ; Nhật Bản, quốc gia của cảm xúc và hình thức; Phục hồi tinh thần võ sĩ đạo; Tại sao tình cảm và hình thức lại quan trọng; Phẩm cách quốc gia.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('vndl6' ,N'Cẩm Nang Du Lịch Thái Lan' ,'Dorling Kindersley Limited',N'NXB Dân Trí','Ca56','Van nghe - Du lich',
     '512','265.000','30% discount','true',N'Cuốn cẩm nang này sẽ giúp bạn có được những trải nghiệm tuyệt vời nhất trong chuyến du lịch Thái Lan, với hàng loạt những thông tin thiết thực và gợi ý hữu ích từ các chuyên gia. Phần Giới thiệu Thái Lan phác họa cho bạn cái nhìn tổng thể về bối cảnh văn hóa và lịch sử của quốc gia này. Năm phần tiếp theo giới thiệu về năm miền địa lí của Thái Lan, cộng với Bangkok, và miêu tả các thắng cảnh quan trọng kèm theo bản đồ, hình ảnh và tranh minh họa.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('vndl7' ,N'Miền Cổ Tích' ,N'Thái Phiên',N'NXB Hồng Đức','Ca57','Van nghe - Du lich',
     '123','470.000','20% discount','true',N'Với Miền cổ tích,Thái Phiênđã dùng giai điệu của ánh sáng để viết nên bản tường ca qua 3 chương với sự chuyển tiếp khéo léo.Mở đầu bằng những khuôn hình chặt chẽ, chỉ với những đường nét tối giản và sắc độ trắng đen, những đường cong quyến rũ, dịu dàng chuyển mình sống động qua từng trang ảnh.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('vndl8' ,N'Người Ê Đê: Một Xã Hội Mẫu Quyền' ,'Anne De Hauteclocque-Howe',N'NXB Tri Thức','Ca58','Van nghe - Du lich',
     '416','175.000','40% discount','true',N'Ban đầu là một công trình nghiên cứu dân tộc học được nhà nghiên cứu Anne de Hauteclocque thực hiện vào năm 1962 về thiết chế xã hội của người Ê Đê, đặc biệt nhấn mạnh vào lý giải sự ràng buộc giữa các thành phần dân cư trong một xã hội mẫu quyền. Công trình của bà gây dấu ấn tiêu biểu ở khía cạnh thực địa, điều tra và thống kê, cũng như tham khảo kỹ lưỡng các hồ sơ luật tục,tái dựng lại sự hình thành các mối quan hệ của người Ê Đê ở Đắc Lắc.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('vndl9' ,N'100 Ý Tưởng Thay Đổi Nhiếp Ảnh' ,'Mary Warner Marien',N'NXB Dân Trí','Ca59','Van nghe - Du lich',
     '216','270.000','30% discount','true',N'Cuốn sách trình bày 100 ý tưởng trong suốt lịch sử hình thành và phát triển của nhiếp ảnh như: ảnh dương bản trực tiếp, máy xem ảnh nổi, ảnh đảo sắc, chồng ảnh… 100 ý tưởng này là những ý tưởng điển hình, bao quát phạm vi đa dạng của các ý tưởng đã đang tiếp tục định hình thực tiễn nhiếp ảnh.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('vndl10' ,N'Đờn Ca Tài Tử Nam Bộ' ,N'Nguyễn Phúc An',N'NXB Tổng Hợp TP. HCM','Ca510','Van nghe - Du lich',
     '400','145.000','20% discount','true',N'Quyển ĐỜN CA TÀI TỬ NAM BỘ KHẢO VÀ LUẬN của Nguyễn Phúc An ra đời đúng với sự mong đợi của các tầng lớp nhạc sĩ và nhạc sinh âm nhạc dân tộc Việt Nam, đặc biệt là giới mộ điệu nhạc tài tử Nam bộ! Thật thế! Nhạc tài tử Việt Nam là một loại hình nghệ thuật rất cao, trong đó có kết hợp đầy đủ tính khoa học, triết học phương Đông, nó đòi hỏi người chơi phải có một trình độ khá tốt về văn hóa, lịch sử, …' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('anmt1' ,N'Kỹ Thuật Vẽ Sơn Dầu' ,N'Nguyễn Đình Đăng',N'NXB Dân Trí','Ca41','Am nhac - My thuat - Thoi trang',
     '436','235.000','30% discount','true',N'Kỹ thuật vẽ sơn dầu là tác phẩm được tập hợp và chỉnh lý một cách hệ thống, khoa học từ hơn 40 chuyên khảo của Nguyễn Đình Đăng. Đây là cuốn sách đầu tiên do một họa sĩ Việt viết về kỹ thuật vẽ sơn dầu được xuất bản tại Việt Nam; một giáo trình chi tiết, dày dặn, đúc kết những kiến thức và kinh nghiệm thực tiễn trong hơn bốn thập niên vẽ sơn dầu của tác giả.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('anmt2' ,N'100 Bản Tình Ca Nga Nổi Tiếng' ,N'Nguyễn Thụy Kha Sưu Tầm Và Biên Soạn',N'NXB Trẻ','Ca42','Am nhac - My thuat - Thoi trang',
     '192','150.000','20% discount','true',N'Âm nhạc của Nga đã có vị trí sâu đậm trong đời sống tinh thần của dân tộc Việt sau 1954. Tác phẩm là bộ sưu tập 100 bài tình ca nổi tiếng của nước Nga bằng lời Việt và cả phần lời bằng tiếng Nga chào mừng kỷ niệm 100 năm Cách mạng Tháng Mười Nga (07/11/1917 – 07/11/2017). Xin trân trong giới thiệu cùng bạn đọc.' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('anmt3' ,N'Tây Ban Cầm Nâng Cao' ,N'Nguyễn Phong, Nam Phong',N'NXB Văn Hóa Dân Tộc','Ca43','Am nhac - My thuat - Thoi trang',
     '94','50.000','20% discount','true',N'Tây Ban Cầm Nâng Cao làmột bộ sách được soạn thảo rất công phu, tác giả qua nhiều năm kinh nghiệm dạy nhạc, đã dành nhiều thời gian công sức thực hiện.' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('anmt4' ,N'Nguyễn Gia Trí – Sáng Tạo' ,N'Nguyễn Xuân Việt',N'NXB Văn hóa – Văn nghệ','Ca44','Am nhac - My thuat - Thoi trang',
     '160','119.000','30% discount','true',N'Nhìn phổ quát, kinh nghiệm sáng tạo của Nguyễn Gia Trí trong cuốn sách này không chỉ dừng lại ở lĩnh vực nghệ thuật sơn mài mà còn truyền cảm hứng và soi sáng cho người sáng tạo ở những loại hình nghệ thuật khác, những hình thái công việc khác cần đến tinh thần sáng tạo.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('anmt5' ,N'Vẽ Sơn Dầu Cho Người Mới Bắt Đầu' ,'Mark, Mary',N'NXB Thanh Hóa','Ca45','Am nhac - My thuat - Thoi trang',
     '119','198.000','20% discount','true',N'Kể cả khi chưa bao giờ cầm cọ vẽ, bạn sẽ ngạc nhiên khi thấy việc hoàn tất một bức tranh sơn dầu không đến nỗi quá khó. Cuốn sách này dẫn dắt bạn qua những kiến thức thiết yếu như chất liệu, sắc độ, bảng màu và bố cục, với những hình ảnh minh họa hữu ích về các kỹ năng cơ bản và mọi thứ cần chuẩn bị cho một bức tranh.' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('anmt6' ,N'Bí Quyết Vẽ Ký Họa' ,N'Huỳnh Phạm Hương Trang',N'NXB Thanh Hóa','Ca46','Am nhac - My thuat - Thoi trang',
     '144','98.000','30% discount','true',N'Trong quyển sách Bí quyết vẽ ký họa này,mười lăm họa sĩ hàng đầu sẽ lần lượt trình bày cùng các bạn về những bí quyết để thực hiện thành công một bức ký họa.Các bạn sẽ dần dần tìm hiểu cách nghiên cứu và ghi nhớ các đề tài với các điệu bộ, động tác và cả cảm xúc của chúng.Ký họa sẽ giúp các bạn nắm bắt nhanh hình dáng, sắc thái và sắc độ, cũng như cách dựng hình và bố cục.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('anmt7' ,N'Si – Sách Tranh Dành Cho Độc Giả Tự Viết Lời' ,N'Trần Quốc Anh',N'NXB Trẻ','Ca47','Am nhac - My thuat - Thoi trang',
     '55','73.000','30% discount','true',N'Một chuỗi cảm xúc của cô gái đang yêu được thể hiện qua nét vẽ tươi mới của họa sĩ trẻ Trần Quốc Anh: mơ tưởng, ngóng chờ, lo âu, sợ hãi, bừng tỉnh, hy vọng, ước mong… Chính xác hơn, đó là Si, mớ xúc cảm vừa khuấy động vừa ve vuốt, đốt trái tim con người rực lên rồi dập tưới bằng nước lạnh, xong lại hong khô, cất ở nơi trang trọng.Những bức tranh không lời, dành “đất” cho độc giả cảm tác hay tự sự, giữ riêng mình hoặc gửi đến ai đó.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('anmt8' ,N'Phương Pháp Học Ghi-ta' ,N'Tạ Tấn',N'NXB Dân Trí','Ca48','Am nhac - My thuat - Thoi trang',
     '259','85.000','30% discount','true',N'Cây đàn Ghi-ta đã có từ lâu đời, trải qua nhiều thế kỷ được nghiên cứu cải tiến và hoàn chỉnh.Các phương pháp tập luyện Ghi-ta đã có sự thông nhất ở nhiều nước trên thế giới.Để phục vụ các bạn ham thích học ghita ở nước ta, sau nhiều năm làm công tác giảng dạy và biểu diễn, tác giả đã biên soạn cuốn: Phương Pháp Học Ghi-ta nhằm cung cấp tài liệu cho các bạn cần học tập và cũng có thể dùng làm tài liệu hướng dẫn.' ,'','2015')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('anmt9' ,N'Bách Khoa Toàn Thư Thực Hành Hội Họa' ,'Jean Arestein',N'NXB Thanh Hóa','Ca49','Am nhac - My thuat - Thoi trang',
     '320','198.000','30% discount','true',N'Bách khoa toàn thư thực hành hội họa sẽ giúp những người yêu thích học vẽ có thể tự học và thực hành hội họa thông qua phần lý thuyết căn bản và các bài tập từ đơn giản, từ tổng thể đến chi tiết.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('anmt10' ,N'Bí Quyết Vẽ Phong Cảnh' ,'David Lewis',N'NXB Thanh Hóa','Ca410','Am nhac - My thuat - Thoi trang',
     '141','115.000','20% discount','true',N'Cuốn sách Bí quyết vẽ phong cảnh của David Lewis sẽ giúp bạn tìm hiểu cách các hoạ sĩ vẽ phong cảnh lấy cảm hứng từ thiên nhiên để tạo ra một tác phẩm hội hoạ bằng sơn dầu và màu nước như thế nào. Qua mỗi giai đoạn làm việc của họ, bạn có thể học hỏi và rút kinh nghiệm, sau đó khởi đầu và hoàn thiện kỹ năng vẽ tranh phong cảnh của riêng mình.' ,'','2017')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ncgc1' ,N'Công Thức Nấu Ăn Tặng Con Gái' ,'Gong Ji Young',N'NXB Hà Nội','Ca31','Nu cong gia chanh',
     '305','138.000','30% discount','true',N'Vẫn luôn có những ngày như thế. Ngày con bỗng chao đảo vì một lời nói bâng quơ. Sự thật là, vì lời nói đó con đã ủ rũ suốt cả ngày. Cũng chính là ngày mọi cánh cửa hy vọng bỗng đóng sầm trước mắt con, chặn đứng mọi tia sáng của thế gian. Những hy vọng mà con từng nghĩ chỉ cần chăm chỉ cố gắng là có thể chạm tới bỗng chốc lả tả rụng rơi… Là những ngày như thế đấy.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ncgc2' ,N'999 Mẹo Hay Trong Cuộc Sống' ,N'Phạm Văn Liễn',N'NXB Hải Phòng','Ca32','Nu cong gia chanh',
     '336','60.000','30% discount','true',N'Trong gia đình, chúng ta luôn gặp phải những trở ngại, vướng mắc. Tuy đó chỉ là những chuyện lặt vặt không đáng kể nhưng lại khiến chúng ta lúng túng và tỏ ra khá vụng về khi giải quyết.Với cách trình bày ngắn gọn, khoa học, 999 Mẹo hay trong cuộc sống sẽ cung cấp những thông tin cần thiết về sức khỏe, cách chọn trường-chọn nghề, xin việc, trang trí-sửa chữa nhà cửa… cũng như những bí quyết thiết thực giúp bạn tự tin hơn trong việc xử lý mọi khó khăn thường gặp trong đời sống.' ,'','2011')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ncgc3' ,N'500 Món Chay Thanh Tịnh – Tập 6' ,N'Nguyễn Dzoãn Cẩm Vân',N'NXB Phụ Nữ','Ca33','Nu cong gia chanh',
     '63','39.000','20% discount','true',N'500 Món Chay Thanh Tịnh – Tập 6' ,'','1970')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ncgc4' ,N'90 Món Mì Thông Dụng' ,N'Thiên Kim',N'NXB Mỹ Thuật','Ca34','Nu cong gia chanh',
     '80','30.000','20% discount','true',N'Cuộc sống bận rộn dễ làm chúng ta xao nhãng bữa ăn,thế nhưng,chỉ cần dành chút thời gian bạn sẽ chế biến được những món ăn ngon, có lợi cho sức khỏe, tăng cường sinh lực. Mì là món ăn đơn giản, dễ làm, giàu dinh dưỡng.Với hình ảnh bắt mắt, lời hướng dẫn rõ ràng, dễ hiểu, sách giới thiệu đến bạn cách chọn nguyên liệu và chế biến 90 món mì vừa thông dụng vừa hấp dẫn. Bên cạnh đó, sách còn chỉ rõ cách phối hợp gia vị, cách trình bày món ăn, thời gian nấu, mẹo vặt để bạn tham khảo.' ,'','2010')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ncgc5' ,N'90 Món Gỏi' ,N'Quỳnh Chi',N'NXB Văn Hóa Thông Tin','Ca35','Nu cong gia chanh',
     '151','35.000','20% discount','true',N'90 Món Gỏi' ,'','2014')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ncgc6' ,N'Bí Mật Chocolate' ,N'Khoa Phan – Ceo Glorybites Chocolate Onefood',N'NXB Thế Giới','Ca36','Nu cong gia chanh',
     '110','99.000','30% discount','true',N'Bí mật chocolate được đúc kết từ cuộc hành trình nghiên cứu suốt 5 năm với những công thức hoàn hảo nhất của tác giả Khoa Phan và Glorybites – một cái tên không còn xa lạ khi nhắc tới chocolate Việt. Cuốn sách ĐẦU TIÊN bằng TIẾNG VIỆT về chocolate tươi hứa hẹn sẽ cùng độc giả khám phá và chinh phục thế giới lãng mạn của những viên kẹo ngọt ngào này.' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ncgc7' ,N'Bếp Của Anh' ,N'Alain Nghĩa',N'NXB Văn Hóa – Văn Nghệ','Ca37','Nu cong gia chanh',
     '108','160.000','20% discount','true',N'Cuốn sách dạy nấu ăn này là câu chuyện về một chàng trai, cũng lầy lội như nhiều chàng tuổi trẻ độc thân khác, cũng lười biếng nấu cho mình những bữa cơm và chăm “cắm quán”.Nhưng lang thang ăn mãi ở bên ngoài đến lúc phải chán,chàng bèn phát minh ra những món ăn đạt tiêu chí ngon – bổ – rẻ, vừa hợp túi tiền mà vừa hợp với các sự lười.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ncgc8' ,N'Căn Bếp Kẹo Ngọt – Muôn Màu Bento' ,'Bureneku Yukiko',N'NXB Kim Đồng','Ca38','Nu cong gia chanh',
     '80','80.000','20% discount','true',N'Những hộp cơm đầy sắc màu với đủ kiểu tạo hình đáng yêu nhưng nguyên liệu vô cùng đơn giản, dễ chế biến, được giới thiệu trong cuốn sách này sẽ là món quà thú vị, nhiều ý nghĩa mà các mẹ có thể tham khảo để mang lại niềm vui bất ngờ cho các bé. Hãy cùng chúng tôi khám phá cách chế biến những hộp cơm ngộ nghĩnh dành riêng cho các bé nào!' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ncgc9' ,N'Về Nhà Ăn Cơm' ,N'Đức Nguyễn',N'NXB Thế Giới','Ca39','Nu cong gia chanh',
     '224','189.000','30% discount','true',N'Với 45 công thức thuần chay đơn giản, dễ nấu trong Về ăn cơm- cái tên thân thương gợi lên bữa cơm gia đình đầm ấm sẽ thổi một làn gió mới vào căn bếp nhỏ trong mỗi gia đình để các bạn được tiếp thêm cảm hứng với lối ăn uống lành mạnh này cũng như sẽ đập tan được mọi định kiến của bạn về “ăn chay giả thịt”, hay ăn chay là nhạt nhẽo đã tồn tại trong tâm thức của người Việt suốt một thời gian dài.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ncgc10' ,N'Ahimsa – Ăn Chay Cho Thân Tâm An Lạc' ,N'Nhiều Tác Giả',N'NXB Phương Đông','Ca310','Nu cong gia chanh',
     '126','49.000','20% discount','true',N'“Đây là tập hợp những kiến thức về lợi ích của việc ăn chay, thiền định và sức khoẻ. Con người muốn khoẻ mạnh, sống lâu thì sức khoẻ đó phải xuất phát từ trong tâm. Tâm có an thì mới cảm thấy hạnh phúc.“Một người mong muốn khoẻ mạnh một cách toàn diện và dài lâu sẽ trở thành một người chỉ ăn trái cây và đôi lúc thực hành sống bằng khí lực, không còn cần phải huỷ hoại bất kỳ sinh mạng nào cả.' ,'','2016')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ndc1' ,N'Cha Mẹ Nhật Dạy Con Lắng Nghe Hơn Là La Mắng' ,'Mika Wakadu',N'NXB Phụ Nữ','Ca21','Nuoi day con',
     '220','89.000','30% discount','true',N'“Cuốn sách này được tác giả Mika Wakuda tổng hợp từ những buổi nói chuyện, những kinh nghiệm, những nghiên cứu và cả những trăn trở của hàng ngàn người mẹ đã tới tham dự các buổi nói chuyện, tư vấn cùng bà.' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ndc2' ,N'Tất Tần Tật Các Vấn Đề Của Trẻ Từ 1 Đến 3 Tuổi' ,'Francoise Ceccato',N'NXB Thế Giới','Ca22','Nuoi day con',
     '528','199.000','30% discount','true',N'Cuốn sách là tập hợp những lời khuyên, kinh nghiệm từ 51 chuyên gia trong lĩnh vực giáo dục và y học, từ câu chuyện về những băn khoăn của các bậc phụ huynh đến chia sẻ của những người trông trẻ hay lăng kính của các bé từng là bệnh nhân của chính tác giả và những tổng hợp của tác giả, bác sĩ Francoise Ceccato sau bao nhiêu năm tiếp cận, lắng nghe và điều trị cho các bệnh nhân nhí của mình cũng như các bậc phụ huynh' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ndc3' ,N'Cây To Bắt Đầu Từ Mầm Nhỏ' ,N'Trần Hùng John',N'NXB Phụ Nữ','Ca23','Nuoi day con',
     '260','86.000','40% discount','true',N'Cây to bắt đầu từ mầm nhỏlà một cuốn sách viết về giáo dục trẻ em, một trong những lĩnh vực đang được quan tâm hiện nay ở Việt Nam. 14 chương sách là 14 vấn đề nuôi dạy trẻ được tác giả đưa ra, vừa có tính gợi mở, so sánh, vừa có tính phản biện với những thói quen, những tư duy đã bám sâu vào cách ứng xử, giáo dục của cha mẹ Việt.' ,'','2016')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ndc4' ,N'Vui Học Để Phát Triển Khả Năng Của Trẻ' ,'Chikara Oyano',N'NXB Lao Động','Ca24','Nuoi day con',
     '169','49.000','30% discount','true',N'Trong cuộc sống, bạn sẽ tràn đầy năng lượng và lòng nhiệt tình nếu làm điều mình thích. Học tập cũng vậy, đặc biệt là đối với con trẻ. Với đứa trẻ yêu thích việc học thì dù bạn có để mặc chúng, chúng vẫn tích cực học. Học tập vui vẻ giúp trẻ có học lực tốt. Bởi vậy, điều đầu tiên bạn phải làm nếu muốn con học tốt là khiến con yêu thích việc học.Nếu làm được điều này,dần dần con bạn sẽ có khả năng tự học tốt và bạn cũng không cần phải nhắc nhở, đốc thúc con học hàng ngày nữa.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ndc5' ,N'Nuôi Con Mới Thấu' ,'Amber Dusick',N'NXB Phụ Nữ','Ca25','Nuoi day con',
     '214','129.000','40% discount','true',N'Cuốn sách này sẽ không giúp cho những khoảnh khắc chán nản của bạn dễ chịu hơn được tí nào đâu. Song, hy vọng rằng các câu chuyện kể về hai cậu con trai Cú Nhớn, Cú Bé và ông xã Cú Bố của tôi sẽ khiến bạn phải bật cười. Bạn không hề đơn độc. Và đôi khi, những khoảnh khắc tệ hại nhất lại mang đến cho bạn những ký ức tuyệt vời nhất. Làm mẹ thật diệu kỳ! Và tương tự thế, ừm, bạn biết mà.' ,'','2016')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ndc6' ,N'Cùng Con Khôn Lớn Tập 1 – Rèn Luyện Tính Cách' ,N'Kim Thư, Hạ A Giang',N'NXB Lao Động – Xã Hội','Ca26','Nuoi day con',
     '272','99.000','20% discount','true',N'Trong quá trình giáo dục con trẻ, ngoài việc quan tâm bồi dưỡng tri thức, cha mẹ cần đặt vấn đề hình thành và nuôi dưỡng nhân cách tốt lên vị trí hàng đầu. Để trẻ có được năng lực và phẩm chất đạo đức tốt, cha mẹ nên tiến hành giáo dục tính cách cho trẻ trong thời gian dài, bắt đầu từ những việc nhỏ trong sinh hoạt hàng ngày.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ndc7' ,N'Cẩm Nang Phòng Chống Bạo Lực Học Đường' ,N'Huỳnh Văn Sơn',N'NXB Giáo Dục Việt Nam','Ca27','Nuoi day con',
     '43','40.000','30% discount','true',N'Với 15 bí kíp giúp trẻ an toàn như: phòng tránh xâm hại, phòng tránh bạo lực học đường, an toàn khi ra ngoài, phòng tránh bắc cóc, an toàn khi ở nhà một mình…' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ndc8' ,N'Mẹ Đoảng Hài Hước Và Nốt Trầm Cảm Xúc Khi Làm Mẹ' ,'Saral Turner',N'NXB Hội Nhà Văn','Ca28','Nuoi day con',
     '388','109.000','20% discount','true',N'Trước đây,tôi chưa bao giờ hình dùng về việc mình sẽ trở thành một người mẹ như thế nào. Tôi chỉ thích ngắm nghía những đứa bé xinh xắn hơn là chơi cùng với chúng.' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ndc9' ,N'Nhật Ký 5 Năm Đầu Đời Của Bé' ,N'Việt Văn Book',N'NXB Phụ Nữ','Ca29','Nuoi day con',
     '48','78.000','30% discount','true',N'Cuốn Nhật ký 5 năm đầu đời của bégiúp bạn lưu giữ những khoảnh khắc tuyệt vời và những kỷ niệm đáng nhớ của bé yêu.' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ndc10' ,N'Cha Mẹ Can Đảm – Phương Pháp Nuôi Dạy Con Mới Mẻ Và Táo Bạo' ,'Shulamit Blank, Orly Fuchs Shabtai',N'NXB Lao Động','Ca210','Nuoi day con',
     '158','59.000','10% discount','true',N'Cuốn sách được viết tặng cho những ông bố, bà mẹ thường xuyên phải cho con ăn, thay bỉm, mặc quần áo và ôm con thật chặt suốt những đêm dài con mọc răng đau nhức; hay xúc động nghẹn ngào khi thấy con chập chững những bước đi đầu tiên, vươn những ngón tay bé xíu về phía mình, nhưng lại trở nên rối bời và bất an vào thời điểm cần thiết lập các giới hạn cho con.' ,'','2018')
GO

INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('kns1' ,N'Em Đã Đúng Khi Rời Xa Anh' ,'Farhana Dhalla',N'NXB Thế Giới','Ca11','Ky nang song',
     '158','89.000','20% discount','true',N'Cuốn sách thuật lại câu chuyện của chính tác giả – Farhana Dhalla – trong khoảng thời gian 1 năm sau khi cô chia tay chồng cũ vì phát hiện ra anh ngoại tình. Sự bội phản đó là một biến cố khủng khiếp mà số phận giáng xuống người phụ nữ đã làm mẹ của 3 đứa trẻ nhỏ và đang sở hữu một cuộc hôn nhân 10 năm tưởng chừng bền vững… Farhana – không phải không cố níu kéo – nhưng rốt cuộc cũng đi đến quyết định kiên quyết chia tay chồng và học cách tự vực dậy đời mình.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('kns2' ,N'Đột Phá Hành Trình Thay Đổi Thế Giới' ,'Matthew Lysiak, Jack Andraka',N'NXB Dân Trí','Ca12','Ky nang song',
     '280','99.000','30% discount','true',N'Câu chuyện của Jack không chỉ là thành tựu chói ngời mang tầm quốc tế, đó còn là câu chuyện truyền cảm hứng về nghị lực vượt qua trầm cảm, sự kỳ thị với người đồng tính. Câu chuyện của cậu truyền cảm hứng đến những người trẻ dám quyết tâm và cách tân, dám theo đuổi đến cùng giấc mơ.' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('kns3' ,N'Phương Pháp Đọc Sách Hiệu Quả' ,'Mortimer J. Adler,Charles Van Doren',N'NXB Lao Động – Xã Hội','Ca13','Ky nang song',
     '359','139.000','40% discount','true',N'Đọc sách như một nghệ thuật, ngay từ lần xuất bản đầu tiên năm 1940, đã được đánh giá là cuốn sách hướng dẫn đọc hiểu lý thú và hiệu quả nhất dành cho độc giả phổ thông. Cuốn sách đã nhanh chóng trở thành một tác phẩm kinh điển về cách đọc sách thông minh.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('kns4' ,N'Mắt Sáng Như Sao Sắc Bén Như Dao' ,'Oopsy',N'NXB Phụ Nữ','Ca14','Ky nang song',
     '184','59.000','30% discount','true',N'Ấu thơ, mắt người ta thật trong sáng, trước sự đời đều ngạc nhiên. Có người muốn giữ mãi cái ngạc nhiên đó, thành ra cứ ấp ủ một hoài niệm ấu thơ, sống đời dang dở.Trưởng thành, mắt người ta phải sắc bén, trước mọi việc phải thấu suốt. Kẻ nào không có nổi cái nhìn thấu suốt ấy, đều phải đau tiếc cho chính đời mình, không có tương lai.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('kns5' ,N'Lật Đổ Ông Vua Trì Hoãn' ,'Oopsy',N'NXB Thế Giới','Ca15','Ky nang song',
     '364','79.000','30% discount','true',N'Bạn đang là một nhân viên công sở hay một lãng tử freelancer giữa đô thị rộng lớn này? Nơi bạn đang sống là thế giới đô thị và công sở – chỗ thời gian vốn ít ỏi mà công việc thì tứ tung. Điều kì lạ là càng ở trong một chỗ ít thời giờ mà lắm áp lực như thế giới hiện đại này, các “vua trì hoãn” như thể càng có “đất” để xuất hiện nhiều, ta có thể bắt gặp họ ở khắp nơi, điển hình như chàng Thắng chúng ta đang nói đến trong cuốn sách LẬT ĐỔ ÔNG VUA TRÌ HOÃN NÀY.' ,'','2017')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('kns6' ,N'Nghiện Giấc Mơ Bơ Lối Mòn' ,N'Nguyễn Chí Hiếu',N'NXB Thế Giới','Ca16','Ky nang song',
     '316','120.000','30% discount','true',N'Đừng nghiện giấc mơ của ai đó mà hãy tìm kiếm và nghiện giấc mơ của chính mình. Chỉ khi đó, bạn mới thật sự cảm thấy mình là kẻ nghiện kiêm kẻ bơ hạnh phúc nhất thế giới.Hành trình tạo nên cuốn sách này như một chuyến thám hiểm thú vị, bởi cuốn sách mà bạn cầm trên tay là điều tác giảNguyễn Chí Hiếukhông thể hình dung trọn vẹn khi bắt tay viết những dòng đầu tiên.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('kns7' ,N'Tư Duy Tích Cực Đánh Thức Tiềm Năng' ,'Brian Tracy',N'NXB Đại Học Kinh Tế Quốc Dân','Ca17','Ky nang song',
     '272','119.000','30% discount','true',N'Thông điệp mà Tracy truyền tải trong tác phẩm này là bạn không cần phải giỏi giang xuất chúng như một ai đó. Bạn chỉ cần là chính bạn, nhưng ở một phiên bản tốt hơn, biết giải phóng nhiều hơn sức mạnh nội tại sẵn có của mình. Hãy cầm lên cuốn sách này và bước vào hành trình đánh thức tiềm năng!' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('kns8' ,N'7 Thói Quen Cản Bước Thành Công' ,'David M R Covey, Stephan M Mardyks',N'NXB Thế Giới','Ca18','Ky nang song',
     '348','139.000','30% discount','true',N'Bạn có biết rằng cuộc sống có 7 loại cạm bẫy ngăn cản bạn tiến lên phía trước và đạt được thành công? Cạm bẫy tồn tại ở bất cứ đâu, và xui xẻo là ta chỉ nhận ra mình bị rơi vào bẫy khi mọi thứ đã quá tệ hại. Liệu có cách nào để lường trước những cạm bẫy và thoát ra khỏi hố cát lún trước khi quá muộn hay không? Cuốn sách “7 thói quen cản bước thành công” sẽ chỉ cho bạn phương pháp' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('kns9' ,N'9 Bí Quyết Vận Dụng Luật Hấp Dẫn Để Đổi Đời' ,'Pam Grout',N'NXB Lao Động','Ca19','Ky nang song',
     '264','99.000','20% discount','true',N'Luật hấp dẫn khẳng định chắc chắn rằng tư duy của bạn điều khiển cuộc sống của bạn. Trong bạn luôn tồn tại một nguồn năng lượng vô hình, điều duy nhất bạn cần làm là tin tưởng vào sức mạnh nào đó. Khi bạn mong muốn một điều gì hay đang băn khoăn trước một lựa chọn quan trọng trong cuộc đời, bạn chỉ cần gọi tên điều đó, “một lòng một dạ” nghĩ về nó và chờ đợi, nguồn năng lượng vô hình sẽ giúp bạn làm tất cả các việc còn lại.' ,'','2018')
GO
INSERT INTO [CSDL1].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryid]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('kns10' ,N'50 Câu Đố Giúp Bạn Phát Triển Kĩ Năng Tư Duy' ,'Charles Phillips',N'NXB Trẻ','Ca110','Ky nang song',
     '100','35.000','30% discount','true',N'Chúng ta thường tư duy theo một trong hai cách – hoặc bằng não trái thiên về tư duy logic, phân tích vấn đề; hoặc bằng não phải, xử lý vấn đề đầy sáng tạo và trực quan. Nhưng nếu bạn vận dụng cả hai bán cầu não, khả năng tư duy của bạn sẽ được cải thiện đến đâu?50 câu đốtrong cuốn sách này sẽ giúp bạn cân bằng tư duy giữa hai não và khai thác triệt để năng lực trí tuệ của mình.' ,'','2017')
GO


INSERT INTO [CSDL].[dbo].[tblDiscount]
           ([discountid]
           ,[discountname]
           ,[bookcode]
           ,[bookname])
     VALUES('discount103','10% discount','ndc11' ,N'Cha Mẹ Can Đảm – Phương Pháp Nuôi Dạy Con Mới Mẻ Và Táo Bạo')
GO
INSERT INTO [CSDL].[dbo].[Book]
           ([bookcode]
           ,[bookname]
           ,[author]
           ,[publisher]
           ,[categoryname]
           ,[numberofpages]
           ,[price]
           ,[discountname]
           ,[available]
           ,[description]
           ,[pitcure]
           ,[publishyear])
     VALUES('ndc11' ,N'Cha Mẹ Can Đảm – Phương Pháp Nuôi Dạy Con Mới Mẻ Và Táo Bạo' ,'Charles Phillips','NXB Trẻ','Ky nang song',
     '100','35.000','10% discount','true',N'Chúng ta thường tư duy theo một trong hai cách – hoặc bằng não trái thiên về tư duy logic, phân tích vấn đề; hoặc bằng não phải, xử lý vấn đề đầy sáng tạo và trực quan. Nhưng nếu bạn vận dụng cả hai bán cầu não, khả năng tư duy của bạn sẽ được cải thiện đến đâu?50 câu đốtrong cuốn sách này sẽ giúp bạn cân bằng tư duy giữa hai não và khai thác triệt để năng lực trí tuệ của mình.' ,'','2017')
GO