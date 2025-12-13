--Student-wise marks with subject names

SELECT 
    s.StudentName,
    sub.SubjectName,
    m.Marks
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID;

--Department-wise student performance

SELECT 
    s.Department,
    s.StudentName,
    sub.SubjectName,
    m.Marks
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
ORDER BY s.Department, s.StudentName;


--Average marks per subject

SELECT 
    sub.SubjectName,
    AVG(m.Marks) AS AverageMarks
FROM Marks m
JOIN Subjects sub ON m.SubjectID = sub.SubjectID
GROUP BY sub.SubjectName;


-- Average marks per department

SELECT 
    s.Department,
    AVG(m.Marks) AS DepartmentAverage
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
GROUP BY s.Department;






