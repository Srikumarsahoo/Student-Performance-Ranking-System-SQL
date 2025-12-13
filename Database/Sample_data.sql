INSERT INTO Students VALUES
(1, 'Aarav Sharma', 'Computer Science', 2022, 'Male'),
(2, 'Priya Verma', 'Computer Science', 2022, 'Female'),
(3, 'Rohan Mehta', 'Computer Science', 2023, 'Male'),
(4, 'Ananya Singh', 'Electronics', 2022, 'Female'),
(5, 'Kunal Gupta', 'Electronics', 2023, 'Male'),
(6, 'Sneha Iyer', 'Electronics', 2023, 'Female'),
(7, 'Rahul Das', 'Mechanical', 2022, 'Male'),
(8, 'Neha Kapoor', 'Mechanical', 2023, 'Female');

INSERT INTO Subjects VALUES
(101, 'Database Systems', 4, 'End Semester'),
(102, 'Operating Systems', 4, 'End Semester'),
(103, 'Computer Networks', 3, 'Mid Semester'),
(104, 'Digital Electronics', 3, 'End Semester'),
(105, 'Engineering Mathematics', 4, 'Mid Semester');

INSERT INTO Marks VALUES
-- Computer Science
(1, 101, 88),
(1, 102, 82),
(1, 103, 91),
(1, 105, 85),

(2, 101, 92),
(2, 102, 89),
(2, 103, 90),
(2, 105, 94),

(3, 101, 76),
(3, 102, 81),
(3, 103, 78),
(3, 105, 80),

-- Electronics
(4, 104, 86),
(4, 105, 88),
(4, 101, 79),

(5, 104, 90),
(5, 105, 84),
(5, 101, 82),

(6, 104, 75),
(6, 105, 78),
(6, 101, 74),

-- Mechanical
(7, 105, 69),
(7, 101, 72),
(7, 102, 70),

(8, 105, 91),
(8, 101, 89),
(8, 102, 87);
