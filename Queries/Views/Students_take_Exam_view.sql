CREATE VIEW Students_take_Exam_view AS
SELECT Std_ID,Exam_ID,Questions_result,Std_Answer_Text_Question,Std_Answer_Choose_Question,Std_Answer_True_or_False,Questions_Id
FROM Students_take_Exam;
go
SELECT *FROM Students_take_Exam_view