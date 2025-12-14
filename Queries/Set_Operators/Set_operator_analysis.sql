/* Students who appeared in Mid Semester OR End Semester exams
Question answered:
Which students participated in any type of exam?
*/

SELECT DISTINCT s.StudentName
FROM Students as s
JOIN Marks m ON s.StudentID = m.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
WHERE sub.Exam_Type = 'Mid Semester'

UNION

SELECT DISTINCT s.StudentName
FROM Students as s
JOIN Marks m ON s.StudentID = m.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
WHERE sub.Exam_Type = 'End Semester';


/*
Students who appeared in both Mid & End Semester exams
Question answered:
Who has written both types of exams
*/

SELECT s.StudentName
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
WHERE sub.Exam_Type = 'Mid Semester'

INTERSECT

SELECT s.StudentName
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
WHERE sub.Exam_Type = 'End Semester';


/* Students who appeared in Mid Semester but NOT End Semester exams
Question answered:
Who only wrote mid-sem exams?
*/

SELECT s.StudentName
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
WHERE sub.Exam_Type = 'Mid Semester'

EXCEPT

SELECT s.StudentName
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
WHERE sub.Exam_Type = 'End Semester';


/*Departments offering students in both Electronics & Computer-related subjects
Question answered:
Which departments have students taking both technical streams?
*/

SELECT DISTINCT s.Department
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
WHERE sub.SubjectName IN ('Database Systems', 'Operating Systems')

INTERSECT

SELECT DISTINCT s.Department
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
WHERE sub.SubjectName = 'Digital Electronics';


--Students who scored above 85 in any subject
SELECT s.StudentName
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
WHERE m.Marks > 85

UNION

SELECT s.StudentName
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
WHERE m.Marks > 85;
