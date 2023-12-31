USE [Project_SQL]
GO
/****** Object:  Table [dbo].[Instructor_Sets_Exam]    Script Date: 8/21/2023 3:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor_Sets_Exam](
	[Exam_ID] [int] NOT NULL,
	[Inst_ID] [int] NOT NULL,
	[Start_Time] [time](7) NOT NULL,
	[End_Time] [time](7) NOT NULL,
	[Year] [date] NOT NULL,
 CONSTRAINT [PK_Instructor_Sets_Exam] PRIMARY KEY CLUSTERED 
(
	[Exam_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Instructor_Sets_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Sets_Exam_Instructor] FOREIGN KEY([Inst_ID])
REFERENCES [dbo].[Instructor] ([Ins_ID])
GO
ALTER TABLE [dbo].[Instructor_Sets_Exam] CHECK CONSTRAINT [FK_Instructor_Sets_Exam_Instructor]
GO
