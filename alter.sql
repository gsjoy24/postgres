-- Active: 1712930731361@@127.0.0.1@5432@test
SELECT * FROM user2

-- adding column
ALTER TABLE user2
ADD COLUMN email TEXT NOT NULL DEFAULT 'gour@gmail.com';

-- insert data
INSERT INTO user2 (id, user_name, user_age, email) VALUES (2,'Gour2', 24, 'test@gmail.com');

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

   -- dropping table | it will remove the whole table with all data.
DROP TABLE user2;

-- dropping table data | it will remove all data from the table but table will be there.
TRUNCATE TABLE user2;