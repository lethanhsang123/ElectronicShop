--create database [ElectronicShop]

USE [ElectronicShop]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [CK__Product__SalePer__59063A47]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [Status_ID_in_Status]
GO
ALTER TABLE [dbo].[UserAddress] DROP CONSTRAINT [userID_in_user_address]
GO
ALTER TABLE [dbo].[UserAddress] DROP CONSTRAINT [ship_city_in_ship_address]
GO
ALTER TABLE [dbo].[ShipInfo] DROP CONSTRAINT [ship_city_in_ship_info]
GO
ALTER TABLE [dbo].[ShipInfo] DROP CONSTRAINT [order_id_in_order]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [StatusID_in_Status]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [SellerID_in_Users]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [product_in_category]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [ManufacturerID_in_Manufacturer]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [userID_in_user_order]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [statusID_in_order_status]
GO
ALTER TABLE [dbo].[Order_Detail] DROP CONSTRAINT [productID_in_order_detail]
GO
ALTER TABLE [dbo].[Order_Detail] DROP CONSTRAINT [orderID_in_order]
GO
ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT [UserID_in_Users]
GO
ALTER TABLE [dbo].[Notifications] DROP CONSTRAINT [OrderID_in_Orders]
GO
ALTER TABLE [dbo].[Message] DROP CONSTRAINT [FK_Message_Users]
GO
ALTER TABLE [dbo].[Like_Blog] DROP CONSTRAINT [FK_Like_Blog_Users]
GO
ALTER TABLE [dbo].[Like_Blog] DROP CONSTRAINT [FK_Like_Blog_Blog]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [userID_in_user_3]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [productID_in_feedback]
GO
ALTER TABLE [dbo].[Comment_Blogs] DROP CONSTRAINT [FK_Comment_Blogs_Users]
GO
ALTER TABLE [dbo].[Comment_Blogs] DROP CONSTRAINT [FK_Comment_Blogs_Blog]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [userID_in_user]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [productID_in_product]
GO
ALTER TABLE [dbo].[Blog] DROP CONSTRAINT [SellerID_in_User]
GO
/****** Object:  Table [dbo].[Viewss]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Viewss]') AND type in (N'U'))
DROP TABLE [dbo].[Viewss]
GO
/****** Object:  Table [dbo].[UserStatus]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserStatus]') AND type in (N'U'))
DROP TABLE [dbo].[UserStatus]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserAddress]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAddress]') AND type in (N'U'))
DROP TABLE [dbo].[UserAddress]
GO
/****** Object:  Table [dbo].[ShipInfo]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShipInfo]') AND type in (N'U'))
DROP TABLE [dbo].[ShipInfo]
GO
/****** Object:  Table [dbo].[Ship]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ship]') AND type in (N'U'))
DROP TABLE [dbo].[Ship]
GO
/****** Object:  Table [dbo].[ProductStatus]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStatus]') AND type in (N'U'))
DROP TABLE [dbo].[ProductStatus]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[Order_Status]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order_Status]') AND type in (N'U'))
DROP TABLE [dbo].[Order_Status]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order_Detail]') AND type in (N'U'))
DROP TABLE [dbo].[Order_Detail]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Notifications]') AND type in (N'U'))
DROP TABLE [dbo].[Notifications]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Message]') AND type in (N'U'))
DROP TABLE [dbo].[Message]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Manufacturer]') AND type in (N'U'))
DROP TABLE [dbo].[Manufacturer]
GO
/****** Object:  Table [dbo].[Like_Blog]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Like_Blog]') AND type in (N'U'))
DROP TABLE [dbo].[Like_Blog]
GO
/****** Object:  Table [dbo].[Information]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Information]') AND type in (N'U'))
DROP TABLE [dbo].[Information]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feedback]') AND type in (N'U'))
DROP TABLE [dbo].[Feedback]
GO
/****** Object:  Table [dbo].[Comment_Blogs]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment_Blogs]') AND type in (N'U'))
DROP TABLE [dbo].[Comment_Blogs]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cart]') AND type in (N'U'))
DROP TABLE [dbo].[Cart]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 7/24/2022 9:34:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Blog]') AND type in (N'U'))
DROP TABLE [dbo].[Blog]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](2500) NULL,
	[Content] [nvarchar](max) NULL,
	[imageLink] [nvarchar](1000) NULL,
	[SellerID] [int] NULL,
	[Modife] [nvarchar](200) NULL,
	[Image] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](1000) NULL,
	[icon] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment_Blogs]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment_Blogs](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[BlogID] [int] NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[CommentDetail] [nvarchar](max) NOT NULL,
	[DateComment] [date] NOT NULL,
 CONSTRAINT [PK_Comment_Blogs] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[Star] [int] NULL,
	[FeedbackDetail] [nvarchar](2000) NULL,
	[DateComment] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Information]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[description] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[fax] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Like_Blog]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Like_Blog](
	[userID] [int] NOT NULL,
	[BlogID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[Date] [smalldatetime] NOT NULL,
	[Message] [nchar](1000) NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[OrderID] [int] NULL,
	[content] [char](1000) NULL,
	[status] [char](30) NULL,
	[time] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_ID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](1000) NOT NULL,
	[ProductPrice] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Status]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[TotalPrice] [float] NULL,
	[Note] [nvarchar](2000) NULL,
	[Status] [int] NULL,
	[DayBuy] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](1000) NULL,
	[Description] [nvarchar](2000) NULL,
	[OriginalPrice] [int] NULL,
	[SellPrice] [int] NULL,
	[SalePercent] [int] NULL,
	[imageLink] [nvarchar](1000) NULL,
	[CategoryID] [int] NULL,
	[SellerID] [int] NULL,
	[Amount] [int] NULL,
	[StatusID] [int] NULL,
	[ManufacturerID] [int] NULL,
	[height] [float] NULL,
	[width] [float] NULL,
	[weight] [float] NULL,
	[Image] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductStatus]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ship]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](1000) NULL,
	[ShipPrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipInfo]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_ID] [int] NULL,
	[CustomerName] [nvarchar](1000) NULL,
	[ShippingAddress] [nvarchar](1000) NULL,
	[ShipCityID] [int] NULL,
	[PhoneNum] [varchar](20) NULL,
	[Note] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAddress]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAddress](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ShipName] [nvarchar](500) NULL,
	[ShipAddress] [nvarchar](1000) NULL,
	[ShipCityID] [int] NULL,
	[PhoneNum] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](500) NULL,
	[Password] [nvarchar](1000) NULL,
	[email] [nvarchar](1000) NULL,
	[ActiveCode] [nvarchar](11) NULL,
	[isSeller] [int] NULL,
	[isAdmin] [int] NULL,
	[StatusID] [int] NULL,
	[Image] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserStatus]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viewss]    Script Date: 7/24/2022 9:34:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viewss](
	[vieww] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([ID], [Title], [Content], [imageLink], [SellerID], [Modife], [Image]) VALUES (1, N'Laptop “giá sinh viên” mà vẫn chuẩn nét trong từng trải nghiệm', N'Với chất lượng hoàn thiện khá tốt, thiết kế mỏng nhẹ thuận tiện cho việc di chuyển, cấu hình và hiệu năng đủ cho trải nghiệm làm việc và giải trí, chiếc laptop HP 15s-fq1107TU sẽ là lựa chọn sáng giá trong phân khúc từ 10 triệu đồng mà các bạn học sinh, sinh viên có thể dễ dàng tiếp cận.', N'sinhvienlaptop.jpg', 3, N'Với chất lượng hoàn thiện khá tốt, thiết kế mỏng nhẹ thuận tiện cho việc di chuyển, cấu hình và hiệu năng đủ cho trải nghiệm làm việc và giải trí...', NULL)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [imageLink], [SellerID], [Modife], [Image]) VALUES (2, N'Lợi ích của việc ngồi ghế', N'Nhân viên văn phòng phải ngồi làm việc nhiều giờ sau bàn làm việc mỗi ngày nên cần có chỗ ngồi thoải mái, dễ chịu, chính vì vậy việc đầu tư vào nội thất văn phòng để phục vụ lợi ích con người cũng như lợi ích công việc là điều cần thiết.', N'Ghengoi.png', 5, N'Nhân viên văn phòng phải ngồi làm việc nhiều giờ sau bàn làm việc mỗi ngày nên cần có.....', NULL)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [imageLink], [SellerID], [Modife], [Image]) VALUES (3, N'Cách để làm cho máy tính bạn mát hơn', N'Hãy thay keo tản nhiệt hoặc sử dụng tản nhiệt nước', N'LapHot.jpg', 3, N'Hãy thay keo tản nhiệt hoặc sử dụng tản nhiệt nước', NULL)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [imageLink], [SellerID], [Modife], [Image]) VALUES (4, N'Những chiếc card màn hình 1050ti đang là xu hướng hiện nay?', N'Do bitcoin tăng cao, các coiner(người đào tiền ảo) thu mua lại các card màn hình có cấu hình cực mạnh vậy nên chiếc card 1050ti trong mùa giá vga tăng cao được cho là bán mức giá hợp lí', N'Card màn hình MSI GTX 1650 Super GAMING X.jpg', 4, N'Do bitcoin tăng cao, các coiner(người đào tiền ảo) thu mua lại các card màn hình có cấu hình cực mạnh...', NULL)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [imageLink], [SellerID], [Modife], [Image]) VALUES (5, N'Chiếc máy in tốt nhất hiện nay', N'Máy in panasonic được sản xuất ở nhật bản được người dân rất ưa dùng và yêu thích bởi màu sắc in ra vô cùng chuẩn xác tới 99,99%', N'44245_chinh_dien_may_fax_brother_2840.jpg', 5, N'Máy in panasonic được sản xuất ở nhật bản được người dân rất ưa dùng và yêu thích bởi...', NULL)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [imageLink], [SellerID], [Modife], [Image]) VALUES (6, N'Đâu là được đánh giá cho một máy chiếu tân tiến', N'Một máy chiếu tân tiến phải có đẩy đủ các hoạt động chức năng mới nhất như tương tác với người dùng ngay trên màn chiếu mà không cần phải qua máy tính', N'44931_may_chieu_da_nang_viewsonic_pa502sp__1_.jpg', 5, N'Một máy chiếu tân tiến phải có đẩy đủ các hoạt động chức năng mới nhất...', NULL)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [imageLink], [SellerID], [Modife], [Image]) VALUES (7, N'Đánh giá Xiaomi Mi Band 7: Màn hình lớn hơn, SpO2 tự động, hàng trăm chế độ thể thao', N'Thiết kế
Xiaomi tiếp tục mang đến một thiết kế trẻ trung và nhỏ gọn cho Xiaomi Band 7 khi sử dụng chất liệu dây silicon đi kèm màn hình hình chữ nhật nhỏ gọn có thể tháo rời. Nhiều hãng sản xuất đã làm mới và phát triển rõ nét về thiết kế của chiếc vòng tay hoặc đồng hồ thông minh của họ nhưng Mi Band vẫn giữ nét riêng cho mình và được bán ra ở phân khúc giá rẻ hơn đi kèm nhiều tiện ích. Dù có một vài cải tiến ở màn hình, nhưng nhìn chung thiết kế tổng thể của Xiaomi Band 7 không có quá nhiều khác biệt so với những người tiền nhiệm của nó. Về màu sắc, Mi Band 7 sẽ đi kèm với nhiều màu dây đeo đa dạng như xanh, đen, trắng ngà… kết hợp màn hình đen thanh lịch. Vòng đeo tay mới nhất của Xiaomi sẽ đi kèm với hơn 100 mặt đồng hồ khác nhau và có thể tùy biến theo sở thích riêng của mình. Xiaomi Band 7 chỉ nặng 13.5g và kích thước nhỏ gọn, cho bạn cảm giác thoải mái khi sử dụng trong thời gian dài. Màn hình phẳng và dài sẽ không cản trở chuyển động của cổ tay, bạn có thể vận động và không có cảm nhận gì vướng lại trên tay mình. 

Vòng đeo tay Xiaomi thế hệ thứ 7 này cũng được tích hợp khả năng chống nước 5ATM, người dùng có thể đeo khi tắm hoặc thậm chí ngâm mình trong hồ bơi mà không cần phải lo ngại. Màn hình 
Xiaomi Mi Band 7 ra mắt với màn hình AMOLED lớn hơn người tiền nhiệm đôi chút và Xiaomi đã duy trì điều này kể từ Mi Band 4. Với màn hình lớn 1.62 inch, bạn có thể thao tác thoải mái và chất lượng hiển thị vô cùng mượt mà. Ngoài ra, mật độ điểm ảnh 326 PPI và độ sáng 500 nits sẽ giúp cho vòng tay này hiển thị chi tiết và tốt hơn khi sử dụng ở ngoài trời. ', N'xiaomi.jpg', 3, N'Thiết kế
Xiaomi tiếp tục mang đến một thiết kế trẻ trung và nhỏ gọn cho Xiaomi Band 7...', NULL)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [icon]) VALUES (1, N'LAPTOP', N'image/CATEGORY/laptopp.jpg')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [icon]) VALUES (2, N'PC', N'image/CATEGORY/pc.jpg')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [icon]) VALUES (3, N'THIẾT BỊ VĂN PHÒNG', N'image/CATEGORY/printerr.jpg')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [icon]) VALUES (4, N'LINH KIỆN MÁY TÍNH', N'image/CATEGORY/linhkien.jpg')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [icon]) VALUES (5, N'ĐIỆN THOẠI', N'image/CATEGORY/phone.jpg')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [icon]) VALUES (6, N'TABLET', N'image/CATEGORY/tablet.jpg')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [icon]) VALUES (7, N'PHỤ KIỆN', N'image/CATEGORY/headphonee.jpg')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment_Blogs] ON 

INSERT [dbo].[Comment_Blogs] ([CommentID], [UserID], [BlogID], [UserName], [CommentDetail], [DateComment]) VALUES (1, 4, 1, N'nguyenminhhanh', N'Thông tin đầy đủ và hữu ích', CAST(N'2022-07-13' AS Date))
INSERT [dbo].[Comment_Blogs] ([CommentID], [UserID], [BlogID], [UserName], [CommentDetail], [DateComment]) VALUES (3, 4, 1, N'nguyenminhhanh', N'Tốt ', CAST(N'2022-07-13' AS Date))
INSERT [dbo].[Comment_Blogs] ([CommentID], [UserID], [BlogID], [UserName], [CommentDetail], [DateComment]) VALUES (4, 4, 1, N'nguyenminhhanh', N'Oh woa good job', CAST(N'2022-07-14' AS Date))
INSERT [dbo].[Comment_Blogs] ([CommentID], [UserID], [BlogID], [UserName], [CommentDetail], [DateComment]) VALUES (20, 4, 1, N'nguyenminhhanh', N'okok', CAST(N'2022-07-17' AS Date))
INSERT [dbo].[Comment_Blogs] ([CommentID], [UserID], [BlogID], [UserName], [CommentDetail], [DateComment]) VALUES (21, 4, 1, N'nguyenminhhanh', N'123', CAST(N'2022-07-17' AS Date))
INSERT [dbo].[Comment_Blogs] ([CommentID], [UserID], [BlogID], [UserName], [CommentDetail], [DateComment]) VALUES (1021, 4, 1, N'nguyenminhhanh', N'oh good information', CAST(N'2022-07-18' AS Date))
INSERT [dbo].[Comment_Blogs] ([CommentID], [UserID], [BlogID], [UserName], [CommentDetail], [DateComment]) VALUES (1022, 3, 1, N'lehoangchi', N'oke fine', CAST(N'2022-07-20' AS Date))
INSERT [dbo].[Comment_Blogs] ([CommentID], [UserID], [BlogID], [UserName], [CommentDetail], [DateComment]) VALUES (1023, 4, 1, N'nguyenminhhanh', N'ok 1', CAST(N'2022-07-21' AS Date))
INSERT [dbo].[Comment_Blogs] ([CommentID], [UserID], [BlogID], [UserName], [CommentDetail], [DateComment]) VALUES (1024, 4, 3, N'nguyenminhhanh', N'ok', CAST(N'2022-07-21' AS Date))
SET IDENTITY_INSERT [dbo].[Comment_Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([ID], [UserID], [ProductID], [Star], [FeedbackDetail], [DateComment]) VALUES (7, 2, 11, 3, N'Hàng ngon , đóng gói rất chắc chắn mỗi tội củ sạc tặng kèm hơi cùi may mình còn của sạc hp chính hãng, nói chung là shop rất uy tín.', CAST(N'2022-06-08T23:48:30.407' AS DateTime))
INSERT [dbo].[Feedback] ([ID], [UserID], [ProductID], [Star], [FeedbackDetail], [DateComment]) VALUES (40, 1, 2, 2, N'Normal', CAST(N'2022-06-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([ID], [UserID], [ProductID], [Star], [FeedbackDetail], [DateComment]) VALUES (41, 1, 2, 4, N'OK', CAST(N'2022-06-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([ID], [UserID], [ProductID], [Star], [FeedbackDetail], [DateComment]) VALUES (43, 3, 3, 5, N'good', CAST(N'2022-06-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([ID], [UserID], [ProductID], [Star], [FeedbackDetail], [DateComment]) VALUES (54, 3, 3, 5, N'adadad', CAST(N'2022-07-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([ID], [UserID], [ProductID], [Star], [FeedbackDetail], [DateComment]) VALUES (1054, 3, 3, 5, N'aaaaaa', CAST(N'2022-07-18T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
INSERT [dbo].[Information] ([description], [address], [email], [phone], [fax]) VALUES (N'© 2020 Công Ty Cổ Phần Máy Tính Computer ERA', N'Số 129 + 131, phố Lê Thanh Nghị, Phường Đồng Tâm, Quận Hai Bà Trưng, Hà Nội', N'hnc@computerera.com', N'1900 1903', N'1900 1904')
GO
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (4, 2)
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (4, 7)
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (4, 4)
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (4, 3)
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (4, 1)
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (4, 5)
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (3, 4)
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (3, 3)
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (3, 5)
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (3, 6)
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (3, 7)
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (1, 4)
INSERT [dbo].[Like_Blog] ([userID], [BlogID]) VALUES (1, 3)
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (1, N'Dell Inc')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (2, N'Hewlett-Packard(HP)')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (3, N'ASUSTeK Computer Incorporated (ASUS)')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (4, N'Lenovo Group Ltd')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (5, N'Micro-Star International(MSI)')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (6, N'Vivo')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (7, N'Sonny')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (8, N'Sammsung')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (9, N'Apple')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (10, N'Kingston')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (11, N'Acer')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (12, N'Canon')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (13, N'Intel')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (14, N'Gigabyte')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (15, N'Logitech')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (16, N'Fuhlen')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (17, N'Xiaomi')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (18, N'OPPO')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (19, N'Huawei')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (20, N'Razer')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (21, N'SteelSeries')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (22, N'Corsair')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (1, 1, 1, CAST(N'2021-08-10T12:02:00' AS SmallDateTime), N'Hello Admin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (2, 3, 1, CAST(N'2021-08-10T12:20:00' AS SmallDateTime), N'Oke                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (4, 3, 2, CAST(N'2021-08-12T00:00:00' AS SmallDateTime), N'OK                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (5, 3, 1, CAST(N'2021-07-10T13:54:00' AS SmallDateTime), N'alo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (6, 1, 1, CAST(N'2022-07-12T13:11:00' AS SmallDateTime), N'bbbb                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (7, 3, 1, CAST(N'2022-07-12T12:54:00' AS SmallDateTime), N'bbb                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (8, 3, 1, CAST(N'2022-07-12T13:09:00' AS SmallDateTime), N'aaaa                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (9, 3, 1, CAST(N'2022-07-12T13:09:00' AS SmallDateTime), N'bbb                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (10, 1, 1, CAST(N'2022-07-12T13:10:00' AS SmallDateTime), N'ggggg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (11, 1, 1, CAST(N'2022-07-12T13:11:00' AS SmallDateTime), N'aaaa                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (12, 3, 1, CAST(N'2021-08-10T12:10:00' AS SmallDateTime), N'Hello, Can I help you ?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (13, 1, 1, CAST(N'2021-08-10T12:14:00' AS SmallDateTime), N'I want to buy a LAPTOP                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (14, 2, 2, CAST(N'2021-08-11T00:00:00' AS SmallDateTime), N'Hello Can You help me?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (16, 3, 3, CAST(N'2021-08-10T13:30:00' AS SmallDateTime), N'What do you want?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (18, 1, 1, CAST(N'2022-07-24T02:16:00' AS SmallDateTime), N'hello                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ')
INSERT [dbo].[Message] ([ID], [UserID], [RoomID], [Date], [Message]) VALUES (19, 3, 1, CAST(N'2022-07-24T02:16:00' AS SmallDateTime), N'alo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Detail] ON 

INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (2, 48, 2, N'Laptop Asus Gaming ROG Strix G512-IHN281T (i7 10870H/8GB RAM/512GB SSD/15.6 FHD 144hz/GTX 1650Ti 4GB/Win10/Đen)', 29000000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (3, 48, 6, N'Camera EZVIZ Outdoor CS-C3N-A0-3H2WFRL ( C3N )', 1300000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (4, 2, 2, N'Laptop Asus Gaming ROG Strix G512-IHN281T (i7 10870H/8GB RAM/512GB SSD/15.6 FHD 144hz/GTX 1650Ti 4GB/Win10/Đen)', 29000000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (35, 12, 2, N'Laptop Asus Gaming ROG Strix G512-IHN281T (i7 10870H/8GB RAM/512GB SSD/15.6 FHD 144hz/GTX 1650Ti 4GB/Win10/Đen)', 29000000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (36, 13, 6, N'Camera EZVIZ Outdoor CS-C3N-A0-3H2WFRL ( C3N )', 1300000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (37, 15, 2, N'Laptop Asus Gaming ROG Strix G512-IHN281T (i7 10870H/8GB RAM/512GB SSD/15.6 FHD 144hz/GTX 1650Ti 4GB/Win10/Đen)', 29000000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (38, 16, 6, N'Camera EZVIZ Outdoor CS-C3N-A0-3H2WFRL ( C3N )', 1300000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (39, 23, 3, N'PC GAMING FALCON 054 (R5 3600/B450/16GB RAM/256GB SSD/GTX 1660 SUPER/550W/RGB)', 20699000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (40, 24, 5, N'PC GAMING SHARK 024 (R3 4350G/B550/8GB RAM/120GB SSD/RX 570/450W/RGB', 13699000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (41, 25, 3, N'PC GAMING FALCON 054 (R5 3600/B450/16GB RAM/256GB SSD/GTX 1660 SUPER/550W/RGB)', 20699000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (42, 26, 9, N'Laptop Dell Vostro 5490 (V4I5106W) (i5 10210U/8G RAM/256GB SSD/14 inch FHD/Win 10/Xám)', 17189000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (43, 27, 7, N'Laptop Asus X409JA-EK283T (i3 1005G1/4GB RAM/256GB SSD/14 FHD/Win 10/Bạc)', 10499000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (44, 30, 5, N'PC GAMING SHARK 024 (R3 4350G/B550/8GB RAM/120GB SSD/RX 570/450W/RGB', 13699000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (45, 31, 3, N'PC GAMING FALCON 054 (R5 3600/B450/16GB RAM/256GB SSD/GTX 1660 SUPER/550W/RGB)', 20699000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (46, 32, 3, N'PC GAMING FALCON 054 (R5 3600/B450/16GB RAM/256GB SSD/GTX 1660 SUPER/550W/RGB)', 20699000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (47, 33, 8, N'PC Dựng CAD C006 (i5-10600/B460/16GB RAM/Quadro P620/240GB SSD/450w)11', 17099000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (48, 34, 7, N'Laptop Asus X409JA-EK283T (i3 1005G1/4GB RAM/256GB SSD/14 FHD/Win 10/Bạc)', 10499000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (49, 35, 3, N'PC GAMING FALCON 054 (R5 3600/B450/16GB RAM/256GB SSD/GTX 1660 SUPER/550W/RGB)', 20699000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (50, 36, 3, N'PC GAMING FALCON 054 (R5 3600/B450/16GB RAM/256GB SSD/GTX 1660 SUPER/550W/RGB)', 20699000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (51, 42, 3, N'PC GAMING FALCON 054 (R5 3600/B450/16GB RAM/256GB SSD/GTX 1660 SUPER/550W/RGB)', 20699000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (53, 43, 9, N'Laptop Dell Vostro 5490 (V4I5106W) (i5 10210U/8G RAM/256GB SSD/14 inch FHD/Win 10/Xám)', 17189000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (54, 46, 7, N'Laptop Asus X409JA-EK283T (i3 1005G1/4GB RAM/256GB SSD/14 FHD/Win 10/Bạc)', 10499000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (55, 47, 9, N'Laptop Dell Vostro 5490 (V4I5106W) (i5 10210U/8G RAM/256GB SSD/14 inch FHD/Win 10/Xám)', 17189000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (56, 48, 3, N'PC GAMING FALCON 054 (R5 3600/B450/16GB RAM/256GB SSD/GTX 1660 SUPER/550W/RGB)', 20699000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (57, 49, 5, N'PC GAMING SHARK 024 (R3 4350G/B550/8GB RAM/120GB SSD/RX 570/450W/RGB', 13699000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (58, 51, 7, N'Laptop Asus X409JA-EK283T (i3 1005G1/4GB RAM/256GB SSD/14 FHD/Win 10/Bạc)', 10499000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (59, 50, 5, N'PC GAMING SHARK 024 (R3 4350G/B550/8GB RAM/120GB SSD/RX 570/450W/RGB', 13699000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (60, 52, 8, N'PC Dựng CAD C006 (i5-10600/B460/16GB RAM/Quadro P620/240GB SSD/450w)11', 17099000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (61, 53, 9, N'Laptop Dell Vostro 5490 (V4I5106W) (i5 10210U/8G RAM/256GB SSD/14 inch FHD/Win 10/Xám)', 17189000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (62, 55, 2, N'Laptop Asus Gaming ROG Strix G512-IHN281T (i7 10870H/8GB RAM/512GB SSD/15.6 FHD 144hz/GTX 1650Ti 4GB/Win10/Đen)', 27499000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (63, 56, 7, N'Laptop Asus X409JA-EK283T (i3 1005G1/4GB RAM/256GB SSD/14 FHD/Win 10/Bạc)', 10499000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (64, 57, 6, N'Camera EZVIZ Outdoor CS-C3N-A0-3H2WFRL ( C3N )', 1190000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (65, 58, 2, N'Laptop Asus Gaming ROG Strix G512-IHN281T (i7 10870H/8GB RAM/512GB SSD/15.6 FHD 144hz/GTX 1650Ti 4GB/Win10/Đen)', 27499000, 1)
INSERT [dbo].[Order_Detail] ([ID], [Order_ID], [ProductID], [ProductName], [ProductPrice], [Quantity]) VALUES (66, 59, 3, N'PC GAMING FALCON 054 (R5 3600/B450/16GB RAM/256GB SSD/GTX 1660 SUPER/550W/RGB)', 20699000, 1)
SET IDENTITY_INSERT [dbo].[Order_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Status] ON 

INSERT [dbo].[Order_Status] ([ID], [Name]) VALUES (1, N'Waiting for Confirmation')
INSERT [dbo].[Order_Status] ([ID], [Name]) VALUES (2, N'Packaging')
INSERT [dbo].[Order_Status] ([ID], [Name]) VALUES (3, N'Delivering')
INSERT [dbo].[Order_Status] ([ID], [Name]) VALUES (4, N'Canceled')
INSERT [dbo].[Order_Status] ([ID], [Name]) VALUES (5, N'Completed')
SET IDENTITY_INSERT [dbo].[Order_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (1, 2, 7020000, NULL, 3, CAST(N'2021-06-26' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (2, 3, 7020000, NULL, 3, CAST(N'2021-06-23' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (8, 7, 8020000, NULL, 3, CAST(N'2021-06-26' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (9, 7, 1020000, NULL, 3, CAST(N'2021-06-22' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (12, 3, 6720000, NULL, 3, CAST(N'2021-06-14' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (13, 7, 17020000, N'hi', 3, CAST(N'2021-06-12' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (14, 1, 7020000, NULL, 3, CAST(N'2021-06-26' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (15, 2, 7020000, NULL, 3, CAST(N'2021-06-23' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (16, 7, 7020000, NULL, 3, CAST(N'2021-06-06' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (23, 1, 2370000, N'hello', 3, CAST(N'2021-06-23' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (24, 2, 8390000, N'black', 3, CAST(N'2021-06-06' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (25, 3, 6720000, NULL, 3, CAST(N'2021-06-14' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (26, 7, 17020000, N'hi', 3, CAST(N'2021-06-12' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (27, 7, 1020000, NULL, 3, CAST(N'2021-06-22' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (30, 3, 6720000, NULL, 3, CAST(N'2021-06-14' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (31, 7, 17020000, N'hi', 3, CAST(N'2021-06-12' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (32, 1, 7020000, NULL, 3, CAST(N'2021-06-26' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (33, 2, 7020000, NULL, 3, CAST(N'2021-06-23' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (34, 7, 7020000, NULL, 3, CAST(N'2021-06-06' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (35, 2, 7020000, NULL, 3, CAST(N'2021-06-10' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (36, 3, 7020000, NULL, 3, CAST(N'2021-06-11' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (42, 7, 8020000, NULL, 3, CAST(N'2021-06-18' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (43, 7, 1020000, NULL, 3, CAST(N'2021-06-18' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (46, 7, 17020000, N'hi', 3, CAST(N'2021-06-30' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (47, 1, 7020000, NULL, 3, CAST(N'2021-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (48, 7, 36120000, N'Ship sớm giúp mình!', 5, CAST(N'2021-06-30' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (49, 1, 40200000, N'black', 1, CAST(N'2022-01-26' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (50, 2, 70200000, N'black', 3, CAST(N'2022-02-23' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (51, 3, 60200000, N'black', 3, CAST(N'2022-03-06' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (52, 4, 70200000, N'black', 1, CAST(N'2022-04-16' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (53, 5, 70200000, N'black', 3, CAST(N'2022-05-12' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (55, 1, 20749000, N'fdsgdgds', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (56, 1, 41448000, N'KHFHFYT', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (57, 5, 50000000, N'black', 5, CAST(N'2022-06-23' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (58, 1, 40200000, N'black', 3, CAST(N'2022-01-26' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (59, 2, 70200000, N'black', 3, CAST(N'2022-02-23' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (60, 3, 60200000, N'black', 3, CAST(N'2022-03-06' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (61, 4, 70200000, N'black', 3, CAST(N'2022-04-16' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (62, 5, 70200000, N'black', 3, CAST(N'2022-05-12' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (64, 1, 34498000, N'fdsgdgds', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (65, 1, 20749000, N'd', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (66, 1, 17239000, N'KHFHFYT', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (67, 1, 10549000, N'd', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (68, 1, 13749000, N'd', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (69, 1, 20749000, N'fdsgdgds', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (70, 1, 20749000, N'fdsgdgds', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (71, 1, 20749000, N'KHFHFYT', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (72, 1, 17149000, N'fdsgdgds', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (73, 1, 17149000, N'KHFHFYT', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (74, 1, 10549000, N'KHFHFYT', 3, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (75, 1, 20749000, N'fdsgdgds', 3, CAST(N'2022-06-29' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (76, 1, 20749000, N'fdsgdgds', 3, CAST(N'2022-06-30' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (77, 1, 20749000, N'KHFHFYT', 2, CAST(N'2022-07-07' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (78, 1, 20749000, N'KHFHFYT', 1, CAST(N'2022-07-07' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (79, 1, 17239000, N'fdsgdgds', 1, CAST(N'2022-07-07' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (80, 1, 27788000, N'KHFHFYT', 1, CAST(N'2022-07-11' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (81, 1, 34498000, N'fdsgdgds', 1, CAST(N'2022-07-18' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (82, 1, 24298000, N'KHFHFYT', 1, CAST(N'2022-07-18' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (83, 1, 34388000, N'KHFHFYT', 1, CAST(N'2022-07-18' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (84, 1, 38098000, N'fdsgdgds', 1, CAST(N'2022-07-19' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (85, 1, 28789000, N'd', 1, CAST(N'2022-07-21' AS Date))
INSERT [dbo].[Orders] ([ID], [UserID], [TotalPrice], [Note], [Status], [DayBuy]) VALUES (86, 5, 50000000, N'black', 5, CAST(N'2022-06-23' AS Date))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (2, N'Laptop Asus Gaming ROG Strix G512-IHN281T (i7 10870H/8GB RAM/512GB SSD/15.6 FHD 144hz/GTX 1650Ti 4GB/Win10/Đen)', N'Laptop Asus ROG Strix G512-IAL013T nổi bật với thiết kế độc đáo và cá tính, thiết kế này được lấy cảm hứng từ BMW Designworks', 27499000, 29000000, 0, N'Laptop Asus Gaming ROG Strix G512-IHN281T.jpg', 1, 3, 99, 1, 3, 7, 3.9, 3, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (3, N'PC GAMING FALCON 054 (R5 3600/B450/16GB RAM/256GB SSD/GTX 1660 SUPER/550W/RGB)', N'Các hệ thống HNC ENTHUSIAST WATERCOOLING đều sử dụng Card màn hình Nvidia Geforce RTX để có hiệu năng chơi game mạnh mẽ nhất.', 20699000, 23000000, 10, N'PC GAMING FALCON 054.jpg', 2, 3, 30, 1, 3, 6.5, 3.7, 3, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (5, N'PC GAMING SHARK 024 (R3 4350G/B550/8GB RAM/120GB SSD/RX 570/450W/RGB', N'Các hệ thống HNC ENTHUSIAST WATERCOOLING đều sử dụng Card màn hình Nvidia Geforce RTX để có hiệu năng chơi game mạnh mẽ nhất.', 13699000, 17000000, 0, N'PC GAMING SHARK 024.jpg', 2, 3, 70, 1, 5, 7, 5, 3, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (6, N'Camera EZVIZ Outdoor CS-C3N-A0-3H2WFRL ( C3N )', N'Phát video rõ ràng với độ phân giải, tốc độ khung hình, màu sắc và chi tiết siêu việt. Webcam Logitech BRIO mang đến chất lượng Ultra HD 4K ở tốc độ 30 khung hình/giây hoặc 1080p ở tốc độ 30 hoặc 60 khung hình/giây cho độ rõ ràng, mượt mà và chi tiết vượt trội. Nhìn cận cảnh hơn với tính năng thu phóng 5 lần', 1190000, 1300000, 20, N'Camera EZVIZ Outdoor CS-C3N-A0-3H2WFRL.jfif', 4, 3, 20, 1, 15, 7, 5, 4, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (7, N'Laptop Asus X409JA-EK283T (i3 1005G1/4GB RAM/256GB SSD/14 FHD/Win 10/Bạc)', N'Laptop Asus ROG Strix G512-IAL013T nổi bật với thiết kế độc đáo và cá tính, thiết kế này được lấy cảm hứng từ BMW Designworks', 10499000, 1200000, 10, N'Laptop Asus X409JA-EK283T.jpg', 1, 3, 20, 1, 3, 7, 5, 4, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (8, N'PC Dựng CAD C006 (i5-10600/B460/16GB RAM/Quadro P620/240GB SSD/450w)11', N'Các hệ thống HNC ENTHUSIAST WATERCOOLING đều sử dụng Card màn hình Nvidia Geforce RTX để có hiệu năng chơi game mạnh mẽ nhất.', 17099000, 2000000, 0, N'PC Dựng CAD C006.png', 2, 3, 80, 1, 3, 6.7, 3.8, 2.9, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (9, N'Laptop Dell Vostro 5490 (V4I5106W) (i5 10210U/8G RAM/256GB SSD/14 inch FHD/Win 10/Xám)', N'Laptop LG Gram 14Z90N-V.AR52A5  sở hữu trọng lượng siêu nhẹ mang lại khả năng di chuyển tuyệt vời. Chỉ với 999g, bạn có thể mang máy tính đến bất kỳ nơi nào bạn muốn.', 17189000, 2000000, 10, N'Laptop Dell Vostro 5490 (V4I5106W) (i5 10210U8G RAM256GB SSD14 inch FHDWin 10Xám).jpg', 1, 3, 100, 1, 1, 5, 2, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (10, N'Laptop MSI Gaming GF63 9RCX 646VN (i5 9300H/8GB RAM/GTX 1050Ti/512GB SSD/15.6 inch FHD/Win 10))', N'Laptop LG Gram 14Z90N-V.AR52A5  sở hữu trọng lượng siêu nhẹ mang lại khả năng di chuyển tuyệt vời. Chỉ với 999g, bạn có thể mang máy tính đến bất kỳ nơi nào bạn muốn.', 18989000, 23000000, 0, N'Laptop MSI Gaming GF63 9RCX 646VN (i5 9300H8GB RAMGTX 1050Ti512GB SSD15.6 inch FHDWin 10)).jpg', 1, 3, 100, 1, 5, 6, 4, 2, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (11, N'Laptop Workstation Dell Precision 7720 (Xeon E3 1535M V6/64GB RAM/1TB SSD/Quadro P5000/17.3 inch FHD/Win 10 Pro)', N'Laptop LG Gram 14Z90N-V.AR52A5  sở hữu trọng lượng siêu nhẹ mang lại khả năng di chuyển tuyệt vời. Chỉ với 999g, bạn có thể mang máy tính đến bất kỳ nơi nào bạn muốn.', 189999000, 215900000, 10, N'Laptop Workstation Dell Precision 7720 (Xeon E3 1535M V664GB RAM1TB SSDQuadro P500017.3 inch FHDWin 10 Pro)).png', 1, 3, 100, 1, 1, 8, 5, 3, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (12, N'Laptop Asus Gaming TUF FX505DT-AL118T (R5 3550H/8GB RAM/512GB SSD/15.6 inch FHD 120Hz/GTX 1650 4GB/Win 10/Xám)', N'Laptop LG Gram 14Z90N-V.AR52A5  sở hữu trọng lượng siêu nhẹ mang lại khả năng di chuyển tuyệt vời. Chỉ với 999g, bạn có thể mang máy tính đến bất kỳ nơi nào bạn muốn.', 16999000, 2090000, 10, N'Laptop Asus Gaming TUF FX505DT-AL118T (R5 3550H8GB RAM512GB SSD15.6 inch FHD 120HzGTX 1650 4GBWin 10Xám)).jpg', 1, 3, 100, 1, 3, 7, 6, 4, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (18, N'Laptop Lenovo IdeaPad S145-15IWL (81W8001YVN) (i5 1035G1/4GB RAM/256GB SSD/15.6 inch FHD/Win 10/Grey)', N'Laptop LG Gram 14Z90N-V.AR52A5  sở hữu trọng lượng siêu nhẹ mang lại khả năng di chuyển tuyệt vời. Chỉ với 999g, bạn có thể mang máy tính đến bất kỳ nơi nào bạn muốn.', 12299000, 169000000, 15, N'49369_lenovo_ideapad_s145__7_.jpg', 1, 3, 100, 1, 4, 7.5, 5.6, 3, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (22, N'PC Trading T003 (i3-10100/B460/8GB RAM/240GB SSD/Quadro P400 x 2/450W)', N'Hệ thống PC Gaming Lion 009 với những thiết bị phần cứng như CPU Intel Pentium G6400, RAM 8GB, VGA RX 570. Đóng vai trò là những bộ máy gaming cơ bản nhất dành cho người mới bắt đầu.', 14099000, 18000000, 10, N'54512_trading_t003.png', 2, 3, 100, 1, 3, 7.5, 3.5, 3, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (23, N'PC Dựng phim P013 (i5-10400/B460/16GB RAM/RTX 2060/500GB SSD/600w)', N'Hệ thống PC Gaming Lion 009 với những thiết bị phần cứng như CPU Intel Pentium G6400, RAM 8GB, VGA RX 570. Đóng vai trò là những bộ máy gaming cơ bản nhất dành cho người mới bắt đầu.', 19999000, 25000000, 0, N'56058_pc_d___ng_phim_p013.png', 2, 3, 100, 1, 3, 6.5, 5, 3.5, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (24, N'Mainboard Asus Z11PA-D8 (Dual CPU Server & Workstation)', N'Hệ thống PC Gaming Lion 009 với những thiết bị phần cứng như CPU Intel Pentium G6400, RAM 8GB, VGA RX 570. Đóng vai trò là những bộ máy gaming cơ bản nhất dành cho người mới bắt đầu.', 15999000, 209899000, 10, N'42754_mainboard_asus_z11pa_d8_dual_cpu_server_amp_workstation_0000_1.jpg', 2, 3, 100, 1, 3, 6.5, 3.5, 3, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (25, N'CPU Intel Xeon Silver 4110 (2.1GHz turbo up to 3.0GHz, 8 nhân, 16 luồng, 11MB Cache, 85W) - Socket Intel LGA 3647', N'Hệ thống PC Gaming Lion 009 với những thiết bị phần cứng như CPU Intel Pentium G6400, RAM 8GB, VGA RX 570. Đóng vai trò là những bộ máy gaming cơ bản nhất dành cho người mới bắt đầu.', 12999000, 170890000, 10, N'40825_hnc_intel_xeon_silver_right_facing_850x850.jpg', 2, 3, 100, 1, 13, 7.5, 3.5, 3, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (26, N'Workstation Dell Precision 3630 (E2124G/16GB RAM/1TB HDD/Quadro P1000/DVDRW/K+M) (70190803)', N'Hệ thống PC Gaming Lion 009 với những thiết bị phần cứng như CPU Intel Pentium G6400, RAM 8GB, VGA RX 570. Đóng vai trò là những bộ máy gaming cơ bản nhất dành cho người mới bắt đầu.', 28999000, 32000890, 15, N'48265_dell_precision_3630_021.jpg', 2, 3, 100, 1, 1, 6.5, 3.2, 2.9, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (27, N'Mainboard Gigabyte C246_WU4', N'Hệ thống PC Gaming Lion 009 với những thiết bị phần cứng như CPU Intel Pentium G6400, RAM 8GB, VGA RX 570. Đóng vai trò là những bộ máy gaming cơ bản nhất dành cho người mới bắt đầu.', 4989000, 5789000, 10, N'45417_mainboard_gigabyte_c246_wu4_0000_1.jpg', 2, 3, 100, 1, 14, 7.3, 6.2, 4, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (28, N'Server Dell PowerEdge T140 (Xeon E-2224/8GB RAM/1TB HDD/DVDRW) - (42DEFT140-501)', N'Hệ thống PC Gaming Lion 009 với những thiết bị phần cứng như CPU Intel Pentium G6400, RAM 8GB, VGA RX 570. Đóng vai trò là những bộ máy gaming cơ bản nhất dành cho người mới bắt đầu.', 26999000, 37008900, 10, N'52600_dell_t140.jpg', 2, 3, 100, 1, 1, 6.5, 4.2, 4, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (31, N'PC Acer Aspire XC-885 (i5-8400/4G RAM/1TB HDD/DVDRW/WL/K+M/Dos) (DT.BAQSV.002)', N'Hệ thống PC Gaming Lion 009 với những thiết bị phần cứng như CPU Intel Pentium G6400, RAM 8GB, VGA RX 570. Đóng vai trò là những bộ máy gaming cơ bản nhất dành cho người mới bắt đầu.', 11099000, 15000000, 0, N'43392_pc_acer_aspire_xc_885_a__1_.jpg', 2, 3, 100, 1, 11, 6.9, 4.9, 4, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (33, N'PC HP 290-p0112d (Pentium G5420/4GB RAM/1TB HDD/DVDRW/WL/K+M/Win 10) (6DV53AA)', N'Hệ thống PC Gaming Lion 009 với những thiết bị phần cứng như CPU Intel Pentium G6400, RAM 8GB, VGA RX 570. Đóng vai trò là những bộ máy gaming cơ bản nhất dành cho người mới bắt đầu.', 7699000, 9890000, 10, N'46953_pc_hp_290_021.png', 2, 3, 100, 1, 2, 6.9, 5, 3.9, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (35, N'PC HP All In One 24-df0041d (i5-10400T/8GB RAM/512GB SSD/23.8 inch FHD/Touch/DVDRW/WL+BT/K+M/Win 10) (180P1AA)', N'Hệ thống PC Gaming Lion 009 với những thiết bị phần cứng như CPU Intel Pentium G6400, RAM 8GB, VGA RX 570. Đóng vai trò là những bộ máy gaming cơ bản nhất dành cho người mới bắt đầu.', 20549000, 25900000, 5, N'57608_hp_aio_24_df0041d_touch_df0040.jpg', 2, 3, 100, 1, 2, 6.5, 4, 3, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (37, N'PC HP Pavilion TP01-1112d (i5-10400/4GB RAM/1TB HDD/WL+BT/DVDRW/K+M/Win 10) (180S2AA)', N'Hệ thống PC Gaming Lion 009 với những thiết bị phần cứng như CPU Intel Pentium G6400, RAM 8GB, VGA RX 570. Đóng vai trò là những bộ máy gaming cơ bản nhất dành cho người mới bắt đầu.', 11989000, 1300000, 10, N'53088_pavilion_590_tp01.jpg', 2, 3, 100, 1, 2, 6.8, 4.5, 3.2, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (39, N'PC HP All in One ProOne 400 G6 (i7-10700T/8GB RAM/512GB SSD/23.8 inch/Touch/Radeon 630/DVDRW/WL+BT/K+M/Win 10) (230T5PA)', N'Hệ thống PC Gaming Lion 009 với những thiết bị phần cứng như CPU Intel Pentium G6400, RAM 8GB, VGA RX 570. Đóng vai trò là những bộ máy gaming cơ bản nhất dành cho người mới bắt đầu.', 26949000, 33890000, 15, N'56081_hp_all_in_one_proone_400_g6.jpg', 2, 3, 100, 1, 2, 7.1, 5, 3.2, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (41, N'HP LaserJet Pro M402n (C5F93A)', N'Vỏ ngoài màu trắng sang trọng, thiết kế với kiểu dáng hiện đại, nút bấm được bố trí hợp lý mạng lại vẻ đẹp và sự đơn giản dễ sử dụng', 3999000, 4310000, 10, N'36116_chinh_dien_may_in_hp_m402n_in_laser.jpg', 3, 3, 100, 1, 2, 5.5, 2.5, 1.5, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (43, N'Lọ mực XPpro dùng cho máy in laser HP, CANON (140 gam)', N'Vỏ ngoài màu trắng sang trọng, thiết kế với kiểu dáng hiện đại, nút bấm được bố trí hợp lý mạng lại vẻ đẹp và sự đơn giản dễ sử dụng', 139000, 170000, 5, N'51037_l____m___c_xppro.jpg', 3, 3, 100, 1, 2, 5.5, 2.5, 1.5, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (46, N'Máy Chiếu ACER - X118HP', N'Vỏ ngoài màu trắng sang trọng, thiết kế với kiểu dáng hiện đại, nút bấm được bố trí hợp lý mạng lại vẻ đẹp và sự đơn giản dễ sử dụng', 8789000, 1000000, 5, N'54681_may_chieu_acer_x118hp__1_.jpg', 3, 3, 100, 1, 11, 3.6, 1.8, 0.8, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (47, N'Máy Hủy Tài Liệu Silicon PS 812C', N'Vỏ ngoài màu trắng sang trọng, thiết kế với kiểu dáng hiện đại, nút bấm được bố trí hợp lý mạng lại vẻ đẹp và sự đơn giản dễ sử dụng', 1909000, 2765000, 15, N'37645_812.jpg', 3, 3, 100, 1, 7, 3.6, 1.9, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (48, N'Máy chấm công vân tay Ronal Jack F18', N'Vỏ ngoài màu trắng sang trọng, thiết kế với kiểu dáng hiện đại, nút bấm được bố trí hợp lý mạng lại vẻ đẹp và sự đơn giản dễ sử dụng', 4299000, 6000000, 15, N'48014_may_cham_cong_van_tay_ronal_jack_f18.jpg', 3, 3, 100, 1, 7, 4, 1, 0.5, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (50, N'Máy Fax Brother 2840', N'Vỏ ngoài màu trắng sang trọng, thiết kế với kiểu dáng hiện đại, nút bấm được bố trí hợp lý mạng lại vẻ đẹp và sự đơn giản dễ sử dụng', 4499000, 600000, 10, N'44245_chinh_dien_may_fax_brother_2840.jpg', 3, 3, 100, 1, 7, 3.1, 1, 0.6, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (52, N'CPU Intel Xeon Silver 4110 (2.1GHz turbo up to 3.0GHz, 8 nhân, 16 luồng, 11MB Cache, 85W) - Socket Intel LGA 3647', N'Vỏ ngoài màu trắng sang trọng, thiết kế với kiểu dáng hiện đại, nút bấm được bố trí hợp lý mạng lại vẻ đẹp và sự đơn giản dễ sử dụng', 10999000, 1500000, 5, N'40825_hnc_intel_xeon_silver_right_facing_850x850.jpg', 4, 3, 100, 1, 13, 1.5, 1, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (53, N'Nguồn FSP Power Supply HYDRO Series Model HD600 Active PFC (80 Plus Bronze/Màu Đen)', N'Vỏ ngoài màu trắng sang trọng, thiết kế với kiểu dáng hiện đại, nút bấm được bố trí hợp lý mạng lại vẻ đẹp và sự đơn giản dễ sử dụng', 1499000, 220000, 10, N'31135_nguon_fsp_hydro_series_600w_model_hd600_0001_2.jpg', 4, 3, 100, 1, 3, 1.1, 0.9, 0.5, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (54, N'Chuột Fuhlen A37GS Optical Wireless', N'Vỏ ngoài màu trắng sang trọng, thiết kế với kiểu dáng hiện đại, nút bấm được bố trí hợp lý mạng lại vẻ đẹp và sự đơn giản dễ sử dụng', 279000, 300000, 10, N'33713_mouse_fuhlen_a37gs_optical_wireless.jpg', 4, 3, 100, 1, 16, 1.7, 0.8, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (55, N'DDRam 4 Kingston ECC 32GB/2666 - KSM26RD4/32HAI Registered', N'Vỏ ngoài màu trắng sang trọng, thiết kế với kiểu dáng hiện đại, nút bấm được bố trí hợp lý mạng lại vẻ đẹp và sự đơn giản dễ sử dụng', 6190000, 10000000, 10, N'47682_kingston_ecc__32gb2666_ksm26rd432hai.jpg', 4, 3, 100, 1, 10, 1.6, 0.8, 0.5, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (56, N'Điện thoại iPhone 12 Pro 256GB', N'Thiết kế bên ngoài chứa đựng một hiệu năng cực khủng bên trong, kèm theo đó là một loạt các công nghệ ấn tượng về camera, kết nối 5G lần đầu được xuất hiện.', 34990000, 55690000, 10, N'iphone-12-pro-max-vang-new-600x600-200x200.jpg', 5, 3, 100, 1, 9, 3.5, 1.2, 0.5, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (57, N'Điện thoại Samsung Galaxy S21 5G', N'Thiết kế bên ngoài chứa đựng một hiệu năng cực khủng bên trong, kèm theo đó là một loạt các công nghệ ấn tượng về camera, kết nối 5G lần đầu được xuất hiện.', 20990000, 40000000, 10, N'samsung-galaxy-s21-tim-600x600-200x200.jpg', 5, 3, 100, 1, 8, 3.5, 1.2, 0.5, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (58, N'Điện thoại Vivo Y12s (3GB/32GB)', N'Thiết kế bên ngoài chứa đựng một hiệu năng cực khủng bên trong, kèm theo đó là một loạt các công nghệ ấn tượng về camera, kết nối 5G lần đầu được xuất hiện.', 2990000, 4000000, 10, N'vivo-y12s-den-200x200.jpg', 5, 3, 100, 1, 6, 3.6, 1.3, 0.7, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [OriginalPrice], [SellPrice], [SalePercent], [imageLink], [CategoryID], [SellerID], [Amount], [StatusID], [ManufacturerID], [height], [width], [weight], [Image]) VALUES (61, N'Điện thoại OPPO Reno5', N'Thiết kế bên ngoài chứa đựng một hiệu năng cực khủng bên trong, kèm theo đó là một loạt các công nghệ ấn tượng về camera, kết nối 5G lần đầu được xuất hiện.', 8690000, 12900000, 10, N'7cf04cfb464a9385452ed6ef24e8e450.jpg', 5, 3, 100, 1, 18, 3.7, 2, 0.5, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductStatus] ON 

INSERT [dbo].[ProductStatus] ([StatusID], [StatusName]) VALUES (1, N'Available')
INSERT [dbo].[ProductStatus] ([StatusID], [StatusName]) VALUES (2, N'StopBusiness')
SET IDENTITY_INSERT [dbo].[ProductStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Ship] ON 

INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (1, N'An Giang', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (2, N'Bà Rịa-Vũng Tàu', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (3, N'Bạc Liêu', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (4, N'Bắc Kạn', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (5, N'Bắc Giang', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (6, N'Bắc Ninh', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (7, N'Bến Tre', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (8, N'Bình Dương', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (9, N'Bình Định', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (10, N'Bình Phước', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (11, N'Bình Thuận', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (12, N'Cà Mau', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (13, N'Cao Bằng', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (14, N'Cần Thơ (TP)', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (15, N'Đà Nẵng (TP)', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (16, N'Đắk Lắk', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (17, N'Đắk Nông', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (18, N'Điện Biên', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (19, N'Đồng Nai', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (20, N'Đồng Tháp', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (21, N'Gia Lai', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (22, N'Hà Giang', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (23, N'Hà Nam', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (24, N'Hà Nội(TP)', 20000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (25, N'Hà Tây', 20000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (26, N'Hà Tĩnh', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (27, N'Hải Dương', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (28, N'Hải Phòng(TP)', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (29, N'Hòa Bình', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (30, N'Hồ Chí Minh(TP)', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (31, N'Hậu Giang', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (32, N'Hưng Yên', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (33, N'Khánh Hòa', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (34, N'Kiên Giang', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (35, N'Kon Tum', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (36, N'Lai Châu', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (37, N'Lào Cai', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (38, N'Lạng Sơn', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (39, N'Lâm Đồng', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (40, N'Long An', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (41, N'Nam Định', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (42, N'Nghệ An', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (43, N'Ninh Bình', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (44, N'Ninh Thuận', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (45, N'Phú Thọ', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (46, N'Phú Yên', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (47, N'Quảng Bình', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (48, N'Quảng Nam', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (49, N'Quảng Ngãi', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (50, N'Quảng Ninh', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (51, N'Quảng Trị', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (52, N'Sóc Trăng', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (53, N'Sơn La', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (54, N'Tây Ninh', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (55, N'Thái Bình', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (56, N'Thái Nguyên', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (57, N'Thanh Hóa', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (58, N'Thừa Thiên - Huế', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (59, N'Tiền Giang', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (60, N'Trà Vinh', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (61, N'Tuyên Quang', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (62, N'Vĩnh Long', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (63, N'Vĩnh Phúc', 50000)
INSERT [dbo].[Ship] ([id], [CityName], [ShipPrice]) VALUES (64, N'Yên Bái', 50000)
SET IDENTITY_INSERT [dbo].[Ship] OFF
GO
SET IDENTITY_INSERT [dbo].[ShipInfo] ON 

INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (1, 23, N'Pham Tyuan Hai', N'Ha phong', 1, N'0369854779', N'h')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (2, 24, N'Pham Tyuan Hai', N'Ha noi', 1, N'0369654789', N'h')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (3, 25, N'Pham Tyuan Hai', N'Ha Nam', 1, N'0369954783', N'h')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (4, 26, N'Pham Tyuan Hai', N'Ha Tinh', 1, N'0369854784', N'h')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (5, 27, N'Pham Tuan Huu', N'Vĩnh Lộc', 16, N'0987654332', N'fdsgdgds')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (6, 30, N'Pham Van Trongrthe', N'Vĩnh Lộc', 11, N'0356974556', N'd')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (7, 31, N'TUTYITYI', N'Móng Cái', 9, N'0973466897', N'KHFHFYT')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (8, 32, N'CTY', N'Móng Cái', 20, N'0973466897', N'd')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (9, 33, N'Room 2YUP', N'Móng Cái', 5, N'0323354365', N'd')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (10, 34, N'Phâm Van Hung', N'Móng Cái', 17, N'0312564797', N'fdsgdgds')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (11, 35, N'Pham Van Thuan', N'Vĩnh Lộc', 18, N'0323354365', N'fdsgdgds')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (12, 36, N'Nghiem van Thanh', N'Ha noi', 11, N'0973466897', N'KHFHFYT')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (13, 50, N'Dam Viet Hoat', N'Móng Cái', 20, N'0987654332', N'KHFHFYT')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (14, 51, N'Dam Phunog Tao', N'Ha noi', 16, N'0323354365', N'fdsgdgds')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (15, 52, N'Room 23', N'Vĩnh Lộc', 9, N'0323354365', N'fdsgdgds')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (16, 53, N'MERCUSYS_UIL', N'Móng Cái', 21, N'0987654332', N'KHFHFYT')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (17, 55, N'Vu Trong Phung', N'Ha noi', 17, N'0973466897', N'KHFHFYT')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (18, 56, N'Nguyen Minh Chau', N'Quảng Ninh', 7, N'0356974556', N'fdsgdgds')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (19, 57, N'MERCUSYS_9ATYU', N'Quảng Ninh', 18, N'0987654332', N'KHFHFYT')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (20, 58, N'Doan thanh truc', N'Ha noi', 18, N'0323354365', N'fdsgdgds')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (21, 59, N'Room 2555', N'Móng Cái', 17, N'0973466897', N'KHFHFYT')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (22, 60, N'Room 209', N'Ha noi', 19, N'0973466897', N'KHFHFYT')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (23, 61, N'A_03', N'Vĩnh Lộc', 19, N'0323354365', N'fdsgdgds')
INSERT [dbo].[ShipInfo] ([ID], [Order_ID], [CustomerName], [ShippingAddress], [ShipCityID], [PhoneNum], [Note]) VALUES (24, 61, N'Nguyen Thanh Tung', N'Quảng Ninh', 15, N'0323354365', N'd')
SET IDENTITY_INSERT [dbo].[ShipInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAddress] ON 

INSERT [dbo].[UserAddress] ([ID], [UserID], [ShipName], [ShipAddress], [ShipCityID], [PhoneNum]) VALUES (6, 27, N'Nguyen Tran Hoang', N'160 Hoang Quoc Viet, Ha Noi', 24, N'0956236487')
INSERT [dbo].[UserAddress] ([ID], [UserID], [ShipName], [ShipAddress], [ShipCityID], [PhoneNum]) VALUES (7, 7, N'Tran Tat Dat', N'25 Ham Nghi, Quan Hai Ba Trung, Ha Noi', 24, N'0958134965')
INSERT [dbo].[UserAddress] ([ID], [UserID], [ShipName], [ShipAddress], [ShipCityID], [PhoneNum]) VALUES (8, 28, N'Phung Quang Thong', N'16 Pho Hoang Hoa Than, Long Bien, Ha Noi', 24, N'0983516472')
INSERT [dbo].[UserAddress] ([ID], [UserID], [ShipName], [ShipAddress], [ShipCityID], [PhoneNum]) VALUES (9, 29, N'Dinh The Thuan', N'1 Dai lo Thang Long, Ha Noi', 24, N'0935164825')
INSERT [dbo].[UserAddress] ([ID], [UserID], [ShipName], [ShipAddress], [ShipCityID], [PhoneNum]) VALUES (10, 25, N'Can Hoang Duc', N'Vinhomes Smart City, Ha Noi', 24, N'0936323531')
SET IDENTITY_INSERT [dbo].[UserAddress] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [ActiveCode], [isSeller], [isAdmin], [StatusID], [Image]) VALUES (1, N'nguyenthegiang', N'a', N'nguyenthe.giang.775@gmail.com', N'aaaaa', 1, 1, 1, NULL)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [ActiveCode], [isSeller], [isAdmin], [StatusID], [Image]) VALUES (2, N'buingochuyen', N'a', N'HuyenBNHE150346@fpt.edu.vn', N'bbbbb', 1, 1, 1, NULL)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [ActiveCode], [isSeller], [isAdmin], [StatusID], [Image]) VALUES (3, N'lehoangchi', N'a', N'lehoangchiSeller@gmail.com', N'bbbbb', 1, 1, 1, NULL)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [ActiveCode], [isSeller], [isAdmin], [StatusID], [Image]) VALUES (4, N'nguyenminhhanh', N'1', N'nguyenminhhanhSeller@gmail.com', N'bbbbb', 0, 0, 1, NULL)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [ActiveCode], [isSeller], [isAdmin], [StatusID], [Image]) VALUES (5, N'nguyenthithanhmai', N'nguyenthithanhmai', N'maintthe150219@fpt,edu.vn', N'bbbbb', 1, 1, 1, NULL)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [ActiveCode], [isSeller], [isAdmin], [StatusID], [Image]) VALUES (7, N'trantatdat', N'trantatdat', N'DatTTHE150411@fpt.edu.vn', N'bbbbb', 1, 1, 1, NULL)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [ActiveCode], [isSeller], [isAdmin], [StatusID], [Image]) VALUES (25, N'canhoangduc', N'canhoangduc', N'DucCHHE150151@fpt.edu.vn', N'bbbbb', 1, 1, 1, NULL)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [ActiveCode], [isSeller], [isAdmin], [StatusID], [Image]) VALUES (27, N'nguyentranhoang', N'nguyentranhoang', N'HoangNTHE150691@fpt.edu.vn', N'bbbbb', 0, 0, 1, NULL)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [ActiveCode], [isSeller], [isAdmin], [StatusID], [Image]) VALUES (28, N'phungquangthong', N'phungquangthong', N'ThongPQHE150340@fpt.edu.vn', N'bbbbb', 0, 0, 1, NULL)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [email], [ActiveCode], [isSeller], [isAdmin], [StatusID], [Image]) VALUES (29, N'dinhthethuan', N'dinhthethuan', N'ThuanDTHE153590@fpt.edu.vn', N'bbbbb', 0, 0, 1, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[UserStatus] ON 

INSERT [dbo].[UserStatus] ([ID], [StatusName]) VALUES (1, N'Active')
INSERT [dbo].[UserStatus] ([ID], [StatusName]) VALUES (2, N'Locked')
INSERT [dbo].[UserStatus] ([ID], [StatusName]) VALUES (3, N'FB Login')
INSERT [dbo].[UserStatus] ([ID], [StatusName]) VALUES (4, N'Unverified')
SET IDENTITY_INSERT [dbo].[UserStatus] OFF
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [SellerID_in_User] FOREIGN KEY([SellerID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [SellerID_in_User]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [productID_in_product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [productID_in_product]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [userID_in_user] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [userID_in_user]
GO
ALTER TABLE [dbo].[Comment_Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Blogs_Blog] FOREIGN KEY([BlogID])
REFERENCES [dbo].[Blog] ([ID])
GO
ALTER TABLE [dbo].[Comment_Blogs] CHECK CONSTRAINT [FK_Comment_Blogs_Blog]
GO
ALTER TABLE [dbo].[Comment_Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Blogs_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Comment_Blogs] CHECK CONSTRAINT [FK_Comment_Blogs_Users]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [productID_in_feedback] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [productID_in_feedback]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [userID_in_user_3] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [userID_in_user_3]
GO
ALTER TABLE [dbo].[Like_Blog]  WITH CHECK ADD  CONSTRAINT [FK_Like_Blog_Blog] FOREIGN KEY([BlogID])
REFERENCES [dbo].[Blog] ([ID])
GO
ALTER TABLE [dbo].[Like_Blog] CHECK CONSTRAINT [FK_Like_Blog_Blog]
GO
ALTER TABLE [dbo].[Like_Blog]  WITH CHECK ADD  CONSTRAINT [FK_Like_Blog_Users] FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Like_Blog] CHECK CONSTRAINT [FK_Like_Blog_Users]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Users]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [OrderID_in_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [OrderID_in_Orders]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [UserID_in_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [UserID_in_Users]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [orderID_in_order] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [orderID_in_order]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [productID_in_order_detail] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [productID_in_order_detail]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [statusID_in_order_status] FOREIGN KEY([Status])
REFERENCES [dbo].[Order_Status] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [statusID_in_order_status]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [userID_in_user_order] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [userID_in_user_order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [ManufacturerID_in_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [ManufacturerID_in_Manufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [product_in_category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [product_in_category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [SellerID_in_Users] FOREIGN KEY([SellerID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [SellerID_in_Users]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [StatusID_in_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[ProductStatus] ([StatusID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [StatusID_in_Status]
GO
ALTER TABLE [dbo].[ShipInfo]  WITH CHECK ADD  CONSTRAINT [order_id_in_order] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[ShipInfo] CHECK CONSTRAINT [order_id_in_order]
GO
ALTER TABLE [dbo].[ShipInfo]  WITH CHECK ADD  CONSTRAINT [ship_city_in_ship_info] FOREIGN KEY([ShipCityID])
REFERENCES [dbo].[Ship] ([id])
GO
ALTER TABLE [dbo].[ShipInfo] CHECK CONSTRAINT [ship_city_in_ship_info]
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD  CONSTRAINT [ship_city_in_ship_address] FOREIGN KEY([ShipCityID])
REFERENCES [dbo].[Ship] ([id])
GO
ALTER TABLE [dbo].[UserAddress] CHECK CONSTRAINT [ship_city_in_ship_address]
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD  CONSTRAINT [userID_in_user_address] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserAddress] CHECK CONSTRAINT [userID_in_user_address]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [Status_ID_in_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[UserStatus] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [Status_ID_in_Status]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD CHECK  (([SalePercent]>=(0) AND [SalePercent]<=(100)))
GO
