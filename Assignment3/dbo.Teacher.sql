USE [School]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Teacher](
	[TeacherID] [int] IDENTITY(1,1) NOT NULL,
	[TeacherName] [nvarchar](50) NULL,
	[SubjectID] [int] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO

ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Subject]
GO

INSERT [dbo].[Teacher] ([TeacherName], [SubjectID]) VALUES (N'Andrew Smith', 4)
INSERT [dbo].[Teacher] ([TeacherName], [SubjectID]) VALUES (N'Mary Janes', 6)
INSERT [dbo].[Teacher] ([TeacherName], [SubjectID]) VALUES (N'Victoria Anderson', 1)
INSERT [dbo].[Teacher] ([TeacherName], [SubjectID]) VALUES (N'Linda Smith', 3)
INSERT [dbo].[Teacher] ([TeacherName], [SubjectID]) VALUES (N'Walls Jamieson', 2)
INSERT [dbo].[Teacher] ([TeacherName], [SubjectID]) VALUES (N'Neil Douglas', 5)
