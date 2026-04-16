CREATE TABLE Students(
	id SERIAL PRIMARY KEY,
	full_name VARCHAR(50) NOT NULL,
	gender VARCHAR(50),
	birth_date INT NOT NULL,
	major VARCHAR(50),
	gpa DECIMAL(3,2)
);
drop table Students;
SELECT *FROM Students;
INSERT INTO Students(full_name,gender,birth_date,major,gpa)
VALUES('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
	  ('Trần Thị Bích Ngọc', 'Nữ', 2001, 'Kinh tế', 3.2),
	  ('Lê Quốc Cường', 'Nam', 2003, 'CNTT', 2.7),
	  ('Phạm Minh Anh', 'Nữ', 2000, 'Luật', 3.9),
	  ('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
	  ('Lưu Đức Tài', NULL, 2004, 'Cơ khí', NULL),
	  ('Võ Thị Thu Hằng', 'Nữ', 2001, 'CNTT', 3.0);

INSERT INTO Students(full_name,gender,birth_date,major,gpa)
VALUES('Phan Hoàng Nam', 'Nam', 2003, 'CNTT', 3.8);
UPDATE Students SET  gpa = 3.4 WHERE full_name = 'Lê Quốc Cường';
DELETE FROM Students WHERE gpa IS NULL;
SELECT * FROM Students WHERE major ILIKE '%CNTT%' AND gpa >=3.0
LIMIT 3;
SELECT DISTINCT major FROM Students;
SELECT *FROM Students WHERE major = 'CNTT' ORDER BY gpa DESC, full_name ASC;
SELECT * FROM Students WHERE full_name ILIKE 'Nguyễn%';
SELECT * FROM Students WHERE birth_date BETWEEN 2001 AND 2003;
