USE [Project_SQL]
GO
/****** Object:  Table [dbo].[Student_Intake]    Script Date: 8/21/2023 3:23:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Intake](
	[Std_ID] [int] NOT NULL,
	[Intake_ID] [int] NOT NULL,
 CONSTRAINT [PK_Student_Intake] PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC,
	[Intake_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student_Intake]  WITH CHECK ADD  CONSTRAINT [FK_Student_Intake_Intake] FOREIGN KEY([Intake_ID])
REFERENCES [dbo].[Intake] ([Intake_ID])
GO
ALTER TABLE [dbo].[Student_Intake] CHECK CONSTRAINT [FK_Student_Intake_Intake]
GO
ALTER TABLE [dbo].[Student_Intake]  WITH CHECK ADD  CONSTRAINT [FK_Student_Intake_Students] FOREIGN KEY([Std_ID])
REFERENCES [dbo].[Students] ([Std_ID])
GO
ALTER TABLE [dbo].[Student_Intake] CHECK CONSTRAINT [FK_Student_Intake_Students]
GO
