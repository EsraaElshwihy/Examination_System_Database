USE [Project_SQL]
GO
/****** Object:  Table [dbo].[Instructor_Teach_Course]    Script Date: 8/21/2023 3:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor_Teach_Course](
	[Course_ID] [int] NOT NULL,
	[Inst_ID] [int] NOT NULL,
 CONSTRAINT [PK_Instructor_Teach_Course] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Instructor_Teach_Course]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Teach_Course_Instructor] FOREIGN KEY([Inst_ID])
REFERENCES [dbo].[Instructor] ([Ins_ID])
GO
ALTER TABLE [dbo].[Instructor_Teach_Course] CHECK CONSTRAINT [FK_Instructor_Teach_Course_Instructor]
GO
