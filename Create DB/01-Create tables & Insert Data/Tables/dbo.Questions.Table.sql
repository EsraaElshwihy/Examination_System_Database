USE [Project_SQL]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 8/21/2023 3:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Questions_ID] [int] NOT NULL,
	[Degree] [int] NOT NULL,
	[Text_Questions] [nvarchar](max) NULL,
	[Correct_Answer_Text_Questions] [nvarchar](max) NULL,
	[True_or_False_Questions] [nvarchar](max) NULL,
	[Correct_Answer_True_or_False] [bit] NULL,
	[Choose_An_Answer_Question] [nvarchar](max) NULL,
	[Correct_Answer_Choose_Question] [nvarchar](1) NULL,
	[Course_Id] [int] NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Questions_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Course] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Course]
GO
