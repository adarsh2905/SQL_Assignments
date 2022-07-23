USE [School]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Student](
	[StudentID][int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](50) NULL,
	[ClassID] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO

ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Class]
GO

INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Akhila Shree', 19)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'John Andres', 19)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Chris Evans', 19)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Rahul Sinha', 19)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Adarsh Kumar', 19)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Ashish Mishra', 19)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Anusha Kantamani', 20)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Somya Mishra', 20)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Kiara Croft', 20)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Daniel Lemsing', 20)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Joey Fernandes', 20)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Tony Stark', 20)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Tom Cruise', 21)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Leonardo Caprio', 21)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Tom Holland', 21)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Vin Diesel', 21)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Paul Walker', 21)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Sahil Aggarwal', 21)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Nisha Sharma', 22)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Sakshi Verma', 22)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Neha Tiwari', 22)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Tusar Pandey', 22)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Nupur Dwivedi', 22)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Karlee Gray', 22)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Ross Taylor', 23)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Kevin Peterson', 23)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Suresh Raina', 23)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Kylie Jennifer', 23)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Jennifer Lopez', 23)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Kylie Arthur', 23)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Sam Andres', 24)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Arthur Doughlas', 24)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Rohit Panchal', 24)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Vikram Batra', 24)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Arjun Sangwan', 24)
INSERT [dbo].[Student] ([StudentName], [ClassID]) VALUES (N'Karna Trivedi', 24)