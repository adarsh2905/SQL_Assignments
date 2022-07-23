USE [School]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Subject](
	[SubjectID][int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[Subject] ([SubjectName]) VALUES (N'English')
INSERT [dbo].[Subject] ([SubjectName]) VALUES (N'Hindi')
INSERT [dbo].[Subject] ([SubjectName]) VALUES (N'Mathematics')
INSERT [dbo].[Subject] ([SubjectName]) VALUES (N'Science')
INSERT [dbo].[Subject] ([SubjectName]) VALUES (N'Social Science')
INSERT [dbo].[Subject] ([SubjectName]) VALUES (N'Drawing')