USE [Project_SQL]
GO
/****** Object:  Table [dbo].[Instructor_Choose_Questions]    Script Date: 8/21/2023 3:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor_Choose_Questions](
	[Questions_ID] [int] NOT NULL,
	[Instructor_ID] [int] NOT NULL,
 CONSTRAINT [PK_Instructor_Choose_Questions] PRIMARY KEY CLUSTERED 
(
	[Questions_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Instructor_Choose_Questions]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Choose_Questions_Instructor] FOREIGN KEY([Instructor_ID])
REFERENCES [dbo].[Instructor] ([Ins_ID])
GO
ALTER TABLE [dbo].[Instructor_Choose_Questions] CHECK CONSTRAINT [FK_Instructor_Choose_Questions_Instructor]
GO
