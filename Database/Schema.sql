CREATE TABLE Students(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Enrollment_Year INT NOT NULL,
    Gender VARCHAR(10) NOT NULL
);


CREATE TABLE Subjects(
     SubjectID INT PRIMARY KEY,
     SubjectName VARCHAR(100) NOT NULL,
     Credits INT NOT NULL,
     Exam_Type VARCHAR(30) NOT NULL
);

CREATE TABLE Marks (
    StudentID INT NOT NULL,
    SubjectID INT NOT NULL,
    Marks INT NOT NULL,
    PRIMARY KEY (StudentID, SubjectID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);
