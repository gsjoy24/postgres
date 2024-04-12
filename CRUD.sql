-- Active: 1712930731361@@127.0.0.1@5432@test
SELECT * FROM students

-- delete the students with country is 'USA' or 'UK' or 'Canada'
DELETE FROM students WHERE country IN ('USA', 'UK', 'Canada');

-- delete the students with grade is 'A' or 'B' or 'C'
DELETE FROM students WHERE grade IN ('A', 'B', 'C');

-- delete the students with age between 20 and 25
DELETE FROM students WHERE age BETWEEN 20 AND 25;

-- update email of the students with id is 21
UPDATE students SET email = 'no email', age = 30 WHERE id = 21;


