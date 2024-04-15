-- Active: 1712930731361@@127.0.0.1@5432@test
--  trigger: test_trigger
--  table: test_table
--  event: INSERT
--  level: ROW
--  language: plpgsql
--  owner: postgres
--  enabled: true

CREATE TRIGGER test_trigger
AFTER INSERT
ON students
FOR EACH ROW
EXECUTE FUNCTION test_function();

create table my_users(
      id serial primary key,
      user_name varchar(50),
      email varchar(50)
   
)

INSERT INTO my_users(user_name, email) VALUES('John', 'default1@gmail.com'), ('Doe', 'default2@gmail.com'), ('mezba', 'default3@gmail.com'), ('fahad','default4@gmail.com')


create Table deleted_users(
   deleted_user_name VARCHAR(50),
   deletedAt timestamp
)

create Function save_deleted_users()
RETURNS TRIGGER
LANGUAGE plpgsql
as
$$
BEGIN
   INSERT INTO deleted_users(deleted_user_name, deletedAt)
   VALUES(OLD.user_name, now());
   RETURN OLD;
END;
$$

create Trigger save_deleted_users_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_users();

DELETE  FROM my_users WHERE id = 1;

SELECT * from my_users

SELECT * from deleted_users