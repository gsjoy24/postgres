-- Active: 1712930731361@@127.0.0.1@5432@test
SELECT * FROM user2

ALTER TABLE user2
ADD COLUMN email TEXT NOT NULL DEFAULT 'gour@gmail.com';

INSERT INTO user2 (id,user_name, age, email) VALUES (4,'Gour', 23, 'test@gmail.com');