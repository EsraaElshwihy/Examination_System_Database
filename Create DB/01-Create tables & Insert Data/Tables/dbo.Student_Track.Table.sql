USE [Project_SQL]
GO
/****** Object:  Table [dbo].[Student_Track]    Script Date: 8/21/2023 3:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Track](
	[Std_ID] [int] NOT NULL,
	[Track_ID] [int] NOT NULL,
 CONSTRAINT [PK_Student_Track] PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student_Track]  WITH CHECK ADD  CONSTRAINT [FK_Student_Track_Track] FOREIGN KEY([Track_ID])
REFERENCES [dbo].[Track] ([Track_ID])
GO
ALTER TABLE [dbo].[Student_Track] CHECK CONSTRAINT [FK_Student_Track_Track]
GO
