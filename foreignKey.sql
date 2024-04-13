-- Active: 1712930731361@@127.0.0.1@5432@test
CREATE TABLE "user" (
      id SERIAL PRIMARY KEY,
      user_name VARCHAR(25) NOT NULL
)

-- this is the table that will have the foreign key reference.  The user_id column will reference the id column in the "user" table. The on delete cascade will delete all posts associated with the user when the user is deleted.
create table post (
   id serial primary key,
   title TEXT NOT NULL,
   user_id INTEGER REFERENCES "user" (id) on delete cascade
)

-- this is the table that will have the foreign key reference.  The user_id column will reference the id column in the "user" table. The on delete set NULL will set the user_id to NULL when the user is deleted.
create table post (
   id serial primary key,
   title TEXT NOT NULL,
   user_id INTEGER REFERENCES "user" (id) on delete set NULL
)

-- insert user data into the "user" table
INSERT INTO "user" (user_name) VALUES ('John'), ('Doe'), ('Jane'), ('Smith');

-- insert post data into the post table
INSERT INTO post (title, user_id) VALUES ('Post 1', 1), ('Post 2', 2), ('Post 3', 3), ('Post 4', 4), ('Post 5', 1), ('Post 6', 2), ('Post 7', 3), ('Post 8', 4);

SELECT * FROM "user";

SELECT * FROM post   

DROP Table "user"

DROP Table post

DELETE FROM "user" WHERE id = 1