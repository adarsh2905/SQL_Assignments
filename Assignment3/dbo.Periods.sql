USE [School]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Periods](
	[PeriodID][int] IDENTITY(1,1) NOT NULL,
	[StartTime] [time](3) NULL,
	[EndTime] [time](3) NULL,
 CONSTRAINT [PK_Period] PRIMARY KEY CLUSTERED 
(
	[PeriodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[Periods] ([StartTime], [EndTime]) VALUES ('08:00:00', '09:00:00')
INSERT [dbo].[Periods] ([StartTime], [EndTime]) VALUES ('09:00:00', '10:00:00')
INSERT [dbo].[Periods] ([StartTime], [EndTime]) VALUES ('10:00:00', '11:00:00')
INSERT [dbo].[Periods] ([StartTime], [EndTime]) VALUES ('11:00:00', '12:00:00')
INSERT [dbo].[Periods] ([StartTime], [EndTime]) VALUES ('12:00:00', '13:00:00')
INSERT [dbo].[Periods] ([StartTime], [EndTime]) VALUES ('13:00:00', '14:00:00')