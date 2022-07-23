USE [School]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TimeTable](
	[ClassID][int] NULL,
	[Day] [nvarchar](10) NULL,
	[PeriodID] [int] NULL,
	[TeacherID] [int] NULL, 
	)
GO

ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO

ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_Class]
GO

ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_Periods] FOREIGN KEY([PeriodID])
REFERENCES [dbo].[Periods] ([PeriodID])
GO

ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_Periods]
GO

ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([TeacherID])
GO

ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_Teacher]
GO


INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Monday', 1, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Monday', 2, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Monday', 3, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Monday', 4, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Monday', 5, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Monday', 6, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Monday', 2, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Monday', 1, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Monday', 4, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Monday', 5, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Monday', 6, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Monday', 3, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Monday', 3, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Monday', 4, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Monday', 1, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Monday', 6, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Monday', 2, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Monday', 5, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Monday', 4, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Monday', 5, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Monday', 6, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Monday', 1, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Monday', 3, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Monday', 2, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Monday', 5, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Monday', 6, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Monday', 2, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Monday', 3, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Monday', 1, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Monday', 4, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Monday', 6, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Monday', 3, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Monday', 5, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Monday', 2, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Monday', 4, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Monday', 1, 6)

INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Tuesday', 1, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Tuesday', 2, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Tuesday', 3, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Tuesday', 4, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Tuesday', 5, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Tuesday', 6, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Tuesday', 2, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Tuesday', 1, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Tuesday', 4, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Tuesday', 5, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Tuesday', 6, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Tuesday', 3, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Tuesday', 3, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Tuesday', 4, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Tuesday', 1, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Tuesday', 6, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Tuesday', 2, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Tuesday', 5, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Tuesday', 4, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Tuesday', 5, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Tuesday', 6, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Tuesday', 1, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Tuesday', 3, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Tuesday', 2, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Tuesday', 5, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Tuesday', 6, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Tuesday', 2, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Tuesday', 3, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Tuesday', 1, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Tuesday', 4, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Tuesday', 6, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Tuesday', 3, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Tuesday', 5, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Tuesday', 2, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Tuesday', 4, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Tuesday', 1, 6)

INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Wednesday', 1, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Wednesday', 2, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Wednesday', 3, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Wednesday', 4, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Wednesday', 5, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Wednesday', 6, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Wednesday', 2, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Wednesday', 1, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Wednesday', 4, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Wednesday', 5, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Wednesday', 6, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Wednesday', 3, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Wednesday', 3, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Wednesday', 4, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Wednesday', 1, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Wednesday', 6, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Wednesday', 2, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Wednesday', 5, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Wednesday', 4, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Wednesday', 5, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Wednesday', 6, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Wednesday', 1, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Wednesday', 3, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Wednesday', 2, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Wednesday', 5, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Wednesday', 6, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Wednesday', 2, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Wednesday', 3, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Wednesday', 1, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Wednesday', 4, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Wednesday', 6, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Wednesday', 3, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Wednesday', 5, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Wednesday', 2, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Wednesday', 4, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Wednesday', 1, 6)

INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Thursday', 1, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Thursday', 2, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Thursday', 3, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Thursday', 4, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Thursday', 5, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Thursday', 6, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Thursday', 2, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Thursday', 1, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Thursday', 4, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Thursday', 5, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Thursday', 6, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Thursday', 3, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Thursday', 3, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Thursday', 4, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Thursday', 1, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Thursday', 6, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Thursday', 2, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Thursday', 5, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Thursday', 4, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Thursday', 5, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Thursday', 6, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Thursday', 1, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Thursday', 3, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Thursday', 2, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Thursday', 5, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Thursday', 6, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Thursday', 2, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Thursday', 3, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Thursday', 1, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Thursday', 4, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Thursday', 6, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Thursday', 3, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Thursday', 5, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Thursday', 2, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Thursday', 4, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Thursday', 1, 6)

INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Friday', 1, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Friday', 2, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Friday', 3, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Friday', 4, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Friday', 5, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Friday', 6, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Friday', 2, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Friday', 1, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Friday', 4, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Friday', 5, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Friday', 6, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Friday', 3, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Friday', 3, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Friday', 4, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Friday', 1, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Friday', 6, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Friday', 2, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Friday', 5, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Friday', 4, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Friday', 5, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Friday', 6, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Friday', 1, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Friday', 3, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Friday', 2, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Friday', 5, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Friday', 6, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Friday', 2, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Friday', 3, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Friday', 1, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Friday', 4, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Friday', 6, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Friday', 3, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Friday', 5, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Friday', 2, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Friday', 4, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Friday', 1, 6)

INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Saturday', 1, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Saturday', 2, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Saturday', 3, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Saturday', 4, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Saturday', 5, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Saturday', 6, 1)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Saturday', 2, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Saturday', 1, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Saturday', 4, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Saturday', 5, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Saturday', 6, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Saturday', 3, 2)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Saturday', 3, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Saturday', 4, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Saturday', 1, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Saturday', 6, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Saturday', 2, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Saturday', 5, 3)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Saturday', 4, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Saturday', 5, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Saturday', 6, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Saturday', 1, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Saturday', 3, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Saturday', 2, 4)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Saturday', 5, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Saturday', 6, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Saturday', 2, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Saturday', 3, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Saturday', 1, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Saturday', 4, 5)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (19, N'Saturday', 6, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (20, N'Saturday', 3, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (21, N'Saturday', 5, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (22, N'Saturday', 2, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (23, N'Saturday', 4, 6)
INSERT [dbo].[TimeTable] ([ClassID], [Day], [TeacherID], [PeriodID]) VALUES (24, N'Saturday', 1, 6)