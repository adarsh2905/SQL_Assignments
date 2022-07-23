USE [School]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Class](
	[ClassID][int] IDENTITY(1,1) NOT NULL,
	[ClassName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[Class] ([ClassName]) VALUES (N'Class V')
INSERT [dbo].[Class] ([ClassName]) VALUES (N'Class VI')
INSERT [dbo].[Class] ([ClassName]) VALUES (N'Class VII')
INSERT [dbo].[Class] ([ClassName]) VALUES (N'Class VIII')
INSERT [dbo].[Class] ([ClassName]) VALUES (N'Class IX')
INSERT [dbo].[Class] ([ClassName]) VALUES (N'Class X')