-- Create Student Table

CREATE TABLE Students (
StudentID INT PRIMARY KEY,
Name VARCHAR(50),
Age INT,
Department VARCHAR(50)
);

-- Insert Data

INSERT INTO Students VALUES
(1,'Ali',20,'Computer Science'),
(2,'Sara',21,'Electronics'),
(3,'John',22,'Mechanical');

-- Display all data

SELECT * FROM Students;

-- Students age above 20

SELECT * FROM Students
WHERE Age > 20;

-- Sort students by age

SELECT * FROM Students
ORDER BY Age DESC;
