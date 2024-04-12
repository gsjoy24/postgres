-- Active: 1712930731361@@127.0.0.1@5432@test
SELECT * FROM user2

-- adding column
ALTER TABLE user2
ADD COLUMN email TEXT NOT NULL DEFAULT 'gour@gmail.com';

-- insert data
INSERT INTO user2 (id,user_name, age, email) VALUES (4,'Gour', 23, 'test@gmail.com');

-- changing column name
ALTER TABLE user2
   RENAME COLUMN age TO user_age;

   -- changing type 
ALTER TABLE user2
   ALTER COLUMN user_name type VARCHAR(100);

-- setting not null constraint to user_age
ALTER TABLE user2
   ALTER COLUMN user_age SET NOT NULL

-- removing not null constraint to user_age
ALTER TABLE user2
   ALTER COLUMN user_age DROP NOT NULL;

   -- adding unique constraint to user_age 
ALTER TABLE user2
   ADD CONSTRAINT unique_user2_user_age UNIQUE (user_age);

-- removing unique constraint to user_age
ALTER TABLE user2
   DROP CONSTRAINT unique_user2_user_age;