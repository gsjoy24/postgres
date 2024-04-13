-- Active: 1712930731361@@127.0.0.1@5432@test
CREATE TABLE "user" (
      id SERIAL PRIMARY KEY,
      user_name VARCHAR(25) NOT NULL
)

create table post (
   id serial primary key,
   title TEXT NOT NULL,
   user_id INTEGER REFERENCES "user" (id)
)

INSERT INTO "user" (user_name) VALUES ('John'), ('Doe'), ('Jane'), ('Smith');
DROP TABLE "user"

DROP TABLE post

SELECT * FROM "user";
SELECT * FROM post;

INSERT INTO post (title, user_id) VALUES ('Give me some sunshine 🌞', 1), ('Sun is nice 🌞', 2), ('Lets play freefire 🔥', 3), ('lets dance guys 🕺', 3)

SELECT title, user_name  from post
JOIN "user" ON post.user_id = "user".id

-- combine the two tables and display the title and user_name columns, its called inner join
SELECT * from post JOIN "user" ON post.user_id = "user".id

INSERT INTO post (title, user_id) VALUES ('Give me some sunshine 🌞', NULL)

-- combine the two tables and display the title and user_name columns, its called left join. This will display all the rows from the left table and the matching rows from the right table
SELECT * from post left JOIN "user" ON post.user_id = "user".id
-- alternatively, you can use left outer join
SELECT * from post left outer JOIN "user" ON post.user_id = "user".id

-- with USING
SELECT * from post left JOIN "user" USING (user_id) -- this will display the user_id column only once


