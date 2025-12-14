-- Student marks with subject average
--Insight:
--How does a student compare to class average in that subject?

SELECT 
    s.StudentName,
    sub.SubjectName,
    m.Marks,
    AVG(m.Marks) OVER (PARTITION BY sub.SubjectID) AS SubjectAverage
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID;

-- Rank Students within each subject
--Insight:
--Who are the top performers per subject?

SELECT 
    s.StudentName,
    sub.SubjectName,
    m.Marks,
    RANK() OVER (PARTITION BY sub.SubjectID ORDER BY m.Marks DESC) AS SubjectRank
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID;


--Department wise student ranking
--Insight:
--How do students rank within their own department?

SELECT
   s.StudentName,
   sub.SubjectName,
   m.Marks,
   RANK() OVER (PARTITION BY s.Department ORDER BY m.Marks DESC) as DepartmentRank
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Subjects sub ON m.SubjectID = sub.SubjectID;


-- Student Performance vs Department Average
--Insight:
--Is a student performing above or below department level?

SELECT
   s.StudentName,
   s.Department,
   m.Marks,
   AVG(m.Marks) OVER (PARTITION BY s.Department) AS DepartmentAverage
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID;



-- Top Scrorer in Each subject
--Insight:
--Who topped each subject?
SELECT 
    StudentName,
    SubjectName,
    Marks
FROM (
    SELECT 
        s.StudentName,
        sub.SubjectName,
        m.Marks,
        RANK() OVER (PARTITION BY sub.SubjectID ORDER BY m.Marks DESC) AS rnk
    FROM Marks m
    JOIN Students s ON m.StudentID = s.StudentID
    JOIN Subjects sub ON m.SubjectID = sub.SubjectID
) ranked
WHERE rnk = 1;
