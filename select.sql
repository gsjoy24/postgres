-- Active: 1712930731361@@127.0.0.1@5432@test
CREATE Table students (
   student_id SERIAL PRIMARY KEY,
   first_name VARCHAR(50) NOT NULL,
   last_name VARCHAR(50) NOT NULL,
   age INT,
   grade VARCHAR(2) NOT NULL,
   course VARCHAR(50),
   email VARCHAR(50),
   dob DATE,
   blood_group VARCHAR(3),
   country VARCHAR(50)
);

SELECT age FROM students;

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES ('John', 'Doe', 20, 'A', 'Mathematics', 'john@gmail.com', '2000-01-01', 'O+', 'USA'),('Jane', 'Doe', 21, 'B', 'Physics', 'jane@gmail.com', '1999-01-01', 'A+', 'UK'),
('Alice', 'Smith', 22, 'C', 'Chemistry', 'alice@gmail.com', '1998-01-01', 'B+', 'Canada'),
('Bob', 'Brown', 23, 'D', 'Biology', 'bob@gmail.com', '1997-01-01', 'AB+', 'Australia'),
('Charlie', 'White', 24, 'E', 'History', 'charlie@gmail.com', '1996-01-01', 'O-', 'New Zealand'),
('David', 'Black', 25, 'F', 'Geography', 'david@gmail.com', '1995-01-01', 'A-', 'India'),
('Eve', 'Green', 26, 'G', 'Economics', 'eve@gmail.com', '1994-01-01', 'B-', 'China'),
('Frank', 'Grey', 27, 'H', 'Political Science', 'frank@gmail.com', '1993-01-01', 'AB-', 'Japan'),
('Grace', 'Orange', 28, 'I', 'Sociology', 'grace@gmail.com', '1992-01-01', 'O+', 'South Korea'),
('Helen', 'Pink', 29, 'J', 'Psychology', 'helen@gmail.com', '1991-01-01', 'A+', 'Russia'),
('Ivy', 'Red', 30, 'K', 'Anthropology', 'ivy@gmail.com', '1990-01-01', 'B+', 'Brazil'),
('Jack', 'Violet', 31, 'L', 'Archaeology', 'jack@gmail.com', '1989-01-01', 'AB+', 'Argentina'),
('Kelly', 'Yellow', 32, 'M', 'Linguistics', 'kelly@gmail.com', '1988-01-01', 'O-', 'Chile'),
('Lily', 'Blue', 33, 'N', 'Literature', 'lily@gmail.com', '1987-01-01', 'A-', 'Peru'),
('Mike', 'Brown', 34, 'O', 'Philosophy', 'mike@gmail.com', '1986-01-01', 'B-', 'Colombia'),
('Nancy', 'Green', 35, 'P', 'Theology', 'nancy@gmail.com', '1985-01-01', 'AB-', 'Venezuela')

-- selecting email column from students table with alias "student email"
SELECT email as "student email" FROM students;

-- selecting first_name and last_name columns from students table with alias "student name"
SELECT first_name as "student name", last_name as "student surname" FROM students;

-- selecting and sorting all column in descending order
SELECT * FROM students ORDER BY first_name DESC;

-- selecting country column from students table and removing duplicate values
SELECT DISTINCT country FROM students;

-- selecting blood_group column from students table and removing duplicate values
SELECT DISTINCT blood_group FROM students;

-- selecting students whose blood_group is 'O+'
SELECT * FROM students WHERE blood_group = 'O+';

-- selecting students whose blood_group is 'O+' and country is 'USA'
SELECT * FROM students WHERE blood_group = 'O+' AND country = 'USA';

-- selecting students whose blood_group is 'O+' or country is 'USA'
SELECT * FROM students WHERE blood_group = 'O+' OR country = 'USA';

-- selecting students whose blood_group is not 'O+'
SELECT * FROM students WHERE blood_group != 'O+';

-- selecting students whose blood_group is not 'O+' and country is not 'USA'
SELECT * FROM students WHERE blood_group != 'O+' AND country != 'USA';

-- selecting students whose blood_group is not 'O+' or country is not 'USA'
SELECT * FROM students WHERE blood_group != 'O+' OR country != 'USA';

-- selecting students whose blood_group is 'O+' and age is greater than 20
SELECT * FROM students WHERE blood_group = 'O+' AND age > 20;

-- selecting students names in uppercase 
SELECT UPPER(first_name) as "student name" FROM students;

-- selecting students names in lowercase
SELECT LOWER(first_name) as "student name" FROM students;

-- selecting students names in title case
SELECT INITCAP(first_name) as "student name" FROM students;

-- selecting students names with length greater than 4
SELECT first_name as "student name" FROM students WHERE LENGTH(first_name) > 4;

-- selecting students names with length less than 4
SELECT first_name as "student name" FROM students WHERE LENGTH(first_name) < 4;

-- selecting students names with length equal to 4
SELECT first_name as "student name" FROM students WHERE LENGTH(first_name) = 4;

-- selecting students names with length greater than 4 and less than 6  
SELECT first_name as "student name" FROM students WHERE LENGTH(first_name) > 4 AND LENGTH(first_name) < 6;

-- selecting firs_name and last_name columns from students table where first_name starts with 'J'
SELECT first_name, last_name FROM students WHERE first_name LIKE 'J%';

-- selecting firs_name and last_name columns from students table where first_name ends with 'e'
SELECT first_name, last_name FROM students WHERE first_name LIKE '%e';

-- selecting firs_name and last_name columns from students table where first_name contains 'a'
SELECT first_name, last_name FROM students WHERE first_name LIKE '%a%';

-- selecting firs_name and last_name columns from students table where first_name starts with 'J' and ends with 'e'
SELECT first_name, last_name FROM students WHERE first_name LIKE 'J%e';

-- selecting first name and last and concatenating them with space in between
SELECT first_name || ' ' || last_name as "full name" FROM students;
-- alrenatively
SELECT CONCAT(first_name, ' ', last_name) as "full name" FROM students;

-- see average age of students
SELECT AVG(age) as "average age" FROM students;
-- see maximum age of students
SELECT MAX(age) as "maximum age" FROM students;

-- see minimum age of students
SELECT MIN(age) as "minimum age" FROM students;

-- see sum of ages of students
SELECT SUM(age) as "sum of ages" FROM students;

-- see count of students
SELECT COUNT(*) as "number of students" FROM students;

-- see count of students whose blood_group is 'O+'
SELECT COUNT(*) as "number of students" FROM students WHERE blood_group = 'O+';

-- see count of students whose blood_group is 'O+' and country is 'USA'
SELECT COUNT(*) as "number of students" FROM students WHERE blood_group = 'O+' AND country = 'USA';

-- see the max length of first_name
SELECT MAX(LENGTH(first_name)) as "max length of first_name" FROM students;

--  select the students with email address is null
SELECT * FROM students WHERE email IS NULL;

--  select the students with email address is not null
SELECT * FROM students WHERE email IS NOT NULL;

--  select the students with email address is null and country is 'USA'
SELECT * FROM students WHERE email IS NULL AND country = 'USA';