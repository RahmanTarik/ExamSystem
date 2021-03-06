USE [master]
GO
/****** Object:  Database [ExamSystem]    Script Date: 20-Jun-15 11:32:37 PM ******/
CREATE DATABASE [ExamSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ExamSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ExamSystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ExamSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ExamSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ExamSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ExamSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ExamSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ExamSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ExamSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ExamSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ExamSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [ExamSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ExamSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ExamSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ExamSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ExamSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ExamSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ExamSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ExamSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ExamSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ExamSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ExamSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ExamSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ExamSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ExamSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ExamSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ExamSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ExamSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ExamSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ExamSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ExamSystem] SET  MULTI_USER 
GO
ALTER DATABASE [ExamSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ExamSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ExamSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ExamSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ExamSystem]
GO
/****** Object:  Table [dbo].[question]    Script Date: 20-Jun-15 11:32:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[question](
	[qid] [int] IDENTITY(1,1) NOT NULL,
	[sid] [int] NOT NULL,
	[question] [varchar](700) NOT NULL,
	[optionA] [varchar](150) NOT NULL,
	[optionB] [varchar](150) NOT NULL,
	[optionC] [varchar](150) NOT NULL,
	[optionD] [varchar](150) NOT NULL,
	[answer] [varchar](1) NOT NULL,
 CONSTRAINT [PK_question] PRIMARY KEY CLUSTERED 
(
	[qid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[subject]    Script Date: 20-Jun-15 11:32:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subject](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_subject] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[question] ON 

INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (17, 1, N'SQL  SERVER-2012 not includes the following system database-', N'	sqldb database', N'	tempdb database', N'	Master database', N'	Model database', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (20, 1, N'SQL SERVER stores index information in the …………. system table-', N'	sysindex', N'LLb.	systemindexs', N'	sysindexes', N'	sysind', N'C')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (22, 1, N'Microsoft  SQL SERVER NOT uses which of the following operator category?', N'	Logical operator', N'	Real operator', N'	Unary operator', N'	Bitwise operator', N'B')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (23, 1, N'A local variable is shown ……. preceeding its name-', N'	one  @ symbol', N'	two @@ symbol', N'	one # symbol', N'	two  ## symbol', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (24, 1, N'……… and …….... are the Transact- SQL Control-of-flow key words-', N'	Continue, While', N'	Continue, Stop', N'	Break, Stop', N'	While, Going to', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (28, 1, N'When a …….. clause is used, each item  in the select list must produce a single value for each group-', N'	ORDER BY', N'	GROUP', N'	GROUP IN', N'	GROUP BY', N'D')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (33, 1, N'In SQL, which command is used to remove stored  function from the database-', N'	REMOVE FUNCTION', N'	DROP FUNCTION', N'	SELECT DIFFERENT', N'	All of the above', N'B')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (34, 1, N'COUNT  function in SQL returns the number of-', N'Distinct values', N'Values', N'Groups', N'Columns', N'B')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (37, 1, N'composite key is made up of-', N' Two or more columns', N' One column', N' One super key', N' One foreign key', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (38, 1, N'	Which is called one table’s  primary key is another table ?', N'	Primary key', N'	Foreign key', N'	Unique', N'	Null', N'B')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (39, 1, N'	What operator performs pattern matching ?', N'	Assignment operator', N'	NOT operator', N'	IS NULL  operator', N'	LIKE operator', N'D')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (41, 1, N'	What is a DATABLOCK ?', N'	Smallest  Database storage unit', N'	Set of Extents', N'	Set of segments', N'	Set of blocks', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (42, 1, N'	Which character function can be used to return a specified portion of a character string ?

L', N'	SUBSTR', N'	INSTR', N'	POS', N'	SUBSTRING', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (47, 1, N'	The SQL statement SELECT SUBSTR (‘123456789’, INSTR(‘abcabcabc’,’b’),4) FROM EMP; prints-', N'	6789', N'	2345', N'	1234', N'	456789', N'B')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (48, 1, N'	---------- helps to restore the database to the pointwher if failed-', N'	Transaction log', N'	File backup', N'	Differential backups', N'	File log', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (51, 1, N'	How do we delete a login ?', N'	DELETE LOGIN login_name', N'	DISABLE LOGIN login_name', N'	DROP LOGIN login_name', N'	A login can not be deleted but only disable', N'C')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (1013, 1, N'	Which of the following is an example of a scalar subquery ?', N'	Select max(price) from products', N'	Select min(price) from products', N'	Select sum(price) from products', N'	All of these', N'D')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (1014, 1, N'hich of the following conversions  is NOT allowed either implicity or explicity using ? ', N'	varchar to decimal', N'	datetime to text', N'	date to varchar', N'	decimal to bit', N'B')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (1015, 1, N'How many primary key of one table in a database ?L', N'	One', N'	Two', N'	Three', N'	Four', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (2002, 2, N'What does HTML stand for?', N'Hyper Text Markup Language', N'Hyperlinks and Text Markup Language', N'Home Tool Markup Language', N'Hyper Text Model Language', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (2004, 2, N'Who is making the Web standards?ULL', N'Microsoft', N'Google', N'Mozilla', N'The World Wide Web Consortium', N'D')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3002, 2, N'Choose the correct HTML tag for the largest heading', N'<head>', N'<h1>', N'<heading>', N'<h6>', N'B')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3003, 2, N'What is the correct HTML tag for inserting a line break?', N'<lb>', N'<break>', N'<br>', N'<bk>', N'C')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3004, 2, N'What is the preferred way for adding a background color in HTML?', N'<body style="background-color:yellow;">', N'<background>yellow</background>', N'<body background="yellow">', N'<body background="background-color:yellow;">', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3006, 2, N'Choose the correct HTML tag to make a text bold', N'<bold>', N'<bd>', N'<b>', N'<bl>', N'C')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3007, 2, N'Choose the correct HTML tag to make a text italic', N'<italic>', N'<t>', N'<tl>', N'i>', N'D')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3020, 2, N'What is the correct HTML for creating a hyperlink?', N'<a name="http://www.w3schools.com">W3Schools.com</a>', N' href="http://www.w3schools.com">W3Schools</a>', N' url="http://www.w3schools.com">W3Schools.com</a>', N'>http://www.w3schools.com</a>', N'B')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3021, 2, N'How can you create an e-mail link?', N'<mail href="xxx@yyy">', N'<a href="mailto:xxx@yyy">', N'<a href="mailto:xxx@yyy">', N'<mail>xxx@yyy</mail>', N'B')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3022, 2, N'How can you open a link in a new tab/browser window?', N'<a href="url" target="_blank">', N'<a href="url" target="_blank">', N'<a href="url" new>', N' href="url" target=target blank>', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3023, 2, N'Which of these tags are all <table> tags?', N'<table><head><tfoot>', N'<table><tr><tt>', N'<thead><body><tr>', N'<table><tr><td>', N'D')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3024, 2, N'In HTML, inline elements are normally displayed without starting a new line.', N'True', N'False', N'Yes', N'No', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3026, 2, N'How can you make a numbered list?', N'<list>', N'<dl>', N'<ul>', N'<ol>', N'D')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3027, 2, N'What is the correct HTML for making a checkbox?', N'What is the correct HTML for making a checkbox?', N'<input type="check">', N'<checkbox>', N'<input type="checkbox">', N'D')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3028, 2, N'What is the correct HTML for making a text input field?', N'<textfield>', N'<textinput type="text">', N'<input type="textfield">', N'<input type="text">', N'D')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3029, 2, N'What is the correct HTML for making a drop-down list?', N'<input type="list">', N'<input type="dropdown">', N'<select>', N'<list>', N'C')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3030, 2, N'What is the correct HTML for making a text area?', N'<textarea>', N'<input type="textbox">', N'<input type="textarea">', N'<input type="area">', N'A')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3031, 2, N'What is the correct HTML for inserting an image?', N'<img alt="MyImage">image.gif</img>', N'<img src="image.gif" alt="MyImage">', N'<img href="image.gif" alt="MyImage">', N'<image src="image.gif" alt="MyImage">', N'B')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (3032, 2, N'What is the correct HTML for inserting a background image?', N'<body background="background.gif">', N'<body style="background-image:url(background.gif)">', N'<background img="background.gif">', N'ody background=background-image:"background.gif">', N'B')
INSERT [dbo].[question] ([qid], [sid], [question], [optionA], [optionB], [optionC], [optionD], [answer]) VALUES (4023, 2, N'How can you make a bulleted list?', N'<list>', N'<dl>', N'<ul>', N'<ol>', N'C')
SET IDENTITY_INSERT [dbo].[question] OFF
SET IDENTITY_INSERT [dbo].[subject] ON 

INSERT [dbo].[subject] ([sid], [code], [title]) VALUES (1, N'301', N'SQL SERVER-2012')
INSERT [dbo].[subject] ([sid], [code], [title]) VALUES (2, N'203', N'HTML')
SET IDENTITY_INSERT [dbo].[subject] OFF
ALTER TABLE [dbo].[question]  WITH CHECK ADD  CONSTRAINT [FK_question_subject] FOREIGN KEY([sid])
REFERENCES [dbo].[subject] ([sid])
GO
ALTER TABLE [dbo].[question] CHECK CONSTRAINT [FK_question_subject]
GO
USE [master]
GO
ALTER DATABASE [ExamSystem] SET  READ_WRITE 
GO
