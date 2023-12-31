USE [Project_SQL]
GO
/****** Object:  Table [dbo].[Students_take_Exam]    Script Date: 8/21/2023 3:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students_take_Exam](
	[Std_ID] [int] NOT NULL,
	[Exam_ID] [int] NOT NULL,
	[Questions_result] [int] NULL,
	[Std_Answer_Text_Question] [nvarchar](max) NOT NULL,
	[Std_Answer_Choose_Question] [nvarchar](1) NOT NULL,
	[Std_Answer_True_or_False] [bit] NOT NULL,
	[Questions_Id] [int] NOT NULL,
 CONSTRAINT [PK_Students_take_Exam] PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC,
	[Exam_ID] ASC,
	[Questions_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Students_take_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Students_take_Exam_Exam] FOREIGN KEY([Exam_ID])
REFERENCES [dbo].[Exam] ([Exam_ID])
GO
ALTER TABLE [dbo].[Students_take_Exam] CHECK CONSTRAINT [FK_Students_take_Exam_Exam]
GO
ALTER TABLE [dbo].[Students_take_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Students_take_Exam_Questions] FOREIGN KEY([Questions_Id])
REFERENCES [dbo].[Questions] ([Questions_ID])
GO
ALTER TABLE [dbo].[Students_take_Exam] CHECK CONSTRAINT [FK_Students_take_Exam_Questions]
GO
ALTER TABLE [dbo].[Students_take_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Students_take_Exam_Students] FOREIGN KEY([Std_ID])
REFERENCES [dbo].[Students] ([Std_ID])
GO
ALTER TABLE [dbo].[Students_take_Exam] CHECK CONSTRAINT [FK_Students_take_Exam_Students]
GO
