USE [master]
GO
/****** Object:  Database [courseDesign]    Script Date: 2022/12/29 22:28:23 ******/
CREATE DATABASE [courseDesign]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'courseDesign', FILENAME = N'D:\SQLServer\MSSQL15.MSSQLSERVER\MSSQL\DATA\courseDesign.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'courseDesign_log', FILENAME = N'D:\SQLServer\MSSQL15.MSSQLSERVER\MSSQL\DATA\courseDesign_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [courseDesign] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [courseDesign].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [courseDesign] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [courseDesign] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [courseDesign] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [courseDesign] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [courseDesign] SET ARITHABORT OFF 
GO
ALTER DATABASE [courseDesign] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [courseDesign] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [courseDesign] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [courseDesign] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [courseDesign] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [courseDesign] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [courseDesign] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [courseDesign] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [courseDesign] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [courseDesign] SET  DISABLE_BROKER 
GO
ALTER DATABASE [courseDesign] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [courseDesign] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [courseDesign] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [courseDesign] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [courseDesign] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [courseDesign] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [courseDesign] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [courseDesign] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [courseDesign] SET  MULTI_USER 
GO
ALTER DATABASE [courseDesign] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [courseDesign] SET DB_CHAINING OFF 
GO
ALTER DATABASE [courseDesign] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [courseDesign] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [courseDesign] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [courseDesign] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [courseDesign] SET QUERY_STORE = OFF
GO
USE [courseDesign]
GO
/****** Object:  Table [dbo].[Achievement]    Script Date: 2022/12/29 22:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Achievement](
	[id] [int] NOT NULL,
	[type] [varchar](20) NOT NULL,
	[detail_id] [int] NOT NULL,
 CONSTRAINT [PK_Achievement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Other]    Script Date: 2022/12/29 22:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Other](
	[other_id] [int] NOT NULL,
	[other_name] [varchar](50) NOT NULL,
	[other_type] [varchar](50) NOT NULL,
	[other_time] [date] NOT NULL,
	[other_contribution] [int] NOT NULL,
	[other_proof] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Other] PRIMARY KEY CLUSTERED 
(
	[other_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paper]    Script Date: 2022/12/29 22:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paper](
	[paper_id] [int] NOT NULL,
	[paper_name] [varchar](50) NOT NULL,
	[journal_name] [varchar](100) NOT NULL,
	[paper_status] [varchar](50) NOT NULL,
	[paper_time] [date] NOT NULL,
	[index_type] [varchar](50) NOT NULL,
	[paper_library] [varchar](100) NOT NULL,
	[paper_proof] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_论文] PRIMARY KEY CLUSTERED 
(
	[paper_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patent]    Script Date: 2022/12/29 22:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patent](
	[patent_id] [int] NOT NULL,
	[patent_name] [varchar](255) NOT NULL,
	[patent_type] [varchar](255) NOT NULL,
	[patent_number] [varchar](50) NOT NULL,
	[patent_deliverytime] [date] NOT NULL,
	[patent_status] [varchar](255) NOT NULL,
	[patent_contribution] [int] NOT NULL,
	[patent_proof] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Patent] PRIMARY KEY CLUSTERED 
(
	[patent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 2022/12/29 22:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[report_id] [int] NOT NULL,
	[report_name] [varchar](50) NOT NULL,
	[report_type] [varchar](50) NOT NULL,
	[report_company] [varchar](100) NOT NULL,
	[report_time] [date] NOT NULL,
	[report_contribution] [int] NOT NULL,
	[report_proof] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_报告] PRIMARY KEY CLUSTERED 
(
	[report_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reward]    Script Date: 2022/12/29 22:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reward](
	[reward_id] [int] NOT NULL,
	[reward_name] [varchar](100) NOT NULL,
	[reward_level] [varchar](50) NOT NULL,
	[award_level] [varchar](50) NOT NULL,
	[reward_rank] [varchar](50) NOT NULL,
	[reward_time] [date] NOT NULL,
	[reward_proof] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_奖励] PRIMARY KEY CLUSTERED 
(
	[reward_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoftwareHardwarePlatform]    Script Date: 2022/12/29 22:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoftwareHardwarePlatform](
	[software_id] [int] NOT NULL,
	[software_name] [varchar](255) NOT NULL,
	[software_company] [varchar](255) NOT NULL,
	[software_time] [date] NOT NULL,
	[software_contribution] [int] NOT NULL,
	[software_proof] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_SoftwareHardwarePlatform_1] PRIMARY KEY CLUSTERED 
(
	[software_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Standard]    Script Date: 2022/12/29 22:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Standard](
	[standard_id] [int] NOT NULL,
	[standard_name] [varchar](100) NOT NULL,
	[standard_level] [varchar](50) NOT NULL,
	[standard_time] [date] NOT NULL,
	[standard_proof] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_标准] PRIMARY KEY CLUSTERED 
(
	[standard_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_achievement]    Script Date: 2022/12/29 22:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_achievement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [int] NOT NULL,
	[achievement_id] [int] NOT NULL,
	[teacher_result] [varchar](10) NOT NULL,
	[manager_result] [varchar](10) NOT NULL,
 CONSTRAINT [PK_student_achievement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeachingBooks]    Script Date: 2022/12/29 22:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachingBooks](
	[tb_id] [int] NOT NULL,
	[tb_name] [varchar](255) NOT NULL,
	[tb_publisher] [varchar](255) NOT NULL,
	[tb_publicationtime] [date] NOT NULL,
	[tb_contribution] [int] NOT NULL,
	[tb_proof] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_TeachingBooks_1] PRIMARY KEY CLUSTERED 
(
	[tb_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Achievement] ([id], [type], [detail_id]) VALUES (1, N'Paper', 7)
INSERT [dbo].[Achievement] ([id], [type], [detail_id]) VALUES (2, N'Reward', 1)
INSERT [dbo].[Achievement] ([id], [type], [detail_id]) VALUES (3, N'Paper', 1)
INSERT [dbo].[Achievement] ([id], [type], [detail_id]) VALUES (4, N'Paper', 2)
INSERT [dbo].[Achievement] ([id], [type], [detail_id]) VALUES (5, N'Paper', 3)
INSERT [dbo].[Achievement] ([id], [type], [detail_id]) VALUES (6, N'Paper', 4)
INSERT [dbo].[Achievement] ([id], [type], [detail_id]) VALUES (7, N'Paper', 5)
INSERT [dbo].[Achievement] ([id], [type], [detail_id]) VALUES (8, N'Paper', 6)
INSERT [dbo].[Achievement] ([id], [type], [detail_id]) VALUES (9, N'Standard', 1)
GO
INSERT [dbo].[Paper] ([paper_id], [paper_name], [journal_name], [paper_status], [paper_time], [index_type], [paper_library], [paper_proof]) VALUES (1, N'数据库技术', N'数据库期刊', N'录用未发表', CAST(N'2022-02-02' AS Date), N'会议论文', N'学院高质量论文库', N'file')
INSERT [dbo].[Paper] ([paper_id], [paper_name], [journal_name], [paper_status], [paper_time], [index_type], [paper_library], [paper_proof]) VALUES (2, N'数据库技术', N'数据库期刊', N'已发表', CAST(N'2022-02-02' AS Date), N'学术会议', N'学院高质量论文库', N'file')
INSERT [dbo].[Paper] ([paper_id], [paper_name], [journal_name], [paper_status], [paper_time], [index_type], [paper_library], [paper_proof]) VALUES (3, N'计算机论文', N'计算机期刊', N'录用未发表', CAST(N'2020-03-05' AS Date), N'会议论文', N'学院核心论文库', N'file')
INSERT [dbo].[Paper] ([paper_id], [paper_name], [journal_name], [paper_status], [paper_time], [index_type], [paper_library], [paper_proof]) VALUES (4, N'数据库', N'数据库期刊', N'已发表', CAST(N'2020-02-02' AS Date), N'会议论文', N'学院核心论文库', N'file')
INSERT [dbo].[Paper] ([paper_id], [paper_name], [journal_name], [paper_status], [paper_time], [index_type], [paper_library], [paper_proof]) VALUES (5, N'数据库理论', N'计算机期刊', N'录用未发表', CAST(N'2022-02-02' AS Date), N'学术会议', N'学院高质量论文库', N'file')
INSERT [dbo].[Paper] ([paper_id], [paper_name], [journal_name], [paper_status], [paper_time], [index_type], [paper_library], [paper_proof]) VALUES (6, N'数据库理论', N'计算机期刊', N'录用未发表', CAST(N'2022-01-01' AS Date), N'会议论文', N'学院核心论文库', N'file')
INSERT [dbo].[Paper] ([paper_id], [paper_name], [journal_name], [paper_status], [paper_time], [index_type], [paper_library], [paper_proof]) VALUES (7, N'计算机网络', N'计算机期刊', N'已发表', CAST(N'2022-02-02' AS Date), N'学术会议', N'学院高质量论文库', N'file')
GO
INSERT [dbo].[Reward] ([reward_id], [reward_name], [reward_level], [award_level], [reward_rank], [reward_time], [reward_proof]) VALUES (1, N'优秀学员', N'国家级', N'二等奖', N'3', CAST(N'2022-02-02' AS Date), N'file')
GO
INSERT [dbo].[Standard] ([standard_id], [standard_name], [standard_level], [standard_time], [standard_proof]) VALUES (1, N'标准', N'国家标准', CAST(N'2022-10-10' AS Date), N'file')
GO
SET IDENTITY_INSERT [dbo].[student_achievement] ON 

INSERT [dbo].[student_achievement] ([id], [sid], [achievement_id], [teacher_result], [manager_result]) VALUES (2, 201002525, 1, N'通过', N'不通过')
INSERT [dbo].[student_achievement] ([id], [sid], [achievement_id], [teacher_result], [manager_result]) VALUES (3, 20100, 2, N'不通过', N'待审核')
INSERT [dbo].[student_achievement] ([id], [sid], [achievement_id], [teacher_result], [manager_result]) VALUES (4, 20100, 3, N'不通过', N'待审核')
INSERT [dbo].[student_achievement] ([id], [sid], [achievement_id], [teacher_result], [manager_result]) VALUES (5, 201002525, 4, N'通过', N'通过')
INSERT [dbo].[student_achievement] ([id], [sid], [achievement_id], [teacher_result], [manager_result]) VALUES (6, 201002525, 5, N'不通过', N'待审核')
INSERT [dbo].[student_achievement] ([id], [sid], [achievement_id], [teacher_result], [manager_result]) VALUES (7, 20100, 6, N'通过', N'不通过')
INSERT [dbo].[student_achievement] ([id], [sid], [achievement_id], [teacher_result], [manager_result]) VALUES (8, 201002525, 7, N'不通过', N'待审核')
INSERT [dbo].[student_achievement] ([id], [sid], [achievement_id], [teacher_result], [manager_result]) VALUES (9, 20100, 8, N'通过', N'通过')
INSERT [dbo].[student_achievement] ([id], [sid], [achievement_id], [teacher_result], [manager_result]) VALUES (10, 201002525, 9, N'待审核', N'待审核')
SET IDENTITY_INSERT [dbo].[student_achievement] OFF
GO
ALTER TABLE [dbo].[student_achievement] ADD  CONSTRAINT [DF_student_achievement_teacher_result]  DEFAULT (N'待审核') FOR [teacher_result]
GO
ALTER TABLE [dbo].[student_achievement] ADD  CONSTRAINT [DF_student_achievement_manager_result]  DEFAULT (N'待审核') FOR [manager_result]
GO
ALTER TABLE [dbo].[student_achievement]  WITH CHECK ADD  CONSTRAINT [FK_student_achievement_Achievement] FOREIGN KEY([achievement_id])
REFERENCES [dbo].[Achievement] ([id])
GO
ALTER TABLE [dbo].[student_achievement] CHECK CONSTRAINT [FK_student_achievement_Achievement]
GO
ALTER TABLE [dbo].[Achievement]  WITH CHECK ADD  CONSTRAINT [CK_Achievement_type] CHECK  (([type]='Paper' OR [type]='Patent' OR [type]='Report' OR [type]='Reward' OR [type]='SoftwareHardwarePlatform' OR [type]='Standard' OR [type]='Other' OR [type]='TeachingBooks'))
GO
ALTER TABLE [dbo].[Achievement] CHECK CONSTRAINT [CK_Achievement_type]
GO
ALTER TABLE [dbo].[Paper]  WITH CHECK ADD  CONSTRAINT [CK_paper_library] CHECK  (([paper_library]='学院高质量论文库' OR [paper_library]='学院核心论文库'))
GO
ALTER TABLE [dbo].[Paper] CHECK CONSTRAINT [CK_paper_library]
GO
ALTER TABLE [dbo].[Paper]  WITH CHECK ADD  CONSTRAINT [CK_paper_status] CHECK  (([paper_status]='录用未发表' OR [paper_status]='已发表'))
GO
ALTER TABLE [dbo].[Paper] CHECK CONSTRAINT [CK_paper_status]
GO
ALTER TABLE [dbo].[Patent]  WITH CHECK ADD  CONSTRAINT [CK_patent_type] CHECK  (([patent_type]='发明专利' OR [patent_type]='实用新型专利'))
GO
ALTER TABLE [dbo].[Patent] CHECK CONSTRAINT [CK_patent_type]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [CK_report_type] CHECK  (([report_type]='规划类' OR [report_type]='设计类' OR [report_type]='服务类' OR [report_type]='其他'))
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [CK_report_type]
GO
ALTER TABLE [dbo].[Reward]  WITH CHECK ADD  CONSTRAINT [CK_award_level] CHECK  (([award_level]='特等奖' OR [award_level]='一等奖' OR [award_level]='二等奖' OR [award_level]='三等奖'))
GO
ALTER TABLE [dbo].[Reward] CHECK CONSTRAINT [CK_award_level]
GO
ALTER TABLE [dbo].[Reward]  WITH CHECK ADD  CONSTRAINT [CK_reward_level] CHECK  (([reward_level]='国家级' OR [reward_level]='省部级' OR [reward_level]='市级' OR [reward_level]='其他'))
GO
ALTER TABLE [dbo].[Reward] CHECK CONSTRAINT [CK_reward_level]
GO
ALTER TABLE [dbo].[Standard]  WITH CHECK ADD  CONSTRAINT [CK_standard_level] CHECK  (([standard_level]='国家标准' OR [standard_level]='省部级地方标准' OR [standard_level]='行业标准' OR [standard_level]='团队标准'))
GO
ALTER TABLE [dbo].[Standard] CHECK CONSTRAINT [CK_standard_level]
GO
ALTER TABLE [dbo].[student_achievement]  WITH CHECK ADD  CONSTRAINT [CK_manager_result] CHECK  (([manager_result]='通过' OR [manager_result]='不通过' OR [manager_result]='待审核'))
GO
ALTER TABLE [dbo].[student_achievement] CHECK CONSTRAINT [CK_manager_result]
GO
ALTER TABLE [dbo].[student_achievement]  WITH CHECK ADD  CONSTRAINT [CK_teacher_result] CHECK  (([teacher_result]='通过' OR [teacher_result]='不通过' OR [teacher_result]='待审核'))
GO
ALTER TABLE [dbo].[student_achievement] CHECK CONSTRAINT [CK_teacher_result]
GO
USE [master]
GO
ALTER DATABASE [courseDesign] SET  READ_WRITE 
GO
