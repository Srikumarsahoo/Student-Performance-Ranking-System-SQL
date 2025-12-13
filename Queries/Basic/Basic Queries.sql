SELECT 
    StudentID,
    StudentName,
    Department,
    Enrollment_Year,
    Gender
FROM Students;

SELECT 
    SubjectID,
    SubjectName,
    Credits,
    Exam_Type
FROM Subjects;

SELECT 
    StudentID,
    SubjectID,
    Marks
FROM Marks;