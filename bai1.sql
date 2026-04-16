CREATE TABLE Students(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	age INT,
	major VARCHAR(50),
	gpa DECIMAL(3,2)
);
INSERT INTO Students(name,age,major,gpa)
VALUES ('An', 20, 'CNTT', 3.5),
		('Bình', 21, 'Toán', 3.2),
		('Cường', 22, 'CNTT', 3.8),
		('Dương', 20, 'Vật lý', 3.0),
		('Em', 21,'CNTT', 2.9);
SELECT * FROM Students;
INSERT INTO Students(name,age,major,gpa)
VALUES ('Hung', 23, 'Hoa Hoc', 3.4);
UPDATE Students 
SET gpa = 3.6 WHERE id = 2;
DELETE FROM Students WHERE gpa < 3.0;
SELECT name, major FROM Students ORDER BY gpa DESC;
SELECT * FROM Students WHERE major = 'CNTT';
SELECT * FROM Students WHERE gpa BETWEEN 3.0 AND 3.6;
SELECT * FROM Students WHERE name LIKE 'C%';
SELECT * FROM Students ORDER BY gpa DESC
LIMIT 3;
