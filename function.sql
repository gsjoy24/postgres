-- Active: 1712930731361@@127.0.0.1@5432@test
CREATE Function exm_func() -- function name
RETURNS INT -- return type
LANGUAGE SQL -- language
AS
$$
   SELECT count(*) FROM students -- function body
$$

SELECT exm_func() -- calling function

-- function name. If function already exists, it will replace the existing function
CREATE OR REPLACE FUNCTION exm_func2()
RETURNS void -- return type. void means no return type. It is used for trigger functions.
LANGUAGE SQL
AS
$$
   INSERT INTO students VALUES (1, 'John', 'Doe', 'john2@gmail.com', '2021-01-01')
$$

SELECT exm_func2() -- calling function

-- get student by id
CREATE OR REPLACE FUNCTION get_student_by_id(p_student_id INT)
RETURNS SETOF students -- return type. SETOF is used to return multiple rows
LANGUAGE SQL
AS
$$
   SELECT * FROM students WHERE student_id= p_student_id
$$

SELECT * FROM get_student_by_id(1)

SELECT * FROM students

-- //! procedures are used to perform a task. It does not return a value. It is used to perform a task.
-- //! functions are used to return a value. It is used to perform a task and return a value.

CREATE Procedure DELETE_him_var()
LANGUAGE plpgsql
AS
$$
   DECLARE 
   id_var INT;
   BEGIN
      SELECT student_id INTO id_var FROM students WHERE student_id = 15;
      DELETE FROM students WHERE student_id = id_var;

      RAISE NOTICE 'Student with id % has been deleted', id_var; -- RAISE NOTICE is used to print message in the console
   END
$$;

DROP PROCEDURE IF EXISTS DELETE_him_var; -- drop procedure if exists 

CALL DELETE_him_var();




SELECT * FROM students