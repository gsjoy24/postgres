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