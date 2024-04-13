-- Active: 1712930731361@@127.0.0.1@5432@test
-- it will show the number of students in each country
SELECT country, count(*) FROM students
   GROUP BY country;

-- it will show the number of students in each grade
SELECT grade, count(*) FROM students
   GROUP BY grade;


-- it will show the number of students in each age group between 20 and 25. we cant use WHERE clause here because WHERE clause is used to filter rows before grouping. HAVING clause is used to exclude rows after grouping.
SELECT age, count(*) FROM students
   GROUP BY age
   HAVING age BETWEEN 20 AND 25;

   -- count students born in each year using group by clause
   SELECT extract(year FROM dob) as birthYear, count(*)
   FROM students
   GROUP BY birthYear;