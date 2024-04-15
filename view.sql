-- Active: 1712930731361@@127.0.0.1@5432@test
CREATE VIEW all_students
AS
SELECT * FROM students
   

   SELECT * FROM all_students
   WHERE country IN ('USA', 'UK', 'Canada');
   